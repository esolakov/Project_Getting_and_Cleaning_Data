The GitHub submission to the "Getting and Cleaning Data" Project
contains the following files:

1.  READMe.md (the present document)

2.  R script "run\_analysis.R"

The "run\_analysis.R" is a standalone R script which does the following:

1.  Merges the training and the test sets to create one data set.

2.  Extracts only the measurements on the mean and standard deviation
    for each measurement.

3.  Uses descriptive activity names to name the activities in the data
    set.

4.  Appropriately labels the data set with descriptive variable names.

5.  From the data set in step 4, creates a second, independent tidy data
    set with the average of each variable for each activity and each
    subject.

6.  Exports final results to a text file

    Notes:

<!-- -->

1.  All original data files needed must be placed in the working
    directory.

2.  In the "run\_analysis.R" code instead of "\<-" for the assignment
    operator is used "=" which is legal in R version 3.1.3

3.  The R script contains comments explaining the steps performed.

<!-- -->

1.  A Code Book document in "CodeBook.md" file

The Code Book describes the variables in the final data set along with
the transformations performed on the original data sets.

1.  Final tidy set in "final\_results.txt" file
