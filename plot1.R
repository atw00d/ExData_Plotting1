setwd("C:/Users/commander shepard/Documents/R")
pwrconsumption<-read.table("household_power_consumption.txt",sep=";",header=T,colClasses=c(rep("character",2),rep("numeric",7)),na.strings="?")
pwrconsumption[,1]<-as.Date(as.character(pwrconsumption[,1]), format="%d/%m/%Y")
consumption<-subset(pwrconsumption, Date %in% as.Date(c("2007-02-01","2007-02-02")))
consumption[,1]<-paste(consumption[,1],consumption[,2])
consumption[,1]<-as.POSIXct(consumption[,1])
#####
hist(consumption$Global_active_power, col="red",ylab="Frequency",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.copy(png,file="plot1.png",width = 480, height = 480)
dev.off()

