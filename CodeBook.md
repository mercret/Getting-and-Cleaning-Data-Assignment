#Code Book

In this code book the variables of the data set resulting by running run_analysis.R on the UCI HAR dataset, are described. All measurements are averaged for each subject and each activity.

##Data

The experiment and data are described in the README.txt and features_info.txt files of the original UCI HAR dataset. The description is reproduced here:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

##Transformations

In the final dataset we only retained the mean() and std() variables for each measurement. We also merged the training and test datasets, along with the subject and activity. The variable and activity names were changed to be more descriptive. We summarised the data by taking the mean for each measurement variable for each subject and each activity.

##Variables

1) subject

    Range: 1-30

    Description: The subject which performed the action. 
    
2) activity

    Levels: laying, sitting, standing, walking, walking downstairs, walking upstairs
    
    Description: The activity performed by the subject.
    
3) timeBodyAccelerationMeanX

    Range: [-1,1]

    Description: Mean of the X component of the body acceleration signal in the time domain.

4) timeBodyAccelerationMeanY

    Range: [-1,1]

    Description: Mean of the Y component of the body acceleration signal in the time domain.

5) timeBodyAccelerationMeanZ

    Range: [-1,1]

    Description: Mean of the Z component of the body acceleration signal in the time domain.

6) timeGravityAccelerationMeanX

    Range: [-1,1]

    Description: Mean of the X component of the gravity acceleration signal in the time domain.

7) timeGravityAccelerationMeanY

    Range: [-1,1]

    Description: Mean of the Y component of the gravity acceleration signal in the time domain.

8) timeGravityAccelerationMeanZ

    Range: [-1,1]

    Description: Mean of the Z component of the gravity acceleration signal in the time domain.

9) timeBodyAccelerationJerkMeanX

    Range: [-1,1]

    Description: Mean of the X component of the jerk of the body acceleration signal in the time domain.

10) timeBodyAccelerationJerkMeanY

    Range: [-1,1]

    Description: Mean of the Y component of the jerk of the body acceleration signal in the time domain.

11) timeBodyAccelerationJerkMeanZ

    Range: [-1,1]

    Description: Mean of the Z component of the jerk of the body acceleration signal in the time domain.

12) timeBodyGyroscopeMeanX

    Range: [-1,1]

    Description: Mean of the X component of the body gyroscope signal in the time domain.

13) timeBodyGyroscopeMeanY

    Range: [-1,1]

    Description: Mean of the Y component of the body gyroscope signal in the time domain.

14) timeBodyGyroscopeMeanZ

    Range: [-1,1]

    Description: Mean of the Z component of the body gyroscope signal in the time domain.

15) timeBodyGyroscopeJerkMeanX

    Range: [-1,1]

    Description: Mean of the X component of the jerk of the body gyroscope signal in the time domain.

16) timeBodyGyroscopeJerkMeanY

    Range: [-1,1]

    Description: Mean of the Y component of the jerk of the body gyroscope signal in the time domain.

17) timeBodyGyroscopeJerkMeanZ

    Range: [-1,1]

    Description: Mean of the Z component of the jerk of the body gyroscope signal in the time domain.

18) timeBodyAccelerationMagnitudeMean

    Range: [-1,1]

    Description: Mean of the magnitude of the body acceleration signal in the time domain.

19) timeGravityAccelerationMagnitudeMean

    Range: [-1,1]

    Description: Mean of the magnitude of the gravity acceleration signal in the time domain.

20) timeBodyAccelerationJerkMagnitudeMean

    Range: [-1,1]

    Description: Mean of the magnitude of the jerk of the body acceleration signal in the time domain.

21) timeBodyGyroscopeMagnitudeMean

    Range: [-1,1]

    Description: Mean of the magnitude of the body gyroscope signal in the time domain.

22) timeBodyGyroscopeJerkMagnitudeMean

    Range: [-1,1]

    Description: Mean of the magnitude of the jerk of the  body gyroscope signal in the time domain.

23) frequencyBodyAccelerationMeanX

    Range: [-1,1]

    Description: Mean of the X component of the body acceleration signal in the frequency domain.

24) frequencyBodyAccelerationMeanY

    Range: [-1,1]

    Description: Mean of the Y component of the body acceleration signal in the frequency domain.

25) frequencyBodyAccelerationMeanZ

    Range: [-1,1]

    Description: Mean of the Z component of the body acceleration signal in the frequency domain.

26) frequencyBodyAccelerationJerkMeanX

    Range: [-1,1]

    Description: Mean of the X component of the jerk of the body acceleration signal in the frequency domain.

27) frequencyBodyAccelerationJerkMeanY

    Range: [-1,1]

    Description: Mean of the Y component of the jerk of the body acceleration signal in the frequency domain.

28) frequencyBodyAccelerationJerkMeanZ

    Range: [-1,1]

    Description: Mean of the Z component of the jerk of the body acceleration signal in the frequency domain.

29) frequencyBodyGyroscopeMeanX

    Range: [-1,1]

    Description: Mean of the X component of the body gyroscope signal in the frequency domain.

30) frequencyBodyGyroscopeMeanY

    Range: [-1,1]

    Description: Mean of the Y component of the body gyroscope signal in the frequency domain.

31) frequencyBodyGyroscopeMeanZ

    Range: [-1,1]

    Description: Mean of the Z component of the body gyroscope signal in the frequency domain.

32) frequencyBodyAccelerationMagnitudeMean

    Range: [-1,1]

    Description: Mean of the magnitude of the body acceleration signal in the frequency domain.

33) frequencyBodyAccelerationJerkMagnitudeMean

    Range: [-1,1]

    Description: Mean of the magnitude of the jerk of the body acceleration signal in the frequency domain.

34) frequencyBodyGyroscopeMagnitudeMean

    Range: [-1,1]

    Description: Mean of the magnitude of the body gyroscope signal in the frequency domain.

35) frequencyBodyGyroscopeJerkMagnitudeMean

    Range: [-1,1]

    Description: Mean of the magnitude of the jerk of the body gyroscope signal in the frequency domain.

36) timeBodyAccelerationStandardDeviationX

    Range: [-1,1]

    Description: Standard deviation of the X component of the body acceleration signal in the time domain.

37) timeBodyAccelerationStandardDeviationY

    Range: [-1,1]

    Description: Standard deviation of the Y component of the body acceleration signal in the time domain.

38) timeBodyAccelerationStandardDeviationZ

    Range: [-1,1]

    Description: Standard deviation of the Z component of the body acceleration signal in the time domain.

39) timeGravityAccelerationStandardDeviationX

    Range: [-1,1]

    Description: Standard Deviation of the X component of the gravity acceleration signal in the time domain.

40) timeGravityAccelerationStandardDeviationY

    Range: [-1,1]

    Description: Standard Deviation of the Y component of the gravity acceleration signal in the time domain.

41) timeGravityAccelerationStandardDeviationZ

    Range: [-1,1]

    Description: Standard Deviation of the Z component of the gravity acceleration signal in the time domain.

42) timeBodyAccelerationJerkStandardDeviationX

    Range: [-1,1]

    Description: Standard deviation of the X component of the jerk of the body acceleration signal in the time domain.

43) timeBodyAccelerationJerkStandardDeviationY

    Range: [-1,1]

    Description: Standard deviation of the Y component of the jerk of the body acceleration signal in the time domain.

44) timeBodyAccelerationJerkStandardDeviationZ

    Range: [-1,1]

    Description: Standard deviation of the Z component of the jerk of the body acceleration signal in the time domain.

45) timeBodyGyroscopeStandardDeviationX

    Range: [-1,1]

    Description: Standard deviation of the X component of the body gyroscope signal in the time domain.

46) timeBodyGyroscopeStandardDeviationY

    Range: [-1,1]

    Description: Standard deviation of the Y component of the body gyroscope signal in the time domain.

47) timeBodyGyroscopeStandardDeviationZ

    Range: [-1,1]

    Description: Standard deviation of the Z component of the body gyroscope signal in the time domain.

48) timeBodyGyroscopeJerkStandardDeviationX

    Range: [-1,1]

    Description: Standard deviation of the X component of the jerk of the body gyroscope signal in the time domain.

49) timeBodyGyroscopeJerkStandardDeviationY

    Range: [-1,1]

    Description: Standard deviation of the Y component of the jerk of the body gyroscope signal in the time domain.

50) timeBodyGyroscopeJerkStandardDeviationZ

    Range: [-1,1]

    Description: Standard deviation of the Z component of the jerk of the body gyroscope signal in the time domain.

51) timeBodyAccelerationMagnitudeStandardDeviation

    Range: [-1,1]

    Description: Standard deviation of the magnitude of the body acceleration signal in the time domain.

52) timeGravityAccelerationMagnitudeStandardDeviation

    Range: [-1,1]

    Description: Standard deviation of the magnitude of the gravity acceleration signal in the time domain.

53) timeBodyAccelerationJerkMagnitudeStandardDeviation

    Range: [-1,1]

    Description: Standard deviation of the magnitude of the jerk of the body acceleration signal in the time domain.

54) timeBodyGyroscopeMagnitudeStandardDeviation

    Range: [-1,1]

    Description: Standard deviation of the magnitude of the body gyroscope signal in the time domain.

55) timeBodyGyroscopeJerkMagnitudeStandardDeviation

    Range: [-1,1]

    Description: Standard deviation of the magnitude of the jerk of the body gyroscope signal in the time domain.

56) frequencyBodyAccelerationStandardDeviationX

    Range: [-1,1]

    Description: Standard deviation of the X component of the body acceleration signal in the frequency domain.

57) frequencyBodyAccelerationStandardDeviationY

    Range: [-1,1]

    Description: Standard deviation of the Y component of the body acceleration signal in the frequency domain.

58) frequencyBodyAccelerationStandardDeviationZ

    Range: [-1,1]

    Description: Standard deviation of the Z component of the body acceleration signal in the frequency domain.

59) frequencyBodyAccelerationJerkStandardDeviationX

    Range: [-1,1]

    Description: Standard deviation of the X component of the jerk of the body acceleration signal in the frequency domain.

60) frequencyBodyAccelerationJerkStandardDeviationY

    Range: [-1,1]

    Description: Standard deviation of the Y component of the jerk of the body acceleration signal in the frequency domain.

61) frequencyBodyAccelerationJerkStandardDeviationZ

    Range: [-1,1]

    Description: Standard deviation of the Z component of the jerk of the body acceleration signal in the frequency domain.

62) frequencyBodyGyroscopeStandardDeviationX

    Range: [-1,1]

    Description: Standard deviation of the X component of the body gyroscope signal in the frequency domain.

63) frequencyBodyGyroscopeStandardDeviationY

    Range: [-1,1]

    Description: Standard deviation of the Y component of the body gyroscope signal in the frequency domain.

64) frequencyBodyGyroscopeStandardDeviationZ

    Range: [-1,1]

    Description: Standard deviation of the Z component of the body gyroscope signal in the frequency domain.

65) frequencyBodyAccelerationMagnitudeStandardDeviation

    Range: [-1,1]

    Description: Standard deviation of the magnitude of the body acceleration signal in the frequency domain.

66) frequencyBodyAccelerationJerkMagnitudeStandardDeviation

    Range: [-1,1]

    Description: Standard deviation of the magnitude of the jerk of the body acceleration signal in the frequency domain.

67) frequencyBodyGyroscopeMagnitudeStandardDeviation

    Range: [-1,1]

    Description: Standard deviation of the magnitude of the body gyroscope signal in the frequency domain.

68) frequencyBodyGyroscopeJerkMagnitudeStandardDeviation

    Range: [-1,1]

    Description: Standard deviation of the magnitude of the jerk of the body gyroscope signal in the frequency domain.
