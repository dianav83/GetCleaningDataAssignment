This sample is based on the Human Activity Recognition Using Smartphones Dataset.

Experiment design and background: The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the experiment captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The raw data included the following features:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Processed Data: Assignment was converted to a subset of the original variables which include the following:
Subject - identifying number
Activity - activity type
tBodyAcc-mean()-X - mean body acceleration on X direction
tBodyAcc-mean()-Y - mean body acceleration on Y direction
tBodyAcc-mean()-Z - mean body acceleration on Z direction
tBodyAcc-std()-X - standard deviation body acceleration on X direction
tBodyAcc-std()-Y - standard deviation body acceleration on Y direction
tBodyAcc-std()-Z - standard deviation body acceleration on Z direction
tGravityAcc-mean()-X - mean gravity acceleration on X direction
tGravityAcc-mean()-Y - mean gravity acceleration on Y direction
tGravityAcc-mean()-Z - mean gravity acceleration on Z direction
tGravityAcc-std()-X - standard deviation gravity acceleration on X direction
tGravityAcc-std()-Y - standard deviation gravity acceleration on Y direction
tGravityAcc-std()-Z- standard deviation gravity acceleration on Z direction
tBodyAccJerk-mean()-X - mean body jerk signals on X direction
tBodyAccJerk-mean()-Y - mean body jerk signals on Y direction
tBodyAccJerk-mean()-Z - mean body jerk signals on Z direction
tBodyAccJerk-std()-X - standard deviation body jerk signals on X direction
tBodyAccJerk-std()-Y - standard deviation body jerk signals on Y direction
tBodyAccJerk-std()-Z - standard deviation body jerk signals on Z direction
tBodyGyro-mean()-X - mean body gyro on X direction
tBodyGyro-mean()-Y - mean body gyro on Y direction
tBodyGyro-mean()-Z - mean body gyro on Z direction
tBodyGyro-std()-X - standard deviation body gyro on X direction
tBodyGyro-std()-Y - standard deviation body gyro on Y direction
tBodyGyro-std()-Z - standard deviation body gyro on Z direction
tBodyGyroJerk-mean()-X - mean body gyro/jerk signal on X direction
tBodyGyroJerk-mean()-Y - mean body gyro/jerk signal on Y direction
tBodyGyroJerk-mean()-Z - mean body gyro/jerk signal on Z direction
tBodyGyroJerk-std()-X - standard deviation body gyro/jerk signal on X direction
tBodyGyroJerk-std()-Y - standard deviation body gyro/jerk signal on Y direction
tBodyGyroJerk-std()-Z - standard deviation body gyro/jerk signal on Z direction
tBodyAccMag-mean() - mean body acceleration mag
tBodyAccMag-std() - standard deviation body acceleration mag
tGravityAccMag-mean() - mean gravity acceleration mag
tGravityAccMag-std() - standard deviation gravity acceleration mag
tBodyAccJerkMag-mean() - mean body acceleration/jerk mag
tBodyAccJerkMag-std() - standard deviation gravity acceleration/jerk mag
tBodyGyroMag-mean() - mean body gyro mag
tBodyGyroMag-std() - standard deviation body gryo mag
tBodyGyroJerkMag-mean() - mean body gyro/jerk mag
tBodyGyroJerkMag-std() - standard deviation body gyro/jerk mag
fBodyAcc-mean()-X - mean body acceleration (with fourier) on X direction
fBodyAcc-mean()-Y - mean body acceleration (with fourier) on Y direction
fBodyAcc-mean()-Z - mean body acceleration (with fourier) on Z direction
fBodyAcc-std()-X - standard deviation body acceleration (with fourier) on X direction
fBodyAcc-std()-Y - standard deviation body acceleration (with fourier) on Y direction
fBodyAcc-std()-Z - standard deviation body acceleration (with fourier) on Z direction
fBodyAccJerk-mean()-X - mean body acceleration/jerk (with fourier) on X direction
fBodyAccJerk-mean()-Y - mean body acceleration/jerk (with fourier) on Y direction
fBodyAccJerk-mean()-Z - mean body acceleration/jerk (with fourier) on Z direction
fBodyAccJerk-std()-X - standard deviation body acceleration/jerk (with fourier) on X direction
fBodyAccJerk-std()-Y - standard deviation body acceleration/jerk (with fourier) on Y direction
fBodyAccJerk-std()-Z - standard deviation body acceleration/jerk (with fourier) on Z direction
fBodyGyro-mean()-X - mean body gyro (with fourier) on X direction
fBodyGyro-mean()-Y - mean body gyro (with fourier) on Y direction
fBodyGyro-mean()-Z - mean body gyro (with fourier) on Z direction
fBodyGyro-std()-X - standard deviation body gyro (with fourier) on X direction
fBodyGyro-std()-Y - standard deviation body gyro (with fourier) on Y direction
fBodyGyro-std()-Z - standard deviation body gyro (with fourier) on Z direction
fBodyAccMag-mean() - mean body acceleration mag (with fourier) 
fBodyAccMag-std() - standard deviation gravity acceleration on X direction
fBodyBodyAccJerkMag-mean() - mean body acceleration/jerk mag (with fourier)
fBodyBodyAccJerkMag-std() - standard deviation body acceleration/jerk mag (with fourier)
fBodyBodyGyroMag-mean() - mean body gyro mag (with fourier)
fBodyBodyGyroMag-std() - standard deviation body gyro mag (with fourier)
fBodyBodyGyroJerkMag-mean() - mean body gyro/jerk mag (with fourier)
fBodyBodyGyroJerkMag-std() - standard deviation body gyro/jerk mag (with fourier)