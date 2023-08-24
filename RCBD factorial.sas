
data test;
input  r g s gs yield;
cards;
1 1	1	11	600.00
1 1	2	12	602.00
1 1	3	13	600.00
1 1	4	14	608.00
1 2	1	21	615.00
1 2	2	22	602.00
1 2	3	23	605.00
1 2	4	24	605.00
2 1	1	11	605.00
2 1	2	12	603.00
2 1	3	13	609.00
2 1	4	14	600.00
2 2	1	21	703.00
2 2	2	22	609.00
2 2	3	23	607.00
2 2	4	24	600.00
3 1	1	11	601.00
3 1	2	12	609.00
3 1	3	13	607.00
3 1	4	14	601.00
3 2	1	21	602.00
3 2	2	22	6o1.00
3 2	3	23	600.00
3 2	4	24	609.00
;
Proc print;
var g s gs	yield;
Run; 
PROC GLM;
  CLASS r g s gs	yield;
  MODEL  yield	 = r g s gs /ss1;
RUN;
MEANS g s gs / ALPHA=0.05 DUNCAN;
RUN;

