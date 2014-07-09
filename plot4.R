source("loadData.R")

# Setup parameters for 2 x 2 plots
par(mfcol = c(2, 2))
par(cex.lab = 0.80)
par(cex.axis = 0.80)

# Perform Plot 1
plot(x = data$DateTime,
     y = data$Global_active_power,
     xlab = "",
     ylab = "Global Active Power (kilowatts)",
     type = "n")

lines(x = data$DateTime,
      y = data$Global_active_power)


# Perform Plot 2
# let's setup the basic plot info.
plot(x = data$DateTime,
     y = data$Sub_metering_1,
     xlab = "",
     ylab = "Energy sub metering",
     type = "n")

# Sub_metering_1
lines(x = data$DateTime,
      y = data$Sub_metering_1,
      col = "black")

# Sub_metering_2
lines(x = data$DateTime,
      y = data$Sub_metering_2,
      col = "red")

# Sub_metering_3
lines(x = data$DateTime,
      y = data$Sub_metering_3,
      col = "blue")

# legend
legend(x = "topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lwd = 1,
       cex = 0.50,
       bty = "n")


# Perform plot 3
plot(x = data$DateTime,
     y = data$Voltage,
     xlab = "datetime",
     ylab = "Voltage",
     type = "n")

lines(x = data$DateTime,
      y = data$Voltage)


# Perform plot 4
plot(x = data$DateTime,
     y = data$Global_reactive_power,
     xlab = "datetime",
     ylab = "Global_reactive_power",
     type = "n")

lines(x = data$DateTime,
      y = data$Global_reactive_power)

# Save to png
dev.copy(png,
         file = "plot4.png",
         width = 480,
         height = 480)
dev.off()