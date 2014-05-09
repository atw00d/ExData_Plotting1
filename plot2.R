setwd("C:/Users/commander shepard/Documents/R")
pwrconsumption<-read.table("household_power_consumption.txt",sep=";",header=T,colClasses=c(rep("character",2),rep("numeric",7)),na.strings="?")
pwrconsumption[,1]<-as.Date(as.character(pwrconsumption[,1]), format="%d/%m/%Y")
consumption<-subset(pwrconsumption, Date %in% as.Date(c("2007-02-01","2007-02-02")))
consumption[,1]<-paste(consumption[,1],consumption[,2])
consumption[,1]<-as.POSIXct(consumption[,1])
####
plot(consumption[,1],y=consumption$Global_active_power,pch=".",ylab="Global Active Power (kilowatts)",xlab="")
lines(x=consumption[,1],y=consumption$Global_active_power)
dev.copy(png,file="plot2.png",width = 480, height = 480)
dev.off()


