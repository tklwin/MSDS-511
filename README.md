# MSDS-511
Time-Series Data Analysis and Forecasting for Business and Finance

### Question
The `plastics` data set consists of the monthly sales (in thousands) of product A for a plastics manufacturer for five years.

1. Plot the time series of sales of product A. Can you identify seasonal fluctuations and/or a trend-cycle?

  ```r
library(seasonal)
library(fpp)
library(fpp2)
library(forecast)


#Monthly sales of product A for a plastics manufacturer
autoplot(plastics) + xlab("Year") + ylab("Sales") +
  ggtitle("Monthly sales of product A for a plastics manufacturer")
  ```
![image](https://github.com/user-attachments/assets/9f3bf92e-5e95-4d65-ab26-dd5123a75569)

>>[Answer] Yes, there is seasonal fluctuations.

2. Use a classical multiplicative decomposition to calculate the trend-cycle and seasonal indices.

  ```r
  #classical decomposition on sales of product A for a plastics manufacturer time series data
plastics %>% decompose(type="multiplicative") %>%
  autoplot() + xlab("Year") +
  ggtitle("Classical multiplicative decomposition of sales of product A for a plastic manufacturer")
  ```
![image](https://github.com/user-attachments/assets/7c2785ca-1786-44f2-b6e0-5e5d846854cc)

3. Do the results support the graphical interpretation from part a?

>>[Answer] Yes, the results support the graphical interpretation from part a.


4. Compute and plot the seasonally adjusted data.
```r
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

```
![image](https://github.com/user-attachments/assets/4678972e-59e4-43d1-a48c-c2638e826a2c)

5. Change one observation to be an outlier (e.g., add 500 to one observation), and recompute the seasonally adjusted data. What is the effect of the outlier?

6. Does it make any difference if the outlier is near the end rather than in the middle of the time series?
