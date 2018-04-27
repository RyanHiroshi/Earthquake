library(shiny)
library(leaflet)
library(jsonlite)
EQ=read.csv("query (3).csv")
#Tsunami=read.csv("results (6).csv")
#EQ=read.csv("C:\\Users\\yupit\\Desktop\\It was rated\\UPH_OR_Planes-master\\query (3).csv")



#http://r-statistics.co/Linear-Regression.html
	set.seed(41718)
trainRowIndices <- sample(1:nrow(EQ), 0.8*nrow(cars))
trainingData <- EQ[trainRowIndices, ]
testData <- EQ[-trainRowIndices, ]
lmMod <- lm(mag ~ depth, data = trainingData)
magPred <- predict(lmMod, testData)
summary(lmMod)

AIC(lmMod)
actuals_preds <- data.frame(cbind(actuals=testData$dist, predicteds=magPred))  # make actuals_predicteds dataframe.
correlation_accuracy <- cor(actuals_preds)  # 82.7%
head(actuals_preds)

min_max_accuracy <- mean(apply(actuals_preds, 1, min) / apply(actuals_preds, 1, max))
mape <- mean(abs((actuals_preds$predicteds - actuals_preds$actuals))/actuals_preds$actuals)

library(DAAG)
cvResults <- suppressWarnings(CVlm(data=EQ,form.lm=mag ~ depth, m=5, dots=FALSE, seed=41718, legend.pos="topleft",  printit=FALSE, main="Small symbols are predicted values while bigger ones are actuals."));
attr(cvResults, 'ms')

shinyServer(function(input, output) {
  output$map <- renderLeaflet({
    leaflet(data = EQ[1:input$count,]) %>% addTiles() %>% 
      addMarkers(~longitude, ~latitude, popup = ~as.character(mag), label=~as.character(depth))
    })

 })
