/* Define a library reference to the folder containing your CSV file */
libname mydata 'E:\';

/* Read the CSV file into a SAS dataset */
data mydata.csv_data;
   infile 'E:\data.csv' delimiter=',' dsd firstobs=2;
   input Marker $ Chromosome Position PValue;
run;

/* Create a Manhattan plot */
proc sgplot data=mydata.csv_data;
   scatter x=Position y=PValue / group=Chromosome;
   xaxis label="Genomic Position";
   yaxis label="P-Value (log scale)" type=log;
   
   /* Add a threshold line at P = 0.001 */
   refline 0.001 / axis=y lineattrs=(color=red);
run;

/* Close the library reference */
libname mydata clear;
