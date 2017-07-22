#Import top level text files
filelist = list.files("./UCI HAR Dataset", pattern = ".*.txt", full.names = TRUE)
datalist = lapply(filelist, function(x){
        tryCatch({
                read.table(x)        
        }, error = function(e){cat(paste0("ERROR for ",x,": "), conditionMessage(e), "\n")})
        
}) 

#Import test directory text files
test_filelist = list.files("./UCI HAR Dataset/test", pattern = ".*.txt", full.names = TRUE)
test_datalist = lapply(test_filelist, function(x){
        tryCatch({
                read.table(x)        
        }, error = function(e){cat(paste0("ERROR for ",x,": "), conditionMessage(e), "\n")})
        
}) 

#Import train directory text files
train_filelist = list.files("./UCI HAR Dataset/train", pattern = ".*.txt", full.names = TRUE)
train_datalist = lapply(train_filelist, function(x){
        tryCatch({
                read.table(x)        
        }, error = function(e){cat(paste0("ERROR for ",x,": "), conditionMessage(e), "\n")})
        
})
