# Author: Ahmad Kamil Abdul Hamid
# Submission date: 2016-08-20
# Part 4 of 5: To plot plot3.png


if(!file.exists("data.zip")) {
    print ("Source file not available.. need to download and preprocess..")
    source("downloaddatafile.R")
       
} else {
	print ("source file already available..")
}



plot3 <- function() {
        plot(df$timestamp,df$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
        lines(df$timestamp,df$Sub_metering_2,col="red")
        lines(df$timestamp,df$Sub_metering_3,col="blue")
        legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))
        dev.copy(png, file="plot3.png", width=480, height=480)
        dev.off()
        cat("plot3.png has been saved in", getwd())
}
plot3()
