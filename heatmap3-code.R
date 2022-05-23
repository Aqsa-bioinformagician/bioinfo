library("pheatmap")
raw.data<- read.csv("last-final.csv",header=T)
x <- data.matrix(raw.data[1:54,2:11])
rnames <- raw.data[1:54,1]
row.names(x) <- rnames

display.brewer.all()

###Use an RColorBrewer color palette.

my_colors = brewer.pal(n = 11, name = "RdBu")
my_colors = colorRampPalette(my_colors)(50)
my_colors = rev(my_colors)
my_colors

my_heatmap <- pheatmap(x, scale = "row",
         color = my_colors,
         border_color = NA,
         fontsize_row = 6,
         fontsize_col = 7)

save_pheatmap_png <- function(x, filename, width=1200, height=1000, res = 150) {
 png(filename, width = width, height = height, res = res)
 grid::grid.newpage()
 grid::grid.draw(x$gtable)
 dev.off()
  }

save_pheatmap_png(my_heatmap, "C:/Users/Aqsa Majeed/Desktop/heatmap.png")