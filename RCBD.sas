DATA mydata;
input r t$ yield;
cards;
1 A 7.15
2 A 7.74
3 A 6.39
4 A 4.63
1 B 8.17
2 B 8.78
3 B 8
4 B 6.75
1 C 6.82
2 C 8.58
3 C 7.06
4 C 6.78
1 D 5.74
2 D 4.63
3 D 5.56
4 D 4.94
1 E 5.87
2 E 6.62
3 E 5.81
4 E 4.22
run;
proc glm;
class r t;
model yield=r t;
MEANS t / ALPHA=0.05 DUNCAN;
RUN;
