## Read in the test and train files
train1 <- read.table("X_train.txt", stringsAsFactors = FALSE)
train2 <- read.table("y_train.txt", stringsAsFactors = FALSE)
subtrain <- read.table("subject_train.txt", stringsAsFactors = FALSE)
test1 <- read.table("X_test.txt", stringsAsFactors = FALSE)
test2 <- read.table("y_test.txt", stringsAsFactors = FALSE)
subtest <- read.table("subject_test.txt", stringsAsFactors = FALSE)

## combine the files into one data frame
train <- cbind(subtrain, train2, train1)
test <- cbind(subtest, test2, test1)
activity <- rbind(train, test)

##Assign column names from features.txt
colname <- read.table("features.txt", stringsAsFactors = FALSE)
colnames(activity) <- c("Subject", "Activity", colname[,2])

##remove duplicated columns
activity<- activity[,!duplicated(colnames(activity))]

##rename numbers in activity column with the activity names
activity$Activity[activity$Activity==1] <- "WALKING"
activity$Activity[activity$Activity==2] <- "WALKING UPSTAIRS"
activity$Activity[activity$Activity==3] <- "WALKING DOWNSTAIRS"
activity$Activity[activity$Activity==4] <- "SITTING"
activity$Activity[activity$Activity==5] <- "STANDING"
activity$Activity[activity$Activity==6] <- "LAYING"

##extract only the columns with mean and standard deviation measurements
newdata <- activity[ ,c("Subject", "Activity", colnames(activity)[grep("mean\\(\\)|std\\(\\)", names(activity))])]

##calculate the second tidy data set with the average of each variable for each activity and subject
library(dplyr)
mydata <- tbl_df(newdata)
final <- group_by(mydata, Subject, Activity) %>% summarise_each(funs(mean))

##write the txt file with the data set
write.table(final, file = "tidydata.txt", row.names = FALSE)
