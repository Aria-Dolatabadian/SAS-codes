/* Define a library reference to the folder containing your CSV file */
libname mydata 'E:\';

/* Read the CSV file into a SAS dataset */
data mydata.csv_data;
   infile 'E:\data.csv' delimiter=',' dsd firstobs=2;
   input A B;
run;

/* Perform a T-test analysis */
proc ttest data=mydata.csv_data;
   var A B;
run;
