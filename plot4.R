tabAll <- read.table("C:/Users/Leonardo/Downloads/household_power_consumption.txt", header = TRUE,sep=";", nrows=70000)
data<-tabAll[66637:69516,]
myGAP<-as.numeric(as.character(data[,3]))
y<-as.Date(data$Date,"%d/%m/%Y")
x<-paste(y,data$Time)
y<-as.POSIXct(x)
mysub1<-as.numeric(as.character(data[,7]))
mysub2<-as.numeric(as.character(data[,8]))
mysub3<-as.numeric(as.character(data[,9]))
myVoltage<-as.numeric(as.character(data[,5]))
myGRP<-as.numeric(as.character(data[,4]))
library(datasets)
par(mfrow=c(2,2))
plot(y,myGAP,type="l",ylab="Global Active Power",xlab="")
plot(y,myVoltage,type="l",ylab="Voltage",xlab="")
plot(y,mysub1,type="l",ylab="Energy sub metering",xlab="")
lines(y,mysub2,type="l",col="red")
lines(y,mysub3,type="l",col="blue")

legend("topright",9,c("Sub_metering 1","Sub_metering 2","Sub_metering 3"),lty=c(1,1,1), lwd=c(2.5,2.5,2.5),cex=0.25,col=c("black","blue","red"))
##idea from http://www.r-bloggers.com/adding-a-legend-to-a-plot/
plot(y,myGRP,type="l",ylab="Global_reactive_power",xlab="")

dev.copy(png,file="plot4.png")
dev.off()



