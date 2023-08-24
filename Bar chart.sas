/* Sample data - Replace with your own data */
data sales_data;
   input Product $ Sales Color $;
   datalines;
ProductA 1000 Blue
ProductB 1500 Red
ProductC 800 Green
ProductD 1200 Yellow
;
run;

/* Create a bar chart with custom bar colors */
proc sgplot data=sales_data;
   vbar Product / response=Sales group=Color;
   xaxis label="Product";
   yaxis label="Sales";
run;
