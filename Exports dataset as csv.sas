data sample_data;
   input ID Age;
   datalines;
1 25
2 32
3 45
4 29
5 36
;
run;
proc export data=sample_data
   outfile='E:\sample_data.csv'
   dbms=csv
   replace;
   
run;
