CODE BOOK for R_Analysis.R

Variable range and units, most important is the variable “id”,  namely,  the test index which is used as the common key for most of the tables.
For test data set.  


Subject: range 1 to 30
Activity_index: 1 to 6
Activities * : activity_index description obtained from file “activity_label”
Sensor measurements: body_acc_x, body_acc_y, body_acc_z  with units in g (gravitational acceleration 9.81 m/s)
Sensor measurements: body_gyro_x, body_gyro_y, body_gyro_z with units in radians/s
Sensor measurements: total_acc_x, total_acc_y, total_acc_z  with units in g (gravitational acceleration 9.81 m/s)
Id :  search key index, intentionally set with a range of 1 to 2947 for test data set, 10001 to 17352 for train data set to discriminate the two.

Computed variables
Mean Computation:
Average over 128 
samples to get…..:   body_acc_x_mean, body_acc_y_mean, body_acc_z_mean
Average over 128 
samples to get…..: body_gyro_x_mean, body_gyro_y_mean, body_gyro_z_mean
Average over 128 
samples to get…..:   total_acc_x_mean, total_acc_y_mean, total_acc_z_mean

Standard Deviation Computation:
Computes Standard deviation for 128 samples:   body_acc_x_std, body_acc_x_std, body_acc_x_std
Computes Standard deviation for 128 samples:  body_gyro_x_std, body_gyro_y_std, body_gyro_z_std
Computes Standard deviation for 128 samples:   total_acc_x_std, total_acc_x_std, total_acc_x_std


Footnote *
Use the following Activities lookup table to obtain the corresponding description for the Activity_index

Activities (Description of activities by id which is the “activity_index” in file “activity_label”)
Index   Activities
  1      WALKING
  2   WALKING_UPSTAIRS
  3  WALKING_DOWNSTAIRS
  4      SITTING
  5      STANDING
  6       LAYING

For Test Data Set, the meaning of inertial sensor measurements

Body Acceleration:
body_acc_x_test
body_acc_y_test
body_acc_z_test

Body Gyro:
body_gyro_x_test
body_gyro_y_test
body_gyro_z_test

Total Acceleration:
total_acc_x_test
total_acc_y_test
total_acc_z_test

For Train Data Set, the meaning of inertial sensor measurements

Body Acceleration:
body_acc_x_Train
body_acc_y_Train
body_acc_z_Train

Body Gyro:
body_gyro_x_Train
body_gyro_y_Train
body_gyro_z_Train

Total Acceleration:
total_acc_x_Train
total_acc_y_Train
total_acc_z_Train

Volunteer/ Subject id
1:30

In Test inertial measurements, there are 128 data points collected from each participant,  and there are 2947 trial runs
In Train inertial measurements, there are 128 data points collected from each participant, and there are 7352 trial runs 
The id for test data set is set from 1 onwards (will be from 1 to 2947) 
and for train data we intentionally set the “id” from 10001 onwards (ie will be from 10001 to 17352)
This is to enable us to merge the two and yet keep traceability intact

Cleaned up inertial sensor measurement
For test data, they are indexed with “id” and kept in files body_acc_x_test_index, body_acc_y_test_index… body_gyro_z_test_index
For train data, they are indexed with “id” and kept in files body_acc_x_train_index, body_acc_y_train_index… body_gyro_z_train_index

Cleaned up activity label and saved in file “activity_label”

Generate file “feature_name_look_up_table” for cross referencing of the feature names before and after simplification with the 561 feature identification number

Generate a file "subject_with_test_index" with names (total length 2947)
“id" which is the test identify number counting from 1 onwards for test data set identification
"subject.test" which is the number of the test subject (30 of them in total) for the test (now cross-referenced to test identify number )

Generate a file "subject_with_train_index" with names (total length 7352)
"id" which is the train identify number counting from 10001 onwards for train data set identification
"subject.train" which is the number of the train subject (30 of them in total) for the training (now cross-referenced to train identify number )

 Generate a file "activity&no_with_test_index" with names
 "id" which is the test identify number counting from 1 onwards for test data set identification...
 "activity.test" which is the identity number of the activity for the test (now cross-referenced to test identify number )
 "activities" which is the descriptive names for the activities carried out in the test


 Generate a file "activity&no_with_train_index" with names
 "id" which is the train identify number counting from 10001 onwards for train data set identification
 "activity.train" which is the identity number of the activity for the train (now cross-referenced to train identify number )
 "activities" which is the descriptive names for the activities carried out in the training

Feature descriptions are simplified by removing "(",")" and replaces them all with ""
removing "-"and "," and replace both of them with "_"
generate a lookup table with 561 names in file "feature_name_look_up_table" 
for cross referencing of the old and new feature names

These simplified features are further short listed with those only come with 
“Std” or “mean” in their descriptions.  This shortlisted features are called selected features 
and are used in the followings:  

 Generate a file "sensors_mean&std_with_selected_features_info" with names
 id : combined test and train identification numbers
 with test id starting from 1 onwards and test id starting from 10001 onwards both 
 under the same variable "id" in the data file
 other names include "activity_index","activities" which is for ease of reading 
 as it can be obtained from "activity_index" in the lookup table
 "activity_index", and 58 variables consisting of the inertial sensors measurement (after 128 sample means)
 and selected feature variables that consists of "mean" and "std" in their descriptive names as 
 given by the instruction for the assignment

 Generate a file "summarized_measurement_average_activity&subject" that 
 summarizes with the average of each variable for each activity and each subject.
 there are total of 40 matches of activities and subject with their group average calculated


By: Sam L Tay

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

For more information about this dataset contact: activityrecognition@smartlab.ws
