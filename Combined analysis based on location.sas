data a;
input cultivar place block yield @@;
cards;
1	1	1	45
2	1	1	45
3	1	1	66
4	1	1	42
5	1	1	44
1	2	1	33
2	2	1	77
3	2	1	35
4	2	1	65
5	2	1	36
1	3	1	23
2	3	1	55
3	3	1	45
4	3	1	77
5	3	1	33
1	1	2	99
2	1	2	74
3	1	2	65
4	1	2	34
5	1	2	76
1	2	2	87
2	2	2	34
3	2	2	65
4	2	2	77
5	2	2	68
1	3	2	66
2	3	2	55
3	3	2	54
4	3	2	65
5	3	2	56
1	1	3	35
2	1	3	65
3	1	3	74
4	1	3	75
5	1	3	56
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
proc anova;
class yield cultivar place block;
model yield = place block(place)cultivar  cultivar*place;
test h=place e= block(place);
means place /duncan alpha = 0.05 e =block(place);
means cultivar / duncan alpha = 0.05;
means cultivar*place;
run;
