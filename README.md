# Getting and Cleaning Data: Course Project

This repository is a submission to the peer graded course project of the 'Getting and Cleaning Data' course on Coursera offered by the John Hopkins University.

The dataset used for this project was downloaded as a zip file from the URL(listed below) provided on the assignment page. However you don't need to explicitly download this zip file, since the script [run_analysis.R](https://github.com/BadFrameRate/Getting-and-Cleaning-Data-Course-Project/blob/master/run_analysis.R) does it for you, and unzips the file as well. 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Speaking of files, the data set used is not included in the repository for the reason stated above. The files in this repository are:
1. this README
2. a [code book](https://github.com/BadFrameRate/Getting-and-Cleaning-Data-Course-Project/blob/master/CodeBook.md)
3. the script [run_analysis.R](https://github.com/BadFrameRate/Getting-and-Cleaning-Data-Course-Project/blob/master/run_analysis.R) that performs the requisite actions on the raw data
4. the final [tidy data set](https://github.com/BadFrameRate/Getting-and-Cleaning-Data-Course-Project/blob/master/tidy_data_frame.txt) with the required attributes produced at the end of it all.

Please read the [code book](https://github.com/BadFrameRate/Getting-and-Cleaning-Data-Course-Project/blob/master/CodeBook.md) to understand what the R script does to produce the required dataset at the end. **Also before you run the script, please make sure to load the 'dplyr' package in your environment.**
