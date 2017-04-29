## File CodeBook.md

DATA DICTIONARY FOR FILE tidydata.txt

This Files has Average of  Mean and Standard Deviation for each of measurement for 30 subjects and 6 Activities.

Columns Are:

1 Subject - participant for each row of data.  Values are 1 to 30

2 Activity - ID of Activity that was measured.  Values are 1 to 6

3 Activity_Name - descriptive name for each Activity.

                1 WALKING
                2 WALKING_UPSTAIRS
                3 WALKING_DOWNSTAIRS
                4 SITTING
                5 STANDING
                6 LAYING

Measurements (Average values of Meand and Standard Deviation) 86 Variables.

[4] "tBodyAcc.mean...X"                    "tBodyAcc.mean...Y"                    "tBodyAcc.mean...Z"                   
[7] "tBodyAcc.std...X"                     "tBodyAcc.std...Y"                     "tBodyAcc.std...Z"                    
[10] "tGravityAcc.mean...X"                 "tGravityAcc.mean...Y"                 "tGravityAcc.mean...Z"                
[13] "tGravityAcc.std...X"                  "tGravityAcc.std...Y"                  "tGravityAcc.std...Z"                 
[16] "tBodyAccJerk.mean...X"                "tBodyAccJerk.mean...Y"                "tBodyAccJerk.mean...Z"               
[19] "tBodyAccJerk.std...X"                 "tBodyAccJerk.std...Y"                 "tBodyAccJerk.std...Z"                
[22] "tBodyGyro.mean...X"                   "tBodyGyro.mean...Y"                   "tBodyGyro.mean...Z"                  
[25] "tBodyGyro.std...X"                    "tBodyGyro.std...Y"                    "tBodyGyro.std...Z"                   
[28] "tBodyGyroJerk.mean...X"               "tBodyGyroJerk.mean...Y"               "tBodyGyroJerk.mean...Z"              
[31] "tBodyGyroJerk.std...X"                "tBodyGyroJerk.std...Y"                "tBodyGyroJerk.std...Z"               
[34] "tBodyAccMag.mean.."                   "tBodyAccMag.std.."                    "tGravityAccMag.mean.."               
[37] "tGravityAccMag.std.."                 "tBodyAccJerkMag.mean.."               "tBodyAccJerkMag.std.."               
[40] "tBodyGyroMag.mean.."                  "tBodyGyroMag.std.."                   "tBodyGyroJerkMag.mean.."             
[43] "tBodyGyroJerkMag.std.."               "fBodyAcc.mean...X"                    "fBodyAcc.mean...Y"                   
[46] "fBodyAcc.mean...Z"                    "fBodyAcc.std...X"                     "fBodyAcc.std...Y"                    
[49] "fBodyAcc.std...Z"                     "fBodyAcc.meanFreq...X"                "fBodyAcc.meanFreq...Y"               
[52] "fBodyAcc.meanFreq...Z"                "fBodyAccJerk.mean...X"                "fBodyAccJerk.mean...Y"               
[55] "fBodyAccJerk.mean...Z"                "fBodyAccJerk.std...X"                 "fBodyAccJerk.std...Y"                
[58] "fBodyAccJerk.std...Z"                 "fBodyAccJerk.meanFreq...X"            "fBodyAccJerk.meanFreq...Y"           
[61] "fBodyAccJerk.meanFreq...Z"            "fBodyGyro.mean...X"                   "fBodyGyro.mean...Y"                  
[64] "fBodyGyro.mean...Z"                   "fBodyGyro.std...X"                    "fBodyGyro.std...Y"                   
[67] "fBodyGyro.std...Z"                    "fBodyGyro.meanFreq...X"               "fBodyGyro.meanFreq...Y"              
[70] "fBodyGyro.meanFreq...Z"               "fBodyAccMag.mean.."                   "fBodyAccMag.std.."                   
[73] "fBodyAccMag.meanFreq.."               "fBodyBodyAccJerkMag.mean.."           "fBodyBodyAccJerkMag.std.."           
[76] "fBodyBodyAccJerkMag.meanFreq.."       "fBodyBodyGyroMag.mean.."              "fBodyBodyGyroMag.std.."              
[79] "fBodyBodyGyroMag.meanFreq.."          "fBodyBodyGyroJerkMag.mean.."          "fBodyBodyGyroJerkMag.std.."          
[82] "fBodyBodyGyroJerkMag.meanFreq.."      "angle.tBodyAccMean.gravity."          "angle.tBodyAccJerkMean..gravityMean."
[85] "angle.tBodyGyroMean.gravityMean."     "angle.tBodyGyroJerkMean.gravityMean." "angle.X.gravityMean."                
[88] "angle.Y.gravityMean."                 "angle.Z.gravityMean."  


## Additional Information.
This is the information about study from UCI.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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