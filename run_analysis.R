#Check if data folder exists in the directory
if( !file.exists( "UCI HAR Dataset" )){
  #If it does not exist, download data folder and unzip it
  download.file( "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                 destfile="./data.zip" )
  unzip("./data.zip")
}

#Read file listing features
ft_names<-read.table("./UCI HAR Dataset/features.txt")

#Read file listing activity labels
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt", col.names=c("n","label"))

#Read subject numbers for the data sets
subjects_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
subjects_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")

#Read test and train activity labels
test_label<-read.table("./UCI HAR Dataset/test/y_test.txt")
train_label<-read.table("./UCI HAR Dataset/train/y_train.txt")

#Read test and train and test data sets
test_set<-read.table("./UCI HAR Dataset/test/X_test.txt", col.names=ft_names[,2])
train_set<-read.table("./UCI HAR Dataset/train/X_train.txt", col.names=ft_names[,2])

#Merge train and test sets and labels into one data frame
merged_set<-rbind(train_set,test_set)
merged_label<-rbind(train_label,test_label)
merged_data<-cbind(merged_set,"label"=merged_label)

#Extract features measuring mean and standard deviation
MxSD_data<-merged_set %>% select(label,contains("mean")|contains("std"))
