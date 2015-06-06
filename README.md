---
title: "Exploratory Data Analysis"
author: "Macedo, Glener Diniz"
date: "Saturday, June 07, 2015"
output: html_document
---

This assignment uses data from the UC Irvine Machine Learning Repository, a popular repository 

for machine learning datasets. In particular, we will be using the "Individual household 

electric power consumption Data Set".

As descrições seguintes são das nove variáveis no conjunto de dados são obitidas a partir do web 

site da UCI.

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) 

</li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) 

</li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) 

</li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It 

corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates 

are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It 

corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator 

and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It 

corresponds to an electric water-heater and an air-conditioner.</li>
</ol>


When loading the dataset into R, please consider the following:

* The dataset has 2,075,259 records and 9 fields. First
calculate a rough estimate of how much memory the dataset will require
in memory before reading into R. Make sure your computer has enough
memory (most modern computers should be fine).

* We will only be using data from the dates 2007-02-01 and
2007-02-02. One alternative is to read the data from just those dates
rather than reading in the entire dataset and subsetting to those
dates.

For each plot you should

* Construct the plot and save it to a PNG file with a width of 480
pixels and a height of 480 pixels.

* Name each of the plot files as `plot1.png`, `plot2.png`, etc.

* Create a separate R code file (`plot1.R`, `plot2.R`, etc.) that
constructs the corresponding plot, i.e. code in `plot1.R` constructs
the `plot1.png` plot. Your code file **should include code for reading
the data** so that the plot can be fully reproduced. You should also
include the code that creates the PNG file.

* Add the PNG file and R code file to your git repository

When you are finished with the assignment, push your git repository to
GitHub so that the GitHub version of your repository is up to
date. There should be four PNG files and four R code files.

---

