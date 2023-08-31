data a;
input x y @@;
cards;
10	150
20	300
30	450
40	600
50	750
60	900



;
proc reg;
model y=x;
plot y*x;
run;
