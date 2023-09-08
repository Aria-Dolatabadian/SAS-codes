
data test;
input t1 t2;
cards;
1 6
2 7
3 8


PROC MEANS DATA=test ;

RUN ;  







data mytest;
input t	a;
cards;
1 	1.55	
1 	1.48	
1 	1.51	
2 	1.52	
2 	1.62	
2 	1.56	
3	1.56	
3	1.58	
3	1.62	


;
proc means stderr mean data= mytest;
by t;
var a;
output out=mytest mean =am stderr =ea;
run;











