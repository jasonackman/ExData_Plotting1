library(data.table)

# Acquire data
if (!file.exists("data")) {
    dir.create("data")
}

zipfile <- "./data/exdata-data-household_power_consumption.zip"
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

download.file(url = fileUrl,
              destfile = zipfile,
              method = "curl")

unzip(zipfile = zipfile,
      exdir = "data")


# Read in data
data <- fread(input = "./data/household_power_consumption.txt",
              sep = ";",
              na.strings = c("?"))

# Subset data
data <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
data <- as.data.frame(data)

# Garbage Collect
gc()

# Data conversion
data$DateTime <- strptime(paste(data$Date, data$Time, sep = " "), format = "%e/%m/%Y %H:%M:%S")
data$Date <- strptime(data$Date, format = "%e/%m/%Y")
data$Time <- strptime(data$Time, format = "%H:%M:%S")
data$Global_active_power <- as.numeric(data$Global_active_power)
data$Global_reactive_power <- as.numeric(data$Global_reactive_power)
data$Voltage <- as.numeric(data$Voltage)
data$Global_intensity <- as.numeric(data$Global_intensity)
data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)
data$Sub_metering_2 <- as.numeric(data$Sub_metering_2)
data$Sub_metering_3 <- as.numeric(data$Sub_metering_3)