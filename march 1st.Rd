Author: Sylvester Anosike, Date: March 01, 2022; Purpose: To generate box plot for raw microarray datasets

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

head(rma)

#log base 2, or base 10, To perform log transformation do the following

Treatment <-apply(rma[,c("GSM4843.CEL", "GSM4844.CEL")],1,log)
control <-apply(rma[,c("GSM4845.CEL", "GSM4846.CEL","GSM4847.CEL")],1,log)