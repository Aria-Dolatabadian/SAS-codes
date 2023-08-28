/* Create a sample dataset */
data grades;
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

/* Calculate descriptive statistics */
proc means data=grades;
  var Score;
run;
