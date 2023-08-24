/* Read the CSV data back into SAS */
proc import datafile='E:\temperature_data.csv'
   out=temperature_data
   dbms=csv replace;
   delimiter=',';
run;

/* Create a line chart for daily temperature data */
proc sgplot data=temperature_data;
   series x=Day y=Temperature / markers;
   xaxis label="Day of the Year";
   yaxis label="Temperature (°F)";
   title "Average Daily Temperature for 365 Days";
run;
