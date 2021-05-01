png("plot3.png")

with(df, {
  plot(Time, Sub_metering_1, type = "n", xlab = "",
       ylab = "Energy sub metering")
  lines(Time, Sub_metering_1, type = "l", col = "black")
  lines(Time, Sub_metering_2, type = "l", col = "red")
  lines(Time, Sub_metering_3, type = "l", col = "blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2",
                                "Sub_metering_3"), 
         col = c("black", "red", "blue"),lwd = c(2,2,2))
})

dev.off()
