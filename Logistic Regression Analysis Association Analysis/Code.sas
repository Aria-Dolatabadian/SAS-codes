libname mydata 'E:\';

data mydata.GenomicData;
  infile 'E:\SNP.txt' delimiter='09'x; /* Assuming it's tab-delimited data */
  input Individual SNP DiseaseStatus;
run;

/* Perform logistic regression for association study */
proc logistic data=mydata.GenomicData;
  model DiseaseStatus(event='1') = SNP / link=logit;
  output out=AssociationResults predicted=PredProb;
run;
