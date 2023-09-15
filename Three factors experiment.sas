data ario;
input rep g$ t$ gen$ y;
cards;
1	jk	c	p	136
1	jk	s	p	194
1	jk	c	a	164
1	jk	s	a	125
1	X9	c	p	182
1	X9	s	p	104
1	X9	c	a	117
1	X9	s	a	160
1	N2	c	p	101
1	N2	s	p	112
1	N2	c	a	108
1	N2	s	a	126
1	N5	c	p	125
1	N5	s	p	135
1	N5	c	a	122
1	N5	s	a	181
1	TC	c	p	159
1	TC	s	p	121
1	TC	c	a	167
1	TC	s	a	137
1	CM	c	p	101
1	CM	s	p	182
1	CM	c	a	193
1	CM	s	a	153
2	jk	c	p	186
2	jk	s	p	149
2	jk	c	a	165
2	jk	s	a	145
2	X9	c	p	138
2	X9	s	p	178
2	X9	c	a	172
2	X9	s	a	145
2	N2	c	p	171
2	N2	s	p	124
2	N2	c	a	100
2	N2	s	a	180
2	N5	c	p	101
2	N5	s	p	140
2	N5	c	a	150
2	N5	s	a	128
2	TC	c	p	137
2	TC	s	p	160
2	TC	c	a	169
2	TC	s	a	126
2	CM	c	p	153
2	CM	s	p	175
2	CM	c	a	160
2	CM	s	a	179
3	jk	c	p	185
3	jk	s	p	190
3	jk	c	a	120
3	jk	s	a	170
3	X9	c	p	101
3	X9	s	p	141
3	X9	c	a	173
3	X9	s	a	100
3	N2	c	p	141
3	N2	s	p	112
3	N2	c	a	180
3	N2	s	a	167
3	N5	c	p	109
3	N5	s	p	111
3	N5	c	a	191
3	N5	s	a	199
3	TC	c	p	117
3	TC	s	p	114
3	TC	c	a	158
3	TC	s	a	182
3	CM	c	p	106
3	CM	s	p	172
3	CM	c	a	128
3	CM	s	a	168


;
proc glm;
class rep g t gen;
model y= rep g t gen g*t g*gen t*gen g*t*gen/ss3;
means g/lsd;
means t/lsd;
means gen/lsd;
lsmeans g*t/slice=g pdiff;
lsmeans g*gen/slice=g pdiff;
lsmeans t*gen/slice=t pdiff;
lsmeans g*t*gen/slice=g pdiff;
run;quit;
