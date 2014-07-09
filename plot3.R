source("loadData.R")

par(mfcol = c(1, 1))

# Perform plot

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
       lwd = 0)

# Save to png
dev.copy(png,
         file = "plot3.png",
         width = 480,
         height = 480)
dev.off()
