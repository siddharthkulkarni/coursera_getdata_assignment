# coursera_getdata_assignment

This is the submission of Siddharth P Kulkarni's project for the Getting and Cleaning Data

The code pulls in all relevant files associated with the Samsung database.

I then appropriately label the testing and training datasets using the provided train_y and test_y labels. I also add in the activity data. 

Next, I append the testing and training data and extract only those columns that contain the standard deviation and mean. 

I then add back in subject variable and use the group_by command to seperate the data into the activity and subject combinations. 

Then I add in the activity labels and produce a tidy dataset with one observation for each subject-activity pair. 

The activityDescription variable contains the English label for the activity performed. 

