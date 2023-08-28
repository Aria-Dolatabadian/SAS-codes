
/*Suppose you have collected test scores from a group of students, and you want to test whether the average test score for this group is significantly different from a specified value (e.g., a population mean of 75). */
/*You can use a one-sample t-test for this hypothesis test.*/

/* Create a sample dataset of test scores */
data TestScores;
  input StudentID $ Score;
  datalines;
A101 85
A102 92
A103 78
A104 89
A105 95
A106 88
A107 76
A108 90
A109 84
A110 91
;

/* Perform a one-sample t-test */
proc ttest data=TestScores h0=75; /* Specify the null hypothesis mean (H0) */
  var Score;
  title 'One-Sample T-Test for Test Scores';
run;
