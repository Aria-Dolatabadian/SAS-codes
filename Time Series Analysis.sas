/* Suppose you have a dataset that contains monthly sales data for a store over a period of time, and you want to perform time series analysis to identify trends and seasonality in the sales data.*/

/* Create a sample time series dataset */
data Sales;
  input Date mmddyy10. Sales;
  format Date mmddyy10.;
  datalines;
01/01/2021 100
02/01/2021 110
03/01/2021 120
04/01/2021 115
05/01/2021 130
06/01/2021 140
07/01/2021 145
08/01/2021 160
09/01/2021 155
10/01/2021 170
11/01/2021 180
12/01/2021 185
01/01/2022 105
02/01/2022 115
03/01/2022 125
04/01/2022 120
05/01/2022 135
06/01/2022 145
07/01/2022 150
08/01/2022 165
09/01/2022 160
10/01/2022 175
11/01/2022 185
12/01/2022 190
;

/* Perform time series analysis using PROC TIMESERIES */
proc timeseries data=Sales plots=all;
  id Date interval=month;
  var Sales;
  title 'Time Series Analysis of Monthly Sales';
run;
