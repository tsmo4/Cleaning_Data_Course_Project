Cleaning_Data_Course_Project
============================
Coursera Getting And Cleaning Data Course Project

The run_analysis.R is a script that processes dataset gathered by the "Human Activity Recognition Using Smartphones" 
experments.

A description of the expermtation phase can be found at: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The expermentaion phase data can be downloaded at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The run_analysis.R script merges the data collected from the "training" and "testing" phases of the experiment, 
into a single dataset for analysis.  

The script produces an Average for each Mean and Standard Deviation measurment collected in the Expermentation phase. 
The script outputs a table of these computed Averages to a text file (tidydata.txt) crosstabbed by Subject and Activity Type.

The script requires the "plyr" R package.  

R's working directory should be set to the master director of the dataset.

Credits for the dataset is as follows
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
