# Author: Ahmad Kamil Abdul Hamid
# Submission date: 2016-08-21
# Part 2 of 5: To plot plot1.png


if(!file.exists("data.zip")) {
    print ("Source file not available.. need to download and preprocess..")
    source("downloaddatafile.R")
       
} else {
	print ("source file already available..")
}

plot1 <- function() {
    hist(df$Global_active_power, main = paste("Global Active Power"), col="red", xlab="Global Active Power (kilowatts)")
    dev.copy(png, file="plot1.png", width=480, height=480)
    dev.off()
    cat("Plot1.png has been saved in", getwd())
}
plot1()
