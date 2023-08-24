/* Define a library reference to the folder containing your CSV file */
libname mydata 'E:\';

/* Read the CSV file into a SAS dataset */
data mydata.csv_data;
   infile 'E:\sample_data.csv' delimiter=',' dsd firstobs=2;
   input Column1 Column2;
run;

/* Calculate the sum of Column1 and Column2 */
data mydata.sum_data;
   set mydata.csv_data;
   Total = Column1 * Column2;
run;

/* Display the result */
proc print data=mydata.sum_data;
run;

/* Export the result to a CSV file */
proc export data=mydata.sum_data
   outfile='E:\result_data.csv'
   dbms=csv
   replace;
run;

/* Close the library reference */
libname mydata clear;
