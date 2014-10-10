tabAll <- read.table("C:/Users/Leonardo/Downloads/household_power_consumption.txt", header = TRUE,sep=";", nrows=70000)
data<-tabAll[66637:69516,]

myGAP<-as.numeric(as.character(data[,3]))

y<-as.Date(data$Date,"%d/%m/%Y")
x<-paste(y,data$Time)
y<-as.POSIXct(x)


library(datasets)
hist(myGAP,breaks=12,col='red',xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.copy(png,file="plot1.png")
dev.off()
