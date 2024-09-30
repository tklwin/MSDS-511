# MSDS-511
Time-Series Data Analysis and Forecasting for Business and Finance

![image.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/2349f708-f191-4568-9851-dce4745ac143/9281ced6-a145-4ea9-9a06-8bd695fdebc9/image.png)

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
    
    ![image.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/2349f708-f191-4568-9851-dce4745ac143/2f0fad1c-2fa8-4c46-9b26-e398c91562a5/image.png)
