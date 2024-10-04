library(fpp)
library(fpp2)

#Annual bituminous coal production in the USA: 1920–1968.
bicoal
help(bicoal)
autoplot(bicoal)

#Price of chicken in US (constant dollars): 1924–1993.
chicken
help(chicken)
autoplot(chicken)

#Monthly total of people on unemployment benefits in Australia (Jan 1965 – Jul 1992).
dole
help(dole)
autoplot(dole)
frequency(dole)

#Monthly accidental deaths in USA.
usdeaths
help(usdeaths)
autoplot(usdeaths)

#Annual number of lynx trapped in McKenzie river district of northwest Canada: 1821–1934.
lynx
help(lynx)
autoplot(lynx)

#Closing stock prices of GOOG from the NASDAQ exchange, for 1000 consecutive trading days between 25 February 2013 and 13 February 2017. Adjusted for splits. goog200 contains the first 200 observations from goog.
goog
help(goog)
autoplot(goog)

autoplot(goog)+
  ggtitle("Daily closing stock prices of Google Inc")+
  xlab("1000 consecutive trading days between 25 February 2013 and 13 February 2017")+
  ylab("Closing stock prices of GOOG from the NASDAQ exchange")

#Industry sales for printing and writing paper (in thousands of French francs): Jan 1963 – Dec 1972.
writing
help(writing)
autoplot(writing)

#Monthly sales for a souvenir shop on the wharf at a beach resort town in Queensland, Australia.
fancy
help(fancy)
autoplot(fancy)

#Monthly anti-diabetic drug sales in Australia from 1992 to 2008.
a10
help(a10)
autoplot(a10)

#Monthly cortecosteroid drug sales in Australia from 1992 to 2008.
h02
help(h02)
autoplot(h02)

ggseasonplot(writing)
ggsubseriesplot(writing)

ggseasonplot(fancy)
ggsubseriesplot(fancy)
a10
ggseasonplot(a10)
ggsubseriesplot(a10)

ggseasonplot(h02)
ggsubseriesplot(h02)
