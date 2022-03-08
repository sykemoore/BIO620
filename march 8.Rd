Author: Sylvester Anosike, Date: March 08, 2022; Purpose: To generate box plot for raw microarray datasets

setwd("/Users/sykemoore/desktop/gds223")

library(affy)

eset <- ReadAffy()

eset_Norm <- rma(eset)

rma <- exprs(eset_Norm)

Treatment <-apply(rma[,c("GSM4843.CEL", "GSM4844.CEL")],1,log)

control <-apply(rma[,c("GSM4845.CEL", "GSM4846.CEL","GSM4847.CEL")],1,log)

# TRANSPOSE: Switch columns to rows and rows to columns!!

# Perform transpose so that samples are your columns and genes are your rows!!

Treatment_T <- t(Treatment)

Control_T <- t(control)

# To make fold changes, we first need to take mean/average for treatment and the control samples

Treatment_T_Mean <- rowMeans(Treatment_T)

Control_T_Mean <- rowMeans(Control_T)

# Get the subtraction fold change for treatment over control

Fold_Change <- Treatment_T_Mean-Control_T_Mean