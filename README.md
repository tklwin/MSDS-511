# MSDS-511
Time-Series Data Analysis and Forecasting for Business and Finance

![image](https://github.com/user-attachments/assets/793e0ac6-28e1-4a1e-bc76-f67142be180f)


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
   ![image](https://github.com/user-attachments/assets/7f95fa21-1567-47a2-bd49-65b887a8890f)

2. Use a classical multiplicative decomposition to calculate the trend-cycle and seasonal indices.
  ```r
  help("plastics")
# Perform STL decomposition
fit <- stl(plastics, s.window = "periodic")
```
### Header3


`rm /usr/tklwin`

<<<<<<< HEAD

## heading 2

```
  chmod +rw test.sh
  ls -la
  ```

  ### heading 3
=======
`test` use git stest

>>>>>>> 569918d06d13c88eebe11bb3f277ffdf073c6787
