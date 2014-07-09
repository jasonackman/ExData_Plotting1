source("loadData.R")

par(mfcol = c(1, 1))

# Perform plot
plot(x = data$DateTime,
     y = data$Global_active_power,
     xlab = "",
     ylab = "Global Active Power (kilowatts)",
     type = "n")

lines(x = data$DateTime,
      y = data$Global_active_power)

# Save to png
dev.copy(png,
         file = "plot2.png",
         width = 480,
         height = 480)
dev.off()
