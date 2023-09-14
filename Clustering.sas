/* Create a dataset */

data mydata;
   input var1 var2 var3;
   datalines;
12 13 15
11 12 16
55 57 60
150 155 157
149 154 158
;
/* Perform hierarchical clustering */
proc fastclus data=mydata outtree=cluster_tree maxclusters=3 maxiter=100;
   var var1 var2 var3;
run;

/* View the clustering results */
proc print data=cluster_tree;
run;
