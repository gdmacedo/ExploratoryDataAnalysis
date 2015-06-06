#==============================================================
# Johns Hopkins University            Exploratory Data Analysis
#
# Macedo, Glener Diniz                         São Paulo/Brasil
#--------------------------------------------------------------
# Global Active Power: household global minute-averaged active 
#                      power (in kilowatt) 
# data from the dates: 2007-02-01 and 2007-02-02.
#==============================================================
#          Open and read the .txt file:
data_2 <- read.csv("household_power_consumption.txt", 
                    header=T, 
                    sep=';', 
                    na.strings="?", 
                    nrows=2075259, 
                    check.names=F, 
                    stringsAsFactors=F, 
                    comment.char="", 
                    quote='\"')
data_2$Date <- as.Date(
                       data_2$Date, 
                       format="%d/%m/%Y"
                       )

## Subsetting the data
data <- subset(
               data_2, 
               subset=(
                       Date >= "2007-02-01" & 
                       Date <= "2007-02-02"
                      )
               )
rm(data_2)

## Converting dates
dt_Time <- paste(
                 as.Date(data$Date), 
                 data$Time
                )
data$dt_Time <- as.POSIXct(dt_Time)

# Generating Plot 2
  plot(
       data$Global_active_power~data$dt_Time, 
       type="l",
       ylab="Global Active Power (kilowatts)", 
       xlab=""
      )

# Saving to file
  dev.copy(
           png, 
           file="plot2.png", 
           height=480, 
           width=480
          )
  dev.off()
#==============================================================
# plot.............: Generic function for plotting of R objects
#             
#
#==============================================================
