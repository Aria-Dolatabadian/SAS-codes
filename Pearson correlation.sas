data correlation;
input x1 x2;
cards;
4 4.1
6 4.9
8 4.6
10 5.3
12 5.8
14 5.6
16 6.4
18 6.4
20 6.7
run;
proc corr;
var x1 x2;
run;
