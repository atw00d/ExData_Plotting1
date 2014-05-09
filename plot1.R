setwd("C:/Users/commander shepard/Documents/R")
pwrconsumption<-read.table("C:\\Users\\commander shepard\\Documents_for_R\\courses\\04_ExploratoryAnalysis\\course project\\household_power_consumption.txt",sep=";",header=T)
pwrconsumption[,1]<-as.Date(as.character(pwrconsumption[,1]), format="%d/%m/%Y")
consumption<-subset(pwrconsumption, Date == c("2007-02-01", "2007-02-02"))
consumption[,1]<-paste(consumption[,1],consumption[,2])
consumption[,1]<-as.POSIXct(consumption[,1])
for (i in 3:9){consumption[,i]<-as.numeric(as.character(consumption[,i]))}
hist(consumption$Global_active_power, col="red",ylab="Frequency",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.copy(png,file="plot1.png",width = 480, height = 480)
dev.off()

