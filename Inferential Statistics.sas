/* Create a sample dataset with multiple groups */
data TestScores;
  input Group $ Score;
  datalines;
GroupA 85
GroupA 92
GroupA 78
GroupB 89
GroupB 95
GroupC 88
GroupC 91
GroupC 76
GroupD 90
GroupD 84
;

/* Perform one-way ANOVA */
proc glm data=TestScores;
  class Group;
  model Score = Group;
  title 'One-Way ANOVA for Test Scores';
run;
