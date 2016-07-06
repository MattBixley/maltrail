library(scales)  ## package for plot transparency (alpha function)
library(shiny) ## want to make a shiny ap

## read some data
dat <- read.table(file="clipboard",header=T,fill=T,na.strings = "")
head(dat)
save(dat, file = "maltrail.RData")

malplot <- function(dat,size=75){
  attach(dat)
  plot(dist,ascent,pch=19,las=1,
       
       ## set size of circle proportional to hardness/adjustment factor
       cex=adj/(100-size),
       ylim=c(-1000,max(ascent)+2000),
       main="Mal Plot",xlab="Distance (km)",ylab="Vertical (m)",
       
       ## set colour to grey scale based on amount of trail and make transparent
       col=alpha(paste0("grey",90-floor((easy+tech+notrail)*0.75)),0.7)
       
       ## want to add some annotations maybe set a function default of 5
  )
  
  
}

malplot(dat,85)

## added a user input
points(col=alpha("red",0.75),50,2000,cex=200/20,pch=19)

