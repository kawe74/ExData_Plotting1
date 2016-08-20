# Author: Ahmad Kamil Abdul Hamid
# Submission date: 2016-08-20
# Part 3 of 5: To plot plot2.png


if(!file.exists("data.zip")) {
    print ("Source file not available.. need to download and preprocess..")
    source("downloaddatafile.R")
       
} else {
	print ("source file already available..")
}



plot2 <- function() {
        plot(df$timestamp,df$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
        dev.copy(png, file="plot2.png", width=480, height=480)
        dev.off()
        cat("plot2.png has been saved in", getwd())
}
plot2()
