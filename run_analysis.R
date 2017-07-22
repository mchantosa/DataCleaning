source("getURLDownload.R")
library(dplyr)

#acquire data
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dataDumpPath <- getURLDownload(fileURL, "dataDump.", ".zip")
unzip(dataDumpPath)

#load data to workspace
source("loadData.R")

#get test and train data
test_set <- test_datalist[[2]]
train_set <- train_datalist[[2]]

#reduce columns to mean() and std()
col_name_base <- as.character(datalist[[2]]$V2)
col_name_base_select <- grepl("[Mm]ean\\(\\)|[sS]td\\(\\)", col_name_base)
test_set <- test_set[,col_name_base_select]
train_set <- train_set[,col_name_base_select]

#apply variable names
colnames(test_set) <- col_name_base[col_name_base_select]
colnames(train_set) <- col_name_base[col_name_base_select]

#apply activity labels
test_set <- mutate(test_set, activity = as.factor(test_datalist[[3]]$V1)) 
levels(test_set$activity) <- datalist[[1]][[2]]
train_set <- mutate(train_set, activity = as.factor(train_datalist[[3]]$V1)) 
levels(train_set$activity) <- datalist[[1]][[2]]

#add testing/training identifiers identifier
test_set <- mutate(test_set, data_source = "testing")
train_set <- mutate(train_set, data_source = "training")

#combine data sets
combined_dataset <- rbind(test_set,train_set)
combined_dataset$data_source<-as.factor(combined_dataset$data_source)

#create submission
colnames <- col_name_base[col_name_base_select]
submission <- data.frame()
for (i in levels(combined_dataset$activity)){
        for (j in levels(combined_dataset$data_source)){
                x <- filter(combined_dataset, activity == i)
                x <- filter(combined_dataset, data_source == j)
                x <- x[1:(length(names(x))-2)]
                #y <- sapply(x,mean)
                df <- data.frame(names = colnames, 
                           average = sapply(x,mean), 
                           activity = i, 
                           data_source = j) 
                submission <- rbind(submission, df)
                
        }
}
names(submission) <- c("variable", "average", "activity", "source")        

#export submission
write.table(submission, "submission.txt", row.name=FALSE)
