tabAll <- read.table("C:/Users/Leonardo/Downloads/household_power_consumption.txt", header = TRUE,sep=";", nrows=70000)
data<-tabAll[66637:69516,]
myGAP<-as.numeric(as.character(data[,3]))
y<-as.Date(data$Date,"%d/%m/%Y")
x<-paste(y,data$Time)
y<-as.POSIXct(x)

library(datasets)
plot(y,myGAP,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.copy(png,file="plot2.png")
dev.off()
