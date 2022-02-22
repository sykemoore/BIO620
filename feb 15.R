Author: Sylvester Anosike, Date: Feb 22 2022, Purpose: To perform microarray normalization

#set the working directory to your .CEL file folder
setwd("/Users/sykemoore/desktop/gds223")

#load package affy
library(affy)

#Reading the .CEL files
eset <- ReadAffy()