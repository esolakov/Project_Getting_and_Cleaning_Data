Course Project Getting and cleaning data
----------------------------------------

### I. General

The present document provides description of the tidy set variables in
the file final\_results.txt created by the R script run\_analysis.R.

### II. Tidy data set variables and their relationships with original variables

In the table below the relationships between the tidy set variables and
the original data sets variables from

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

are shown.

     codebook_table = cbind (new_names_means,old_names)
     options(width = 100)
     codebook_table

    ##       new_names_means                      old_names                        
    ##  [1,] "subject"                            "subject"                        
    ##  [2,] "activity"                           "activity"                       
    ##  [3,] "Mean_tBodyAcc_mean_X"               "tBodyAcc-mean()-X"              
    ##  [4,] "Mean_tBodyAcc_mean_Y"               "tBodyAcc-mean()-Y"              
    ##  [5,] "Mean_tBodyAcc_mean_Z"               "tBodyAcc-mean()-Z"              
    ##  [6,] "Mean_tBodyAcc_std_X"                "tBodyAcc-std()-X"               
    ##  [7,] "Mean_tBodyAcc_std_Y"                "tBodyAcc-std()-Y"               
    ##  [8,] "Mean_tBodyAcc_std_Z"                "tBodyAcc-std()-Z"               
    ##  [9,] "Mean_tGravityAcc_mean_X"            "tGravityAcc-mean()-X"           
    ## [10,] "Mean_tGravityAcc_mean_Y"            "tGravityAcc-mean()-Y"           
    ## [11,] "Mean_tGravityAcc_mean_Z"            "tGravityAcc-mean()-Z"           
    ## [12,] "Mean_tGravityAcc_std_X"             "tGravityAcc-std()-X"            
    ## [13,] "Mean_tGravityAcc_std_Y"             "tGravityAcc-std()-Y"            
    ## [14,] "Mean_tGravityAcc_std_Z"             "tGravityAcc-std()-Z"            
    ## [15,] "Mean_tBodyAccJerk_mean_X"           "tBodyAccJerk-mean()-X"          
    ## [16,] "Mean_tBodyAccJerk_mean_Y"           "tBodyAccJerk-mean()-Y"          
    ## [17,] "Mean_tBodyAccJerk_mean_Z"           "tBodyAccJerk-mean()-Z"          
    ## [18,] "Mean_tBodyAccJerk_std_X"            "tBodyAccJerk-std()-X"           
    ## [19,] "Mean_tBodyAccJerk_std_Y"            "tBodyAccJerk-std()-Y"           
    ## [20,] "Mean_tBodyAccJerk_std_Z"            "tBodyAccJerk-std()-Z"           
    ## [21,] "Mean_tBodyGyro_mean_X"              "tBodyGyro-mean()-X"             
    ## [22,] "Mean_tBodyGyro_mean_Y"              "tBodyGyro-mean()-Y"             
    ## [23,] "Mean_tBodyGyro_mean_Z"              "tBodyGyro-mean()-Z"             
    ## [24,] "Mean_tBodyGyro_std_X"               "tBodyGyro-std()-X"              
    ## [25,] "Mean_tBodyGyro_std_Y"               "tBodyGyro-std()-Y"              
    ## [26,] "Mean_tBodyGyro_std_Z"               "tBodyGyro-std()-Z"              
    ## [27,] "Mean_tBodyGyroJerk_mean_X"          "tBodyGyroJerk-mean()-X"         
    ## [28,] "Mean_tBodyGyroJerk_mean_Y"          "tBodyGyroJerk-mean()-Y"         
    ## [29,] "Mean_tBodyGyroJerk_mean_Z"          "tBodyGyroJerk-mean()-Z"         
    ## [30,] "Mean_tBodyGyroJerk_std_X"           "tBodyGyroJerk-std()-X"          
    ## [31,] "Mean_tBodyGyroJerk_std_Y"           "tBodyGyroJerk-std()-Y"          
    ## [32,] "Mean_tBodyGyroJerk_std_Z"           "tBodyGyroJerk-std()-Z"          
    ## [33,] "Mean_tBodyAccMag_mean"              "tBodyAccMag-mean()"             
    ## [34,] "Mean_tBodyAccMag_std"               "tBodyAccMag-std()"              
    ## [35,] "Mean_tGravityAccMag_mean"           "tGravityAccMag-mean()"          
    ## [36,] "Mean_tGravityAccMag_std"            "tGravityAccMag-std()"           
    ## [37,] "Mean_tBodyAccJerkMag_mean"          "tBodyAccJerkMag-mean()"         
    ## [38,] "Mean_tBodyAccJerkMag_std"           "tBodyAccJerkMag-std()"          
    ## [39,] "Mean_tBodyGyroMag_mean"             "tBodyGyroMag-mean()"            
    ## [40,] "Mean_tBodyGyroMag_std"              "tBodyGyroMag-std()"             
    ## [41,] "Mean_tBodyGyroJerkMag_mean"         "tBodyGyroJerkMag-mean()"        
    ## [42,] "Mean_tBodyGyroJerkMag_std"          "tBodyGyroJerkMag-std()"         
    ## [43,] "Mean_fBodyAcc_mean_X"               "fBodyAcc-mean()-X"              
    ## [44,] "Mean_fBodyAcc_mean_Y"               "fBodyAcc-mean()-Y"              
    ## [45,] "Mean_fBodyAcc_mean_Z"               "fBodyAcc-mean()-Z"              
    ## [46,] "Mean_fBodyAcc_std_X"                "fBodyAcc-std()-X"               
    ## [47,] "Mean_fBodyAcc_std_Y"                "fBodyAcc-std()-Y"               
    ## [48,] "Mean_fBodyAcc_std_Z"                "fBodyAcc-std()-Z"               
    ## [49,] "Mean_fBodyAcc_meanFreq_X"           "fBodyAcc-meanFreq()-X"          
    ## [50,] "Mean_fBodyAcc_meanFreq_Y"           "fBodyAcc-meanFreq()-Y"          
    ## [51,] "Mean_fBodyAcc_meanFreq_Z"           "fBodyAcc-meanFreq()-Z"          
    ## [52,] "Mean_fBodyAccJerk_mean_X"           "fBodyAccJerk-mean()-X"          
    ## [53,] "Mean_fBodyAccJerk_mean_Y"           "fBodyAccJerk-mean()-Y"          
    ## [54,] "Mean_fBodyAccJerk_mean_Z"           "fBodyAccJerk-mean()-Z"          
    ## [55,] "Mean_fBodyAccJerk_std_X"            "fBodyAccJerk-std()-X"           
    ## [56,] "Mean_fBodyAccJerk_std_Y"            "fBodyAccJerk-std()-Y"           
    ## [57,] "Mean_fBodyAccJerk_std_Z"            "fBodyAccJerk-std()-Z"           
    ## [58,] "Mean_fBodyAccJerk_meanFreq_X"       "fBodyAccJerk-meanFreq()-X"      
    ## [59,] "Mean_fBodyAccJerk_meanFreq_Y"       "fBodyAccJerk-meanFreq()-Y"      
    ## [60,] "Mean_fBodyAccJerk_meanFreq_Z"       "fBodyAccJerk-meanFreq()-Z"      
    ## [61,] "Mean_fBodyGyro_mean_X"              "fBodyGyro-mean()-X"             
    ## [62,] "Mean_fBodyGyro_mean_Y"              "fBodyGyro-mean()-Y"             
    ## [63,] "Mean_fBodyGyro_mean_Z"              "fBodyGyro-mean()-Z"             
    ## [64,] "Mean_fBodyGyro_std_X"               "fBodyGyro-std()-X"              
    ## [65,] "Mean_fBodyGyro_std_Y"               "fBodyGyro-std()-Y"              
    ## [66,] "Mean_fBodyGyro_std_Z"               "fBodyGyro-std()-Z"              
    ## [67,] "Mean_fBodyGyro_meanFreq_X"          "fBodyGyro-meanFreq()-X"         
    ## [68,] "Mean_fBodyGyro_meanFreq_Y"          "fBodyGyro-meanFreq()-Y"         
    ## [69,] "Mean_fBodyGyro_meanFreq_Z"          "fBodyGyro-meanFreq()-Z"         
    ## [70,] "Mean_fBodyAccMag_mean"              "fBodyAccMag-mean()"             
    ## [71,] "Mean_fBodyAccMag_std"               "fBodyAccMag-std()"              
    ## [72,] "Mean_fBodyAccMag_meanFreq"          "fBodyAccMag-meanFreq()"         
    ## [73,] "Mean_fBodyBodyAccJerkMag_mean"      "fBodyBodyAccJerkMag-mean()"     
    ## [74,] "Mean_fBodyBodyAccJerkMag_std"       "fBodyBodyAccJerkMag-std()"      
    ## [75,] "Mean_fBodyBodyAccJerkMag_meanFreq"  "fBodyBodyAccJerkMag-meanFreq()" 
    ## [76,] "Mean_fBodyBodyGyroMag_mean"         "fBodyBodyGyroMag-mean()"        
    ## [77,] "Mean_fBodyBodyGyroMag_std"          "fBodyBodyGyroMag-std()"         
    ## [78,] "Mean_fBodyBodyGyroMag_meanFreq"     "fBodyBodyGyroMag-meanFreq()"    
    ## [79,] "Mean_fBodyBodyGyroJerkMag_mean"     "fBodyBodyGyroJerkMag-mean()"    
    ## [80,] "Mean_fBodyBodyGyroJerkMag_std"      "fBodyBodyGyroJerkMag-std()"     
    ## [81,] "Mean_fBodyBodyGyroJerkMag_meanFreq" "fBodyBodyGyroJerkMag-meanFreq()"

Note: Both tidy set and original data varibles names in the above Table
are placed in quotes, i.e. quotes  symbols do not belong to the names.

### III. Tidy data set variables description

1.  "subject" is an integer variable with 30 levels from 1 to 30 taken
    directly from the original data sets.

2.  "activity" is a character variable obtained through a transformation
    of the original integer variable with levels 1 through 6 to a factor
    variable with 6 levels: WALKING, WALKING\_UPSTAIRS,
    WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING, according to the
    original data file "activity\_labels.txt". The above transformation
    was carried out as per requirement 3 of the Project assignment and
    the relevant Project assignment clarification

    <https://class.coursera.org/getdata-013/forum/thread?thread_id=30>

3.  "Mean\_tBodyAcc\_mean\_X" is the mean of the original variable
    "tBodyAcc-mean()-X" and is a numerical variable.

4.  All subsequent tidy set variables from 4 to 81 follow the same
    pattern as variable 3. above: they are all numerical variables
    representing the means of the relevant original variables.

### IV. Original data transformations

In the process of creation the final tidy data set the following
transformations on the original data sets were done:

1.  The original data sets: "subject\_test.txt", "subject\_train.txt",
    "X\_test.txt","X\_train.txt", "y\_test.txt" and "y\_train.txt" were
    consolidated (merged) into a single data set.

2.  activity variable was transformed from integer to factor as
    described above.

3.  A subset of the consolidated data set was created, including only
    variables names containing mean() or std().

4.  Original variables names were cleaned from illegal characters in R
    as follows: "-" were replaced by underscores and "()" were
    removed. This author took the liberty to keep capital letters and
    underscores in the names for the sake of readability and
    comprehesiveness of the new (almost tidy) variables names.It is this
    author's believe that the new names as described above are
    descriptive enough (as are the original ones described in detais in
    the original document features\_info.txt). The prospect of
    creation of strictly tidy foot-long new descriptive names with
    small letters only was abandoned as not practical for this
    particular case.

5.  According to Project Assignment's requirement 5 a new data set was
    created, containing means of all original variables from 3 to 81,
    grouped by subject and activity. The new variables' names were
    created by adding a prefix Mean\_ to the original variables names
    as shown in the table above.

6.  The results obtained in 5. above were recorded in a new data file
    final\_results.txt.
