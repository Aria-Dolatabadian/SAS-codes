data a;
input cultivar year block yield @@;
cards;
1	1	1	245
2	1	1	145
3	1	1	166
4	1	1	142
5	1	1	144
1	2	1	100
2	2	1	77
3	2	1	35
4	2	1	65
5	2	1	36
1	3	1	23
2	3	1	55
3	3	1	45
4	3	1	77
5	3	1	33
1	1	2	254
2	1	2	111
3	1	2	165
4	1	2	134
5	1	2	176
1	2	2	100
2	2	2	34
3	2	2	65
4	2	2	77
5	2	2	68
1	3	2	66
2	3	2	55
3	3	2	54
4	3	2	65
5	3	2	56
1	1	3	135
2	1	3	165
3	1	3	174
4	1	3	175
5	1	3	111
1	2	3	66
2	2	3	43
3	2	3	77
4	2	3	86
5	2	3	77
1	3	3	88
2	3	3	55
3	3	3	55
4	3	3	55
5	3	3	55

;
proc glm;
class cultivar year block;
model yield = year block(year) cultivar cultivar*year;
random year block(year)cultivar cultivar*year / test; 
means year /duncan alpha = 0.05 e =block(year);
means cultivar / duncan alpha = 0.05;
means cultivar*year;
run;

