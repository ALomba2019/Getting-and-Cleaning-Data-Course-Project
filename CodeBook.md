# Code Book

The R script [run_analysis.R](https://github.com/BadFrameRate/Getting-and-Cleaning-Data-Course-Project/blob/master/run_analysis.R), performs the following 8 step process to produce the tidy data frame with the required attributes at the end.

**1. Get the data to be used:** It first checks if the unzipped data folder already exists in the current working directory. If it doesn't , it downloads the zipped folder from the URL provided at the course page, and then unzips it. If it does exist, it proceeds with the following steps.

**2. Read the required files in data frames:** It reads the following, in order: 
* feature labels as a 561x2 data frame
* activity labels as a 6x2 data frame
* subject labels for test(2947x1) and train(7352x1) data as two separate data frames
* activity codes for test(2947x1) and train(7352x1) data as two separate data frames
* test(2947x561) and train(7352x561) data sets containing recorded values for the different features as two separate data frames

**3. Merge the test and train data together:** It performs the merge in the following steps:
* merge, by rows, the test(2947x561) and train(7352x561) data frames containing feature values into a single data frame(10299x561)
* merge, by rows, the test(2947x1) and train(7352x1) activity codes into a single data frame(10299x1)
* merge, by rows, the test(2947x1) and train(7352x1) subject labels into a single data frame(10299x1)
* merge, by columns, the three data frames produced

**4. Extract the required columns:** From the merged data, the columns specifying the activity codes, the subject labels, and the features measuring mean and standard deviation.

**5. Rename activity codes:** Uses the activity labels(6x2) data frame to substitute the activity codes in the merged data frame with their labels.

**6. Rename columns:** Gave descriptive names to the columns of the extracted data frame through the following process, made easy with the chaining operator introduced by the margrittr package:
* For every name beginning with a 't', replace it with 'Time Domain '
* For every name beginning with a 'f', replace it with 'FFT of '
* For every instance of 'Body', add a space after it
* For every instance of 'Gravity', add a space after it
* For every instance of 'Acc', replace it with 'Accelerometer'
* For every instance of 'Gyro', replace it with 'Gyroscope'
* For every instance of 'Jerk', add a space after it
* For every instance of 'Mag', end the name with 'Signal (Magnitude)'
* For every instance of '.mean.', begin the name with 'Mean of ', removing any punctuation marks and everything else remaining the same
* For every instance of '.std.', begin the name with 'Standard Deviation of ', removing any punctuation marks and everything else remaining the same
* For every name ending with a capital letter, replace it with 'Signal (*the matched letter*- component)'
* Rename 'activity' as 'Activity'
* Rename 'subject' as 'Subject Code'
This would result, for example, in the column name 'tBodyAcc.mean().X' to be changed to 'Mean of Time Domain Body Accelerometer Signal (X-component)'

**7. Make a new data frame containing averages:** A new data frame is then created from this extracted data frame, containing the averages of each column, grouped by each activity and subject pair. The column names remain unchanged, but keep in mind that *the entries in this data frame are the averages, of the values the column names specify, for each activity and subject pair*

**8. Write the new data frame:** This new data frame is then written out to the current working directory as text file, if it doesn't exist there.

Comments have also been added in the [script](https://github.com/BadFrameRate/Getting-and-Cleaning-Data-Course-Project/blob/master/run_analysis.R) at every junction of code, to describe what that piece of code achieves.
