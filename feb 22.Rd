Author: Sylvester Anosike, Date: Feb 22, 2022; Purpose: To generate box plot for raw microarray datasets

#set the working directory to your .CEL file folder
setwd("/Users/sykemoore/desktop/gds223")

#load package affy
library(affy)

#Reading the .CEL files
eset <- ReadAffy()

# Box plots for raw datasets
boxplot(eset)

#Perform RMA normalization 
eset_Norm <- rma(eset)

# Box plot for normalized datasets
rma <- exprs(eset_Norm)
boxplot(rma)