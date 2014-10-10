tabAll <- read.table("C:/Users/Leonardo/Downloads/household_power_consumption.txt", header = TRUE,sep=";", nrows=70000)
data<-tabAll[66637:69516,]
y<-as.Date(data$Date,"%d/%m/%Y")
x<-paste(y,data$Time)
y<-as.POSIXct(x)

mysub1<-as.numeric(as.character(data[,7]))
plot(y,mysub1,type="l",ylab="Energy sub metering",xlab="")
mysub2<-as.numeric(as.character(data[,8]))
mysub3<-as.numeric(as.character(data[,9]))

lines(y,mysub2,type="l",col="red")
lines(y,mysub3,type="l",col="blue")



legend("topright",18,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.5,lty=c(1,1,1), lwd=c(2.5,2.5,2.5),col=c("black","blue","red"))
##idea from http://www.r-bloggers.com/adding-a-legend-to-a-plot/

dev.copy(png,file="plot3.png")
dev.off()
