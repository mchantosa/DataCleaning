# Data Cleaning Course Project

The objective of this repo is to transform an example of raw data into clean data and to catalogue the process sufficiently to be reproduced.

## This dataset includes the following files

* CodeBook.md- detailed description of mydata.csv
* courseProj.R- main file and entry point for producing mydata.csv
* getURLDownload.R- called by courseProj.R, provides a download with a time marker
* loadData.R- called by courseProj.R, processes th downloaded data and pulls it into the workspace
* submission.txt- the objective of this repository, data produced by this source code

## To produce data set

submission.txt can be reproduced by cloning this respository, and sourcing courseProj.R

```
source("courseProj.R")
```

### Additional information

* Additional information regarding the data sets being referenced can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
* Source data can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
