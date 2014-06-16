run_analysis <- function () {
    ## Load all of the required training data files into data frames before merging them
    
    # Load the subject identifiers for the training data into a data frame
    subjectsTrain <- read.table("./train/subject_train.txt", colClasses="integer")

    # Load the activity identifiers for the training data into a data frame
    activitiesTrain <- read.table("./train/y_train.txt", colClasses="integer")
    
    # Load the measurements for the training data into a data frame
    measuresTrain <- read.table("./train/X_train.txt", colClasses="numeric")
    
    # Merge the training data into a single data frame
    trainData <- cbind(cbind(subjectsTrain, activitiesTrain), measuresTrain)
    
    ## Load all of the required test data files into data frames before merging them
    
    # Load the subject keys for the test data into a data frame
    subjectsTest <- read.table("./test/subject_test.txt", colClasses="integer")
    
    # Load the activity keys for the test data into a data frame
    activitiesTest <- read.table("./test/y_test.txt", colClasses="integer")
    
    # Load the measurements for the test data into a data frame
    measuresTest <- read.table("./test/X_test.txt", colClasses="numeric")
    
    # Merge the test data into a single data frame
    testData <- cbind(cbind(subjectsTest, activitiesTest), measuresTest)
    
    ## Now merge the training and test data frames to form a new data frame
    rawData <- rbind(trainData, testData)
    
    ## Extract the features that are the mean or standard deviation of a measurment
    
    # Load the list of features into a data frame along with their IDs
    featureList <- read.table("features.txt", colClasses=c("integer", "character"))
    
    # Add 2 to the first column in extract measures to align the column ids
    featureList$V1 <- featureList[[1]] + 2
                              
    # Identify the columns that are the mean or standard deviation of a measurement
    extractMeasures <- featureList[grepl('mean\\(\\)|std\\(\\)',featureList[, 2]), ]
    
    # Extract columns 1 & 2 and the measures that are the mean or standard deviation of a measurement to a new data frame
    dataSubset <- rawData[ , c(1, 2, extractMeasures[[1]])]
    
    ## Apply descriptive activity names to the data subset
    
    # Read the list of activity names into a data frame
    activityList <- read.table("activity_labels.txt", colClasses=c("integer", "character"))
    
    # Convert the activity descriptions to lower case to make them more readable
    activityList[[2]] <- tolower(activityList[[2]])
    
    # Apply the activity labels to column 2 converting it to a factor variable
    dataSubset[, 2] <- factor(dataSubset[[2]], levels=activityList[[1]], labels=activityList[[2]])
    
    ## Label the data set with descriptive variable names
    
    # Apply descriptive names to the first 2 columns
    colnames(dataSubset)[1:2] <- c("subject_id", "activity")
    
    # Apply descriptive names to the measurment data columns
    colnames(dataSubset)[3:68] <- extractMeasures[ , 2]
    
    ## Create a new data set with the mean of each measurement for each activity and each subject
    
    # Ensure the resphape 2 package is loaded
    library(reshape2)
    
    # Melt data frame dataSubset to facilitate the aggregation
    meltData <- melt(dataSubset, id=c("subject_id", "activity"))
    
    # Use dcast to compute the mean measurement by subject and activity
    tidyData <- dcast(meltData, subject_id + activity ~ variable, mean)
    
    # Prepend "mean_" to the measurement column names in the tiday data set
    colnames(tidyData)[3:68] <- paste("mean_", colnames(tidyData)[3:68], sep="")
    
    # Write the tidy data to a csv file
    write.csv(tidyData, file = "tidy_data.csv",row.names=FALSE)
}