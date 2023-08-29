data test;
input row column treat $ A B;
datalines;
1 1 Z0N1 0.424 0.593
1 2 Z0N2 0.481 0.593
1 3 Z0N3 0.452 0.537
2 1 Z1N1 0.649 0.524
2 2 Z1N2 0.615 0.581
2 3 Z1N3 0.706 0.706
3 1 Z2N1 0.681 0.649
3 2 Z2N2 0.537 0.818
3 3 Z2N3 0.693 0.818
4 1 Z3N1 0.756 0.637
4 2 Z3N2 0.724 0.712
4 3 Z3N3 0.793 0.824
;
run;

proc glm data=test;
class row column treat;
model A B = row column treat;
run;
