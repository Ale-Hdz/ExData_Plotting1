png("Plot2.png")

with(df, {
  plot(Time, Global_active_power, type = "n", xlab = "", 
       ylab = "Global Active Power (kilowatts)")
  lines(Time, Global_active_power, type="l")
  })

dev.off()
