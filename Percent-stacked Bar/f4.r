library(ggplot2)
setwd("C:/Users/diggers/Desktop/项目文档/ABBA/f4")
d <- read.table("data2.xls",check.names = F,header = F)
ggplot(d,aes(x=V3,y=V4,fill=V2)) + geom_bar(position="fill", stat = "identity" ,width = 0.3) + scale_y_continuous(labels = scales::percent) + facet_grid(.~V1) + theme(panel.border = element_blank(),panel.grid.minor = element_blank(),axis.line = element_line(colour = "black")) + scale_colour_manual(values =c("#ff9d72","#6155a6","#5aa469")) + theme(legend.title=element_blank(),legend.background=element_blank())