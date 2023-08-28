/*Suppose you have a dataset that represents the results of a survey where participants were asked about their */
/*preferred mode of transportation (Car, Bus, Bicycle, Walk) and their age group (Young, Middle-aged, Elderly). */
/*You want to determine if there is a significant association between age group and mode of transportation choice.*/

/* Create a sample dataset */
data survey;
  input AgeGroup $ ModeOfTransport $ Count;
  datalines;
Young Car 50
Young Bus 30
Young Bicycle 10
Young Walk 5
Middle-aged Car 70
Middle-aged Bus 40
Middle-aged Bicycle 15
Middle-aged Walk 10
Elderly Car 20
Elderly Bus 10
Elderly Bicycle 5
Elderly Walk 2
;

/* Perform chi-square analysis */
proc freq data=survey;
  tables AgeGroup * ModeOfTransport / chisq;
  weight Count; /* Use Count as the weight variable */
run;


