# README

##run_analysis.R

The run_analysis.R script loads and transforms the raw data into a tidy dataset. It does this in six steps, roughly corresponding with the five steps given in the assignment, plus the loading of the data. Each step will be explained in this ReadMe.

###1 Reading the Data

All the relevant data files are read into R using the read.table function. This produces dataframes. The names of these dataframes are taken from the corresponding file names. For *activity_labels* and *features* the option stringsAsFactors is set to FALSE because some preprocessing will be done on the strings these dataframes contain, and it would be useless to make them factors at this point. The different dataframes contain the following data:

+ activity\_labels: the names of each activity
+ features: the names of the different measurement variables
+ X\_train: the measurements of the training set
+ y\_train: integers representing the activity for each record in X\_train
+ subject\_train: integers representing the subject for each record in X\_train
+ X\_test: the measurements of the test set
+ y\_test: integers representing the activity for each record in X\_test
+ subject\_test: integers representing the subject for each record in X\_test

###2 Merge the Data Sets
The dataframes *X_train* and *X_test*, *y_train* and *y_test*, and *subject_train* and *subject_test* are merged using the function rbind into the dataframes *X_merged*, *y_merged* and *subject_merged*, respectively. This way the rows of the second dataset are appended behind the rows of the first. These datasets will be combined into a single dataset in step 6.

###3 Extract Mean and Standard Deviation for Each Measurement
In the features\_info.txt file the 17 different signals are listed, along with the functions applied to them. 8 of them have a X, Y and Z component, which are listed seperately in the *X\_merged* dataframe. We have to extract the mean and standard deviaton of these 17 variables, so this gives us 2\*(3\*8+9)=66 different columns we have to extract from the *X\_merged* dataframe.

We extract the indices of the columns by using two regular expressions, searching for the occurence of "-mean()" and "-std()" in the variable name. We use the grep function on the second column of the dataframe *features*, which contains the variable names in order. We store these indices in *mean\_cols* and *std\_cols*, which we then combine into a single vector *cols*. This vector was indeed found to have a length of 66. Finally we subset the *X\_merged* dataframe and overwrite it, so it only contains the desired columns.

###4 Descriptive Activity Names
The names of the different activities are located in the *activity\_labels* dataframe. They are converted to lower case, and underscores are replaced by spaces. We also make them into factor variables. They are stored in a vector called *labels*.

We then construct a vector called *activity* which contains the new descriptive activity names of *labels* for each record in *X\_merged*. This is done using the sapply function which is applied to the *y\_merged* dataframe with an anonymous function which returns the corresponding factor variable from *labels*.

###5 Descriptive Variable Names
We extract the variable names from the *features* dataframe by subsetting using the *cols* vector constructed in step 3. These are stored in a character vector *ft*. The gsub function is then used multiple times to make the remaining variable names more descriptive. Abbreviations are expanded (e.g. Acc -> Acceleration), and hyphens and parentheses are removed. The resulting variable names are in so-called camel case, as was recommended in the lectures. We then overwrite the variable names of *X\_merged* with the new names in the *ft* vector. This is accomplished by using the names function on *X\_merged*.

###6 Tidy Data Set with Averages
The dataframe *X\_merged*, vector *activity* and dataframe *subject_merged* are now merged into a single dataframe, *merged*. This is done with the mutate function from the dplyr package. At the same time we also give the 2 columns added to *X\_merged* appropriate names, "activity" and "subject".

Finally we create a tidy data set containing the averages of each variable for each subject and each activity. To accomplish this we first melt the *merged* dataframe. The melt function from the reshape2 package is used for this. "subject" and "activity" are given as arguments for id.vars. By omitting the measure.vars argument all non-id variables are used. The result is stored in the dataframe *melted*. This dataframe contains every observation in function of the subject and activity. 

The second step in creating the final data set is casting *melted*. We use the dcast function, also from the reshape2 package, and store the result in *dataset*. The formula used is "subject+activity~variable", which gives us all measurements in function of "subject" and "activity". We also supply the mean function as argument, so the average for each measurement is calculated. We now have a tidy data set (= 1 variable/column and 1 observation/row). The resulting dataframe is wide, with for each combination of subject and activity the average for each measurement in the columns.