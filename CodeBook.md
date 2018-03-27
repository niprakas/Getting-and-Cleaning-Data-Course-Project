# CodeBook - Getting and Cleaning Data course 

This codebook contains the list of fields used in 'tidyData.txt'. Data contain in tidyData.txt are space-separated. 

## Identifiers 
Identifiers used are subject and activity. 
- `subject` - ID of the test subject and ranges from 1 to 30
- `activity` - The type of activity performed while measurement. Activity types are:

              - WALKING: subject was walking during the test
              - WALKING_UPSTAIRS: subject was walking up a staircase during the test
              - WALKING_DOWNSTAIRS: subject was walking down a staircase during the test
              - SITTING: subject was sitting during the test
              - STANDING: subject was standing during the test
              - LAYING: subject was laying down during the test


## Measurements
All measurements are floating-point values. They are clasified into two:
    - Time Domain
    - Frequency Domain
    
### Time Domain measurement are  
      - tBodyAccMeanX
      - tBodyAccMeanY
      - tBodyAccMeanZ
      - tBodyAccStdX
      - tBodyAccStdY
      - tBodyAccStdZ
      - tGravityAccMeanX
      - tGravityAccMeanY
      - tGravityAccMeanZ
      - tGravityAccStdX
      - tGravityAccStdY
      - tGravityAccStdZ
      - tBodyAccJerkMeanX
      - tBodyAccJerkMeanY
      - tBodyAccJerkMeanZ
      - tBodyAccJerkStdX
      - tBodyAccJerkStdY
      - tBodyAccJerkStdZ
      - tBodyGyroMeanX
      - tBodyGyroMeanY
      - tBodyGyroMeanZ
      - tBodyGyroStdX
      - tBodyGyroStdY
      - tBodyGyroStdZ
      - tBodyGyroJerkMeanX
      - tBodyGyroJerkMeanY
      - tBodyGyroJerkMeanZ
      - tBodyGyroJerkStdX
      - tBodyGyroJerkStdY
      - tBodyGyroJerkStdZ
      - tBodyAccMagMean
      - tBodyAccMagStd
      - tGravityAccMagMean
      - tGravityAccMagStd
      - tBodyAccJerkMagMean
      - tBodyAccJerkMagStd
      - tBodyGyroMagMean
      - tBodyGyroMagStd
      - tBodyGyroJerkMagMean
      - tBodyGyroJerkMagStd

### Frequency Domain measurement are

      - fBodyAccMeanX
      - fBodyAccMeanY
      - fBodyAccMeanZ
      - fBodyAccStdX
      - fBodyAccStdY
      - fBodyAccStdZ
      - fBodyAccMeanFreqX
      - fBodyAccMeanFreqY
      - fBodyAccMeanFreqZ
      - fBodyAccJerkMeanX
      - fBodyAccJerkMeanY
      - fBodyAccJerkMeanZ
      - fBodyAccJerkStdX
      - fBodyAccJerkStdY
      - fBodyAccJerkStdZ
      - fBodyAccJerkMeanFreqX
      - fBodyAccJerkMeanFreqY
      - fBodyAccJerkMeanFreqZ
      - fBodyGyroMeanX
      - fBodyGyroMeanY
      - fBodyGyroMeanZ
      - fBodyGyroStdX
      - fBodyGyroStdY
      - fBodyGyroStdZ
      - fBodyGyroMeanFreqX
      - fBodyGyroMeanFreqY
      - fBodyGyroMeanFreqZ
      - fBodyAccMagMean
      - fBodyAccMagStd
      - fBodyAccMagMeanFreq
      - fBodyBodyAccJerkMagMean
      - fBodyBodyAccJerkMagStd
      - fBodyBodyAccJerkMagMeanFreq
      - fBodyBodyGyroMagMean
      - fBodyBodyGyroMagStd
      - fBodyBodyGyroMagMeanFreq
      - fBodyBodyGyroJerkMagMean
      - fBodyBodyGyroJerkMagStd
      - fBodyBodyGyroJerkMagMeanFreq
