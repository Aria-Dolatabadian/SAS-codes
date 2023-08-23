data LinearRegressionData;
  infile datalines delimiter=','; /* Read data from datalines using ',' as delimiter */
  input X Y; /* Define variables X and Y */
datalines;
1.23,3.45
12.45,15.67
93.67,18.01
4.89,10.12
6.01,12.45
9.23,14.78
18.45,16.90
59.67,19.34
10.89,21.56
12.01,24.01
;
run;


proc reg data=LinearRegressionData;
  model Y = X;
run;
