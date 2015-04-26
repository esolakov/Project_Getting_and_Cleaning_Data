# run_analysis.R script does the following: 

# 1.Merges the training and the test sets to create one data set.
# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive variable names. 
# 5.From the data set in step 4, creates a second, independent tidy data set with 
#   the average of each variable for each activity and each subject.
# 6.Exports final results to a text file

# Notes:
# 1. All original data sets needed must be placed in the working directory
# 2. In the code below instead of "<-" for the assignment operator is used "=" 
#    which is legal in R version 3.1.3

features = read.table("features.txt", header = F)
names(features) = c("id", "feature")

subject_train = read.table("subject_train.txt", header=F)
X_train = read.table("X_train.txt", header=F)
y_train = read.table("y_train.txt", header=F)

subject_test = read.table("subject_test.txt", header=F)
X_test = read.table("X_test.txt", header=F)
y_test = read.table("y_test.txt", header=F)

# Merge training and testing data sets
subject = rbind(subject_train, subject_test)
names(subject) = "subject"
activity = rbind(y_train,y_test)
names(activity) = "activity"
data = rbind(X_train, X_test)
names(data)=features[,2]

# Merge all  3 data frames
data_full = cbind (subject, activity, data)
names = names(data_full)

# find indices of columns' names containing "mean()"
index_mean=grep("mean()",names)
# find indices of columns' names containing "std()"
index_std=grep("std()",names)
#merge both indices in one vector
index_mean_std = c(index_mean,index_std )
#restore the original order between columns
index_ordered = sort(index_mean_std)

#subset data_full for columns containing "mean()" or "std()" in their names
data_mean_std = data_full[, c(1,2,index_ordered)]

#assign descriptive acivity labels (levels) to the activty's numerical values
activity_labels = read.table("activity_labels.txt")
data_mean_std$activity = as.factor(data_mean_std$activity)
levels(data_mean_std$activity) =  activity_labels[,2]

#clean variables names from illegal symbols in R
old_names = names(data_mean_std)
# replace illegal symbols "-"  with "_" 
new_names = gsub("-", "_", old_names)
# remove illegal symbols "()"
new_names = gsub("()","", new_names, fixed=TRUE)
# assign new variables names to the data frame 
names(data_mean_std) = new_names

# Create a new tidy data set with the average of each variable for each activity
#   and each subject in data frame "data_mean_std"

# load "dplyr" package
library("dplyr", lib.loc="~/R/win-library/3.1")

# calculate means of original variables for all groups subject x activity
grouped_data_means <- data_mean_std %>% group_by(subject,activity) %>% summarise_each(funs(mean))

# create variables names for data set  "grouped_data_means"
new_names_means = paste(c("","",rep(("Mean_"),79)), new_names, sep="")
# assign variables names to  "grouped_data_means"
names(grouped_data_means) = new_names_means

# export final results to a text file
write.table(grouped_data_means, "final_results.txt", row.name=FALSE)



