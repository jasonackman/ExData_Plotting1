source("loadData.R")

par(mfcol = c(1, 1))

# Perform plot
hist(x = data$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency")


# Save to png
dev.copy(png,
         file = "plot1.png",
         width = 480,
         height = 480)
dev.off()
