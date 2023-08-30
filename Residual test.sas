
data test;
input    block   treat   a b c d e;
cards;
1      1      59.2      33.0      24      0      0
1      2      59.2      34.2      14      0      0
1      3      65.0      37.2      16      24.6      16.2
1      4      89.0      51.0      16      3      2.4
1      5      33.6      19.6      24      181      112.2
1      6      76.4      41.4      20      130.6      94.8
1      7      54.8      33.8      12      6.2      5.2
1      8      83.4      45.6      16      .      0
1      9      79.2      51.0      16      15      10
1      10      57.4      34.6      22      134.6      103.2
1      11      56.8      35.4      16      0      0
2      1      83.0      50.4      20      0      0
2      2      91.4      54.6      20      0      0
2      3      57.0      33.6      20      0      0
2      4      46.0      29.8      20      0      0
2      5      92.6      54.4      18      0      0
2      6      83.8      51.4      20      3      2.4
2      7      77.4      44.6      16      0      0
2      8      28.6      18.4      16      106.4      74.2
2      9      76.0      44.4      16      63.2      42
2      10      33.8      20.0      12      100.4      55.2
2      11      40.4      21.6      20      0      0
3      1      54.0      31.0      20      0      0
3      2      59.0      36.0      22      0      0
3      3      88.8      54.0      22      0      0
3      4      33.6      17.6      18      1.6      1.2
3      5      137.6      77.4      24      .      0
3      6      86.8      54.0      26      129.4      79.6
3      7      99.2      58.8      22      13      8.2
3      8      72.8      43.6      18      122.6      88.2
3      9      109.4      62.8      20      81.6      49
3      10      230.4      141.2      22      106      69.8
3      11      82.8      47.2      20      0      0
4      1      142.6      81.8      28      .      142.6
4      2      86.8      53.0      22      .      .
4      3      193.4      118.2      24      0      0
4      4      154.6      89.6      22      0      0
4      5      142.4      84.0      20      210.2      141.4
4      6      69.6      35.0      22      141.6     87
4      7      67.4      41.2      20      59.4      73
4      8      180.0      106.4      22      182.2      110
4      9      50.2      28.2      22      121.8      69.8
4      10      33.0      18.4      22      125.2      83.4
4      11      226.2      132.4      30      0      0
  ;
proc glm data=test;
class  block treat;
model  a b c d e= block treat;
run;
proc glm noprint data=test;
class block treat;
model   a b c d e=
      block treat;
output out=test2
         p=pa pb pc pd pe
         r=ra rb rc rd re;
run;
proc plot data=test2;
plot    ra*pa    rb*pb  rc*pc   rd*pd     re*pe;
Title "residual graph";
run;
proc sort data=test2;
by block treat a b c d e pa pb pc pd pe;
run;
proc print data=test2;
by block treat a b c d e pa pb pc pd pe;
run;



