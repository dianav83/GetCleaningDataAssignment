This analysis assumes that you have downloaded the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
and have unzipped the file. The analsyis also assumes that you have placed the train and test files from the UCI HAR Dataset into the working directory. 	

To run the analysis code, you will also need to have the plyr and dplyr packages installed into R. 

Source the code with run_analysis.R

This code takes the raw test and train datasets, and completes the following:
1. Concatenates them into the same dataset
2. Identifies the activity names
3. Assigns variable names to each column. 
4. Remove any duplicated columns
5. Extract all columns that contained data calculating mean or standard deviation of a variable.

This created data set is now tidy. It no longer has duplicated columns, each column represents its own variable, and they all have names identified by the code book. We have also removed all columns not related to the mean and standard deviation, further narrowing the data set by removing all data that is not neccessary to this investigation.

The code then creates a new, smaller tidy data set, grouping the data by subject number and by activity type. The mean for each column in each group is then calculated and returned in this new data set. The data set is then written into a txt file named "tidydata.txt" 

To read this file, use the command 

data <- read.table("tidydata.txt", header = TRUE)
View(data)