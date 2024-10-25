library(fpp)
library(seasonal)
library(fpp2)
library(ggplot2)
library(forecast)

#a using autoplot with facets=true
advert
autoplot(facets=TRUE,advert)

#b fit regression model using tslm()
model <- tslm(sales~advert,data=advert)
summary(model)
model

#c check residual for autocorrelation
checkresiduals(model)

#d fit arima model 
model_arima<- Arima(advert[,"sales"], xreg=advert[,"advert"], order=c(0,0,0))
summary(model_arima)

#e refit using auto.arima()
model_auto_arima<-auto.arima(advert[,"sales"], xreg=advert[,"advert"])
summary(model_auto_arima)

#f check residuals of auto.arima() model
checkresiduals(model_auto_arima)

#g assum adverting budget for next 6 months, 10 unit per month
future_advert<-c(10,10,10,10,10,10)
forecast_sales<-forecast(model_auto_arima,xreg = future_advert)
autoplot(forecast_sales)
