DATA mydata;
input r t yield;
cards;
1 1 12
1 2 15
1 3 23
1 4 55
2 1 13
2 2 17
2 3 25
2 4 58
3 1 11
3 2 14
3 3 26
3 4 59
;
proc glm;
class r t;
model yield=t;
MEANS t / ALPHA=0.05 DUNCAN;
RUN;
