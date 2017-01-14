library(reshape2)
library(dplyr)

#1 Read the data into dataframes
activity_labels <- read.table("Dataset/activity_labels.txt",stringsAsFactors = FALSE)
features <- read.table("Dataset/features.txt",stringsAsFactors = FALSE)
X_train <- read.table("Dataset/train/X_train.txt")
y_train <- read.table("Dataset/train/y_train.txt")
subject_train <- read.table("Dataset/train/subject_train.txt")
X_test <- read.table("Dataset/test/X_test.txt")
y_test <- read.table("Dataset/test/y_test.txt")
subject_test <- read.table("Dataset/test/subject_test.txt")

#2 Merge data sets
X_merged <- rbind(X_train,X_test)
y_merged <- rbind(y_train,y_test)
subject_merged <- rbind(subject_train,subject_test)

#3 Extract mean and standard deviation
mean_cols <- grep("-mean\\(\\)",features[,2])
std_cols <- grep("-std\\(\\)",features[,2])
cols <- c(mean_cols,std_cols)
X_merged <- X_merged[,cols]

#4 Descriptive Activity Names
labels <- tolower(activity_labels[,2])
labels <- gsub("_"," ",labels)
labels <- factor(labels)
activity <- sapply(y_merged[,1],function(x){labels[x]})

#5 Descriptive Variable Names
ft <- features[cols,2]
ft <- gsub("\\(\\)","",ft)
ft <- gsub("-","",ft)
ft <- gsub("Acc","Acceleration",ft)
ft <- gsub("Gyro","Gyroscope",ft)
ft <- gsub("Mag","Magnitude",ft)
ft <- gsub("std","StandardDeviation",ft)
ft <- gsub("mean","Mean",ft)
ft <- gsub("^t","time",ft)
ft <- gsub("^f","frequency",ft)
ft <- gsub("BodyBody","Body",ft)
names(X_merged) <- ft

#6 Average
merged <- X_merged %>%
    mutate(activity=activity) %>%
    mutate(subject=subject_merged[,1])
melted <- melt(merged,id.vars=c("subject","activity"))
dataset <- dcast(melted,subject+activity~variable,mean)