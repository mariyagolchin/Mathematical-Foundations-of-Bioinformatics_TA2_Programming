rm(list=ls())
library(dichromat)

heat_map <- function(m){
  Xlength<- ncol(m)
  Ylength <- nrow(m)

  plot(c(0,Xlength+3),c(0,Ylength+3),type="n",axes="FALSE",ann="FALSE")
  colfun= colorRampPalette(c("red","yellow"))
  colors=colfun(101)
  maxColorSize=100
  z=1
  for(i in Ylength:1){
    for( j in 1:Xlength){
          x=m[z,j]
          print(paste("x=>", x))
          x_coord=c(j,j+1,j+1,j)
          print(paste("x_coord=>",x_coord))
          y_coord=c(i,i,i-1,i-1)
          print(paste("y_coord=>",y_coord))
          polygon(x_coord,y_coord,col=colors[round(x*maxColorSize)+1])
          # text(x_coord,y_coord,lables=i*j)
    }
    z=z+1
  }}

row_num=4
col_num=5
ml= matrix(runif(row_num* col_num),row_num,col_num)
heat_map(ml)
