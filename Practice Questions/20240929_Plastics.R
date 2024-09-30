library(seasonal)
library(fpp)
library(fpp2)
library(forecast)


#Monthly sales of product A for a plastics manufacturer
autoplot(plastics) + xlab("Year") + ylab("Sales") +
  ggtitle("Monthly sales of product A for a plastics manufacturer")

#classical decomposition on sales of product A for a plastics manufacturer time series data
plastics %>% decompose(type="multiplicative") %>%
  autoplot() + xlab("Year") +
  ggtitle("Classical multiplicative decomposition
    of sales of product A for a plastic manufacturer")


help("plastics")
# Perform STL decomposition
fit <- stl(plastics, s.window = "periodic")


#the trend-cycle component and the seasonally adjusted data, along with the original data.
  autoplot(plastics, series="Data") +
  autolayer(trendcycle(fit), series="Trend") +
  autolayer(seasadj(fit), series="Seasonally Adjusted") +
  xlab("Year") + ylab("Plastic Sales") +
  ggtitle("Monthly sales of product A for a plastics manufacturer") +
  scale_colour_manual(values=c("gray","blue","red"),
                      breaks=c("Data","Seasonally Adjusted","Trend"))

  #add outlier to 25th observation (add 500)
  plastics_outlier<-plastics
  plastics_outlier[25]<-plastics_outlier[25]+500
  
  # Perform STL decomposition
  fit <- stl(plastics, s.window = "periodic")
  
  
  #the trend-cycle component and the seasonally adjusted data, along with the original data.
  autoplot(plastics_outlier, series="Data") +
    autolayer(trendcycle(fit), series="Trend") +
    autolayer(seasadj(fit), series="Seasonally Adjusted") +
    xlab("Year") + ylab("Plastic Sales") +
    ggtitle("Monthly sales of product A for a plastics manufacturer") +
    scale_colour_manual(values=c("gray","blue","red"),
                        breaks=c("Data","Seasonally Adjusted","Trend"))
 
  #add outlier to 55th near the end of observation (add 500)
  plastics_outlier_end<-plastics
  plastics_outlier_end[55]<-plastics_outlier[55]+500
  
  # Perform STL decomposition
  fit <- stl(plastics, s.window = "periodic")
  
  
  #the trend-cycle component and the seasonally adjusted data, along with the original data.
  autoplot(plastics_outlier_end, series="Data") +
    autolayer(trendcycle(fit), series="Trend") +
    autolayer(seasadj(fit), series="Seasonally Adjusted") +
    xlab("Year") + ylab("Plastic Sales") +
    ggtitle("Monthly sales of product A for a plastics manufacturer") +
    scale_colour_manual(values=c("gray","blue","red"),
                        breaks=c("Data","Seasonally Adjusted","Trend"))
  