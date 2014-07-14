# converts given variable names to more descriptive names (as defined in tidy data)
descriptify <- function(text) {
  text <- sub("T\\s", "Time", text)
  text <- sub("F\\s", "Frequency", text)
  text <- sub("Acc\\s", "Acceleration", text)
  text <- sub("Mag\\s", "Magnitude", text)
  text <- gsub("\\s*", "", text)
}

# capitalizes the first letter in any word in the given string
capitalize <- function(str) {
  s <- strsplit(str, " ")[[1]]
  paste(toupper(substring(s, 1,1)), substring(s, 2),
        sep="", collapse=" ")
}


run_analysis <- function(location) {
  
  #### step 1 
  #### Merges the training and the test sets to create one data set
  
  # merge X
  X_train <- read.table(paste(location, '/train/X_train.txt', sep=''))
  X_test <- read.table(paste(location, '/test/X_test.txt', sep=''))
  X <- rbind(X_train, X_test)
  
  # merge y
  y_train <- read.table(paste(location, '/train/y_train.txt', sep=''))
  y_test <- read.table(paste(location, '/test/y_test.txt', sep=''))
  y <- rbind(y_train, y_test)
  names(y) <- c("ActivityIndex")
  
  # merge subject
  subject_train <- read.table(paste(location, '/train/subject_train.txt', sep=''))
  subject_test <- read.table(paste(location, '/test/subject_test.txt', sep=''))
  subject <- rbind(subject_train, subject_test)
  names(subject) <- c("SubjectIndex")
  
  #### step 2
  #### Extracts only the measurements on the mean and standard deviation for each measurement.
  features <- read.table(paste(location, '/features.txt', sep=''), col.names = c("FeatureIndex", "FeatureName"), stringsAsFactors=FALSE)
  # using regular expressions to find features with std() or mean()
  measurementsIndex <- grep(".*mean\\(\\)|.*std\\(\\)", features$FeatureName)
  measurements <- X[, measurementsIndex]
  
  
  #### step 3 
  #### Uses descriptive activity names to name the activities in the data set
  activities <- read.table(paste(location , '/activity_labels.txt', sep=''), col.names = c("ActivityIndex", "ActivityLabel"))
  activities$ActivityLabel <-sapply(tolower(gsub("_", " ", activities$ActivityLabel)), capitalize)
  
  #### step 4 
  #### Appropriately labels the data set with descriptive variable names
  # getting only the relvant names
  used_features <- features[measurementsIndex,]
  # using regular expression to omit non-"tidy" characters, and also split by capital letter
  used_features$FeatureName <- gsub("(?!^)(?=[[:upper:]])|(\\(\\)\\-)|(\\(\\))|(\\-)", " ", used_features$FeatureName, perl=T)
  used_features$FeatureName <- sapply(used_features$FeatureName, capitalize)
  used_features$FeatureName <- sapply(used_features$FeatureName, descriptify)
  names(measurements) <- used_features$FeatureName
  
  #### (unclear what step)
  # merging the data (subject, requested measurements out of X, y), preserving order
  tidy <- cbind(subject, measurements, y)
  tidy$ordr <- 1:nrow(tidy)
  tmp <- merge(tidy, activities)
  tidy <- tmp[order(tmp$ordr),]
  tidy$ordr = NULL
  # writing the data to a file
  write.table(tidy, file="./tidy.txt", row.names=TRUE)
  
  #### step 5 
  #### Creates a second, independent tidy data set with the average of each variable for each activity and each subject
  library(reshape2)
  vars <- c("ActivityLabel", "SubjectIndex")
  # melting the data by activity and subject
  meltedTidy <- melt(tidy, id=vars)
  # casting it back by using mean function on the variables, by activity and subject
  meanTidy <- dcast(meltedTidy, ActivityLabel + SubjectIndex ~ variable, mean)
  # writing to a file
  write.table(meanTidy, file="./meanTidy.txt", row.names=TRUE)

}


