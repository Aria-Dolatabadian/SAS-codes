/* Define a library reference to the folder containing your CSV file */
libname mydata 'E:';

/* Read the CSV file into a SAS dataset */
data mydata.csv_data;
   infile 'E:\data.csv' delimiter=',' dsd firstobs=2;
   input A B;
run;

/* Calculate the Spearman rank correlation coefficient */
proc corr data=mydata.csv_data spearman;
   var A B;
run;

/* Close the library reference */
libname mydata clear;
