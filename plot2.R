setwd("C:/Users/commander shepard/Documents/R")
pwrconsumption<-read.table("C:\\Users\\commander shepard\\Documents_for_R\\courses\\04_ExploratoryAnalysis\\course project\\household_power_consumption.txt",sep=";",header=T)
pwrconsumption[,1]<-as.Date(as.character(pwrconsumption[,1]), format="%d/%m/%Y")
consumption<-subset(pwrconsumption, Date == c("2007-02-01", "2007-02-02"))
consumption[,1]<-paste(consumption[,1],consumption[,2])
consumption[,1]<-as.POSIXct(consumption[,1])
plot(consumption[,1],y=consumption$Global_active_power,pch=".",ylab="Global Active Power (kilowatts)",xlab="",ylim=c(0,6))
lines(x=consumption[,1],y=consumption$Global_active_power)
dev.copy(png,file="plot2.png",width = 480, height = 480)
dev.off()


