library(fpp)
library(seasonal)
library(fpp2)

ibmclose
help(ibmclose)
tsdisplay(ibmclose)

#Closing IBM stock price
autoplot(ibmclose)

# ACF plot
ggAcf(ibmclose)

#PACF plot
ggPacf(ibmclose)

#Total international visitors to Australia (in millions). 1980-2015.
austa
help(austa)
autoplot(austa)+
  xlab("Year 1980-2015") + ylab("international visitors to Australia (in millions)")

#using ARIMA model, fit is auto model
fit <- auto.arima(austa, seasonal=FALSE)
fit

#forecast using ARIMA
fit %>% forecast(h=10) %>% autoplot(include=80)
#checking residuals
checkresiduals(fit)

# for ARIMA(0,1,1) without drift
#fit2 <- Arima(austa, order=c(0,1,1))
#fit2
#autoplot(forecast(fit2))

# for ARIMA(0,1,1) without drift
fit2 <- Arima(austa, order=c(0,1,1))
fit2
fit2 %>% forecast(h=10) %>% autoplot(include=80)+ ggtitle("Forecast from ARIMA(0,1,1) without drift")

# for ARIMA(0,1,0) remove MA
fit3 <- Arima(austa, order=c(0,1,0))
fit3
fit3 %>% forecast(h=10) %>% autoplot(include=80)+ ggtitle("Forecast from ARIMA(0,1,0)")

# for ARIMA(2,1,3) with drift
fit4 <- Arima(austa, order=c(2,1,3), include.drift = TRUE)
fit4
fit4 %>% forecast(h=10) %>% autoplot(include=80)+ ggtitle("Forecast from ARIMA(2,1,3) with drift")


# for ARIMA(2,1,3) without constant
fit5 <- Arima(austa, order=c(2,1,3), include.constant = FALSE)
fit5
fit5 %>% forecast(h=10) %>% autoplot(include=80)+ ggtitle("Forecast from ARIMA(2,1,3) without constant")

# for ARIMA(0,0,1) with constant
fit6 <- Arima(austa, order=c(0,0,1), include.constant = TRUE)
fit6
fit6 %>% forecast(h=10) %>% autoplot(include=80)+ ggtitle("Forecast from ARIMA(0,0,1) with constant")

# for ARIMA(0,0,0) remove ma
fit7 <- Arima(austa, order=c(0,0,0), include.constant = TRUE)
fit7
fit7 %>% forecast(h=10) %>% autoplot(include=80)+ ggtitle("Forecast from ARIMA(0,0,0) remove MA")

# for ARIMA(0,2,1) with no constant
fit8 <- Arima(austa, order=c(0,2,1), include.constant = FALSE)
fit8
fit8 %>% forecast(h=10) %>% autoplot(include=80)+ ggtitle("Forecast from ARIMA(0,2,1) with no constant")

