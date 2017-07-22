#getURLDownload performs the following functions
#  - downloads a file to a ./data subdirectly
#  - appends the filename with a datetime of download
#  - returns relative path to the download


getURLDownload<-function(fileURL, fileNameHead, fileNameTail){
        
        if(!file.exists("data")){dir.create("data")}
        #dateTime needed to be rounded to avoid microseconds appearing
        dateTime <- round(unclass(Sys.time()), 0)
        dFile <- paste(c("./data/", fileNameHead, dateTime, fileNameTail), collapse = "")
        # if on a mac, use the commented code in place of the next line of code
        #download.file(fileURL, destfile = dFile, method = "curl" )
        download.file(fileURL, destfile = dFile )
        dFile
}