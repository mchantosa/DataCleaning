# Code Book for myData.csv

submission.csv is derrived from an aggregation of mean and standard devaition values from [this data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

A summary of the methods used to generate the original dataset can be found [here](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names)

## Data parameters

Original source data was downloaded 22July2017

[Link to data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Steps to reproduce

1. Download [source data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

1. From source data dorectory, identify the following files
     * activity_labels.txt
     * features.txt
     * test/X_test.txt
     * test/y_test.txt
     * train/X_train.txt
     * train/y_train.txt

1. Upload files from previous step to data frames

1. Subset data and apply column headers
     * Use data from features.txt to derrive a logial vector for elements containing "mean()" or "std()". Note: This vector should be of a length equal to the number of columns data frames resulting from the X_test.txt and X_train.txt imports.
     * Subset columns of X_test.txt and X_train.txt data frames with logical vecctor derrived in previous step
     * Subset the features.txt vector with the same logial vector and apply as a column header to each of the X_test.txt and X_train.txt data frames

1. Append X_test.txt and X_train.txt data with an additional activity variable derrived from activity_labels.txt

1. Append resulting data frames with data source data identifying it to either test/X_train.txt or train/X_train.txt

1. Combine data sets, we will refer to this as the combined_data henceforth

1. Create a new data (the end product) frame from the combined data
     * Itteratively filter data by permutations of activity and source, gather the resulting mean values across columns
     * Store these in a new data frame of parameters [variable, average, activity, source]

### Variables
* variable
* average
* activity
* source
