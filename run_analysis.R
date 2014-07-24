#Loads the plyr library as it's needed to run the script
library("plyr")

#Alert the user that the script has started
print("Running Script, Please stand by...")

# Acquire Observation Labels
obsvnames <- read.table("./features.txt", as.is=TRUE)
cnames <- obsvnames[,2]

# Create a column that indicates if observation is a result of a "mean" OR "std" function
# create varible of # of each observation needed, and it's name
obsvnames$isneeded <- ifelse((grepl("mean",obsvnames$V2) | grepl("std",obsvnames$V2)) & !grepl("meanF",obsvnames$V2),TRUE,FALSE)
cneeded <- obsvnames[obsvnames$isneeded == TRUE,1]

# Acquire Activity Labels
actvnames <- read.table("./activity_labels.txt", col.names=c("ActivityNo","Activity_name"),as.is=TRUE)

#Status update for User
print("Processing Training Data...")

#Acquire Training data, Training Subjects, Training Activties, name the columns
traintable <- read.table("./train/X_train.txt",col.names = cnames)
trainsbjct <- read.table("./train/subject_train.txt", col.names="Subject")
trainactivity <- read.table("./train/y_train.txt", col.names="ActivityNo")

#Bind the columns including "mean" OR "std" of Training data to subject and activity
traintable<- cbind(traintable[,cneeded],trainsbjct,trainactivity)

#Status update for User
print("Processing Test Data...")

#Acquire Test data, Test Subjects, Test Activties, name the columns
testtable <- read.table("./test/X_test.txt",col.names = cnames)
testsbjct <- read.table("./test/subject_test.txt", col.names="Subject")
testactivity <- read.table("./test/y_test.txt", col.names="ActivityNo")

#Bind the columns including "mean" OR "std" of Test data to subject and activity
testtable<- cbind(testtable[,cneeded],testsbjct,testactivity)

#Combine the test and the training files
fulldf <- rbind(traintable,testtable)

#Cleanup a little
rm(testtable,testsbjct,testactivity,traintable,trainsbjct,trainactivity)

#join activity names to the DF, then remove the old Activity number from the DF
fulldf <- merge(fulldf,actvnames,by.x="ActivityNo",by.y="ActivityNo")
fulldf$ActivityNo <- NULL

#Use plyr to split the data by subject and activity, run a column mean, then combine it into a tidy table
tidydata <- ddply(fulldf,.(Subject,Activity_name),numcolwise(mean))

#Write that tidy data to a file
write.table(tidydata,"tidydata.txt")

#Let the User know where to find work
print("Tidy data set now in working directory, named tidydata.txt")