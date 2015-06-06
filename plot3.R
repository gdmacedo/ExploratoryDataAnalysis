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
data_3 <- read.csv(
                   "household_power_consumption.txt", 
                    header=T, 
                    sep=';', 
                    na.strings="?", 
                    nrows=2075259, 
                    check.names=F, 
                    stringsAsFactors=F, 
                    comment.char="", 
                    quote='\"'
                   )
data_3$Date <- as.Date(
                       data_3$Date, 
                       format="%d/%m/%Y"
                      )

# Subsetting the data
  data <- subset(
                 data_3, 
                 subset=(
                         Date >= "2007-02-01" & # Data inicial
                         Date <= "2007-02-02"   # Data final
                        )
                )
  rm(data_3)

# Converting dates
datetime <- paste(
                  as.Date(data$Date),
                  data$Time
                  )

data$Datetime <- as.POSIXct(datetime)

# Plot 3
with(data, {
     plot(
          Sub_metering_1~Datetime, 
          type="l",
          ylab="Global Active Power (kilowatts)", 
          xlab=""
         )
  
     lines(
           Sub_metering_2~Datetime,
           col='Red'
          )
  
     lines(
           Sub_metering_3~Datetime,
           col='Blue'
          )
})
legend(
       "topright", 
       col=c(
             "black", 
             "red", 
             "blue"
            ), 
       lty=1, 
       lwd=2, 
       legend=c(
                "Sub_metering_1", 
                "Sub_metering_2", 
                "Sub_metering_3")
               )

# Saving to file
  dev.copy(
           png, 
           file="plot3.png", 
           height=480, 
           width=480
          )
  
  dev.off()
#==============================================================
# plot.............: Generic function for plotting of R objects
#             
#
#==============================================================
