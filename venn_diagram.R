library(VennDiagram)

data <- read.csv("Down_05.csv", header = T)

data <- read.csv("Up_1.csv", header = T)
head(data)

v.table<-venn( list(A=data[,1],B=data[,2],C=data[,3],D=data [,4],E=data [,5])) )


venn.plot <- venn.diagram(list(data[,1], data[,2] , data[,3] , data [,4] , data [,5]),
NULL, main = "Down Regulated Genes at FDR < 0.05" ,fill=c("pink", "green" ,"blue" , "yellow","white"), alpha=c(0.5,0.5,0.5,0.5,0.5), cex = 1, cat.fontface=3,
 category.names=c("edgeR" , "NOISeq", "baySeq" ,"DESeq" ,"limma"))



venn.plot <- venn.diagram(list(data[,1], data[,2] , data[,3] , data [,4]),
NULL, main = "Up Regulated Genes at FDR < 0.01" ,fill=c("pink", "green" ,"blue" , "yellow"), alpha=c(0.5,0.5,0.5,0.5), cex = 1, cat.fontface=3,
 category.names=c("edgeR" , "NOISeq", "baySeq" ,"DESeq"))



venn.plot <- venn.diagram(list(data[,1], data[,2] , data[,3] , data [,4] , data [,5]),
NULL, main = "Up Regulated Genes at FDR < 0.1" ,fill=c("pink", "green" ,"blue" , "yellow","white"), alpha=c(0.5,0.5,0.5,0.5,0.5), cex = 1, cat.fontface=3, 
 category.names=c("edgeR" , "NOISeq", "baySeq" ,"DESeq" ,"limma"))

library(VennDiagram)

data <- read.csv("Down_05.csv", header = T)
venn.plot <- venn.diagram(list(data[,1], data[,2] , data[,3] , data [,4] , data [,5]),
NULL, main = "Up Regulated Genes at FDR < 0.1" ,fill=c("pink", "green" ,"blue" , "yellow","white"), alpha=c(0.5,0.5,0.5,0.5,0.5), cex = 1, cat.fontface=3, 
 category.names=c("edgeR" , "NOISeq", "baySeq" ,"DESeq" ,"limma"))

grid.draw(venn.plot)