data test;
input R LO$ H	LL	LW	CH	Ee	Pp	C	T	TH	CAR	TR;
cards;
1	S	220.00	12.58	3.98	3.01	1.44	4.28	1.89	3.02	76.44	4.42	2.45
1	E	282.00	15.11	3.24	2.99	1.70	3.60	1.46	5.47	32.62	47.92	2.03
1	B	204.00	12.12	3.00	2.46	1.02	3.42	1.60	3.66	13.39	69.61	0.98
1	M	201.00	13.10	3.10	1.89	2.09	2.51	0.29	2.60	8.25	71.79	3.53
2	S	95.00	10.47	2.76	3.22	2.03	4.68	2.97	2.56	76.46	4.85	1.04
2	E	234.00	12.93	15.18	2.19	1.52	4.04	0.94	7.74	33.92	44.63	2.05
2	B	187.00	13.64	3.24	2.51	1.27	2.06	1.38	1.49	10.71	78.16	1.24
2	M	189.00	12.04	3.12	2.33	1.99	2.77	0.36	2.89	7.55	73.02	2.28
3	S	200.00	11.17	2.60	2.81	1.68	2.10	1.78	1.23	74.55	4.45	1.37
3	E	281.00	16.43	3.47	3.18	1.52	4.04	0.94	7.74	33.92	44.63	2.05
3	B	279.00	15.92	3.51	2.44	1.31	5.19	2.49	4.79	72.10	4.72	2.51
3	M	197.00	13.03	3.48	2.91	1.87	1.09	0.78	0.30	46.81	36.75	5.09
4	S	200.00	11.02	2.78	2.71	1.03	4.51	4.17	4.50	70.76	4.09	2.32
4	E	219.00	14.97	3.22	3.11	2.35	2.88	0.97	5.73	34.52	49.88	1.63
4	B	198.00	10.80	3.51	2.37	1.16	2.72	1.51	2.08	1.19	82.95	1.11
4	M	201.00	12.09	2.96	2.33	1.87	2.51	0.29	2.60	8.25	71.79	3.53
;
PROC GLM;
  CLASS R LO;
  MODEL H LL	LW	CH	Ee	Pp	C	T	TH	CAR	TR =  LO/ss3;
RUN;
MEANS LO / ALPHA=0.01 DUNCAN;
lsmeans lo/stderr;
RUN;