data correlation;
input a	b	c	d	e	f	g	h	i	j	k	l;
cards;
71	43	18	63	78	39	28	28	19	48	13	11
28	64	85	14	91	79	26	72	80	32	43	80
91	72	27	51	69	76	50	47	97	17	91	30
22	59	84	12	93	16	67	27	53	27	51	21
36	23	46	43	92	70	74	79	34	93	81	71
19	55	52	91	43	21	79	69	79	89	59	74
100	95	26	79	51	25	85	53	94	69	23	58
11	17	95	73	74	94	20	56	47	34	87	38
60	34	14	38	32	76	89	16	52	23	14	98
21	83	58	58	89	85	47	15	71	37	74	25
29	100	82	63	49	32	18	37	34	44	59	95
32	64	46	69	44	92	75	78	95	18	81	23
23	100	89	79	50	25	71	96	91	51	40	60
22	67	88	68	97	56	38	18	51	19	12	87
44	94	68	94	70	31	89	37	60	11	99	98
46	52	25	69	13	34	65	29	10	97	83	18
50	40	47	81	66	95	69	97	70	28	83	17
94	46	70	18	58	70	83	69	31	19	33	33
50	24	12	62	85	100	98	89	96	82	88	28
74	31	99	24	32	37	45	22	54	55	32	80
12	57	50	23	23	91	36	68	52	59	28	53
99	45	26	29	86	95	54	55	85	43	39	54
40	57	41	59	51	31	79	88	30	61	32	32
98	68	89	89	28	27	45	19	54	35	64	43
96	99	34	48	23	95	27	29	42	100	28	16
82	72	80	51	13	50	17	80	28	22	48	72
31	23	27	27	78	39	87	72	92	82	26	26
71	58	18	21	18	100	97	34	30	28	24	18
78	53	29	10	27	15	17	54	25	53	40	29
94	72	17	97	91	32	66	87	66	42	34	47


run;
proc corr;
var a	b	c	d	e	f	g	h	i	j	k	l;
run;