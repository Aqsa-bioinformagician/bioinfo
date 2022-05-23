library(plotrix)
library(colorspace)
library(RColorBrewer)
slices <- c(0.8,
39.8,
1.8,
1.7,
10.1,
1.4,
1.7,
4.1,
0.6,
16.4,
21.5
)
lbls <- c("Staphylococcales",
"Lactobacillales",
"Bacillales",
"Bacteroidales",
"Burkholderiales",
"Enterobacterales",
"Chitinophagales",
"Pseudomonadales",
"Selenomonadales",
"Xanthomonadales",
"Other")
pielabels <- sprintf("%s = %3.1f%s",lbls,
100*slices/sum(slices), "%")

tiff("Plot3.tif", width = 6, height = 4, units = 'in', res = 600 )

pie(slices,labels=NA,
clockwise=TRUE,
col=brewer.pal(12,"Set3"),
border="white",
radius=0.7,
cex=0.8,
   main="Order in Untreated Samples")
legend(.7, .8,legend=pielabels,bty="n",cex = 0.5,
fill=brewer.pal(12,"Set3"))

dev.off()
