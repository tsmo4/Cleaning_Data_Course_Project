Cleaning_Data_Course_Project
============================
Coursera Getting And Cleaning Data Course Project

The run_analysis.R is a script that processes dataset gathered by the "Human Activity Recognition Using Smartphones" experments.
Credit for the dataset is as follows
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The script merges the data collected from the "training" and "testing" phases of the experiment, into a single dataset for
analysis.  

The analysis stage Averages the catgorized means collected in the data collection stage.

The produced data (tidydata.txt) are those catagorized means, crosstabbed by Subject and Activity Name.

The script requires the "plyr" R package.  

R's working directory should be set to the master director of the dataset.
