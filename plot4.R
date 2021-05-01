png("plot4.png")

par(mfrow = c(2, 2))
with(df, {
  # Plot 1
  plot(Time, Global_active_power, type = "n", xlab = "",
       ylab = "Global active power")
  lines(Time, Global_active_power, type = "l", col = "black")
  # Plot 2
  plot(Time, Voltage, type = "n", xlab = "datetime",
       ylab = "Voltage")
  lines(Time, Voltage, type = "l", col = "black")
  # Plot 3
  plot(Time, Sub_metering_1, type = "n", xlab = "",
       ylab = "Energy sub metering")
  lines(Time, Sub_metering_1, type = "l", col = "black")
  lines(Time, Sub_metering_2, type = "l", col = "red")
  lines(Time, Sub_metering_3, type = "l", col = "blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2",
                                "Sub_metering_3"), 
         col = c("black", "red", "blue"),lwd = c(2,2,2))
  # Plot 4
  plot(Time, Global_reactive_power, type = "n", xlab = "datetime")
  lines(Time, Global_reactive_power, type = "l", col = "black")
})

dev.off()