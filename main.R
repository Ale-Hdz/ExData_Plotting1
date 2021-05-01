library(dplyr)
library(lubridate)

wd <- "." # Your working directory
setwd(wd)

data_path <- file.path(wd, "data")
dataset_path <- file.path(data_path, "exdata_data_household_power_consumption",
                         "household_power_consumption.txt")

if(!dir.exists(data_path)) {dir.create(data_path, recursive = TRUE)}

# Load dataset
df <- read.csv(dataset_path, header = FALSE, sep = ";", na.strings = "?",
               skip = 66637, nrows = 2880)
df_names <- as.character(read.csv(dataset_path, header = FALSE, sep = ";", nrows = 1))
names(df) <- df_names
df <- df %>% 
      tbl_df %>%
      mutate(Date = as.Date(Date, format = "%d/%m/%y")) %>%
      mutate(Time = strptime(Time, format = "%T")) %>%
      mutate(Time = update(Time, year = year(Date), month = month(Date),
                           day = day(Date)))
head(df)
tail(df)

source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")
