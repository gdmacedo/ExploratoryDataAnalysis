#==============================================================
# Johns Hopkins University            Exploratory Data Analysis
#
# Macedo, Glener Diniz                         São Paulo/Brasil
#                                                    2015.06.07   
#--------------------------------------------------------------
# Global Active Power: household global minute-averaged active 
#                      power (in kilowatt) 
# data from the dates: 2007-02-01 and 2007-02-02.
#==============================================================
#          Open and read the .txt file:
data_1 <- read.csv(
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
data_1$Date <- as.Date(
                       data_1$Date, 
                       format="%d/%m/%Y"
                      )

## Subsetting the data
   data <- subset(
                  data_1, 
                  subset=(
                          Date >= "2007-02-01" & 
                          Date <= "2007-02-02"
                         )
                 )
   rm(data_1)

## Converting dates
   dt_Time <- paste(
                    as.Date(data$Date), 
                    data$Time
                   )
   data$dt_Time <- as.POSIXct(dt_Time)

# Generating Plot 1
  hist(rd_table$Global_active_power, 
       col = "red", 
       border = "black", 
       main = paste("Global Active Power"),
       xlab = "Global Active Power (kilowatts)"
      )

# Saving to file
  dev.copy(
           png, 
           file="plot1.png", 
           height=480, 
           width=480
          )
  dev.off()
#==============================================================
# Histograms: The generic function hist computes a histogram of
#             the given data values.
#
#==============================================================
