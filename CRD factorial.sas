
data test;
input  g s gs yield;
cards;
1	1	11	653.00
1	2	12	642.00
1	3	13	630.00
1	4	14	608.00
2	1	21	715.00
2	2	22	682.00
2	3	23	675.00
2	4	24	665.00
1	1	11	655.00
1	2	12	643.00
1	3	13	629.00
1	4	14	610.00
2	1	21	713.00
2	2	22	689.00
2	3	23	677.00
2	4	24	660.00
1	1	11	661.00
1	2	12	649.00
1	3	13	637.00
1	4	14	621.00
2	1	21	722.00
2	2	22	691.00
2	3	23	680.00
2	4	24	669.00
;
Proc print;
var g s gs	yield;
Run; 
PROC GLM;
  CLASS g s gs	yield;
  MODEL  yield	 = g s gs /ss1;
RUN;
MEANS g s gs / ALPHA=0.05 DUNCAN;
RUN;

