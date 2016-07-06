library(scales)
dat <- read.table(file="clipboard",header=T,fill=T,na.strings = "")
head(dat)

attach(dat)
plot(dist,ascent,pch=19,cex=adj/20,las=1,ylim=c(-1000,max(ascent)+2000),
     main="Mal Plot",xlab="Distance (km)",ylab="Vertical (m)",
     col=alpha(paste0("grey",90-floor((easy+tech+notrail)*0.75)),0.7))
points(col=alpha("red",0.75),50,2000,cex=200/20,pch=19)

