#Check if data folder exists in the directory
if( !file.exists( "UCI HAR Dataset" )){
  #If it does not exist, download data folder and unzip it
  download.file( "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                 destfile="./data.zip" )
  unzip("./data.zip")
}
