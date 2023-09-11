/* Define a library reference to the folder containing your CSV file */

libname mydata 'E:';

/* Use PROC IMPORT to read the CSV file */
proc import datafile='E:\sample_data.csv'
            out=mydata.sample_data
            dbms=csv
            replace;
run;


/* Use PROC PRINT to display the contents of the dataset */
proc print data=mydata.sample_data;
run;
