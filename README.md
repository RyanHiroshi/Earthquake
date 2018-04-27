# Earthquake
This project mainly purposed to predict earthquake magnitude based on earthquake depth. <br />

# Introduction
This project will predict earthquake magnitude based on earthquake depth by using Linear Regression. <br/>
These project can also help you to view earthquake position with shiny. <br/>
shiny::runGitHub("RyanHiroshi/Earthquake") #Type in Rstudio to run <br />
Hover to see the earthquake magnitude. <br />
<br />
We are trying to make the linear regression in the shiny but the project haven't finished it yet.


# Linear Regression
The main purpose of linear regression is to model a continuous variable Y as a mathematical funtion of one or more X variable(s). The Linear Regression itself establish a linear relationship between the predictor variable and
the response variable so we can use the formula to estimate the value of the response when we can only use the predictors (Xs) values that known.<br/><br/>

The main reason we use Linear Regression is because with Linear Regression it have function to generate all the datas that exist into the graph that we made. The formulas itself will review the value of the data and will calculate the prediction accuracy in the future.<br/><br/>

You can visit this link for further information http://r-statistics.co/Linear-Regression.html.


# DAAG (Data Analisys and Graphic)
In this Project we are using Daag to demonstrate probility of a real effect changes with changes in the prior proportion of real effects. We use the this function (DAAG) to make the data itself can generated into another visual (which is the map).  <br/><br/>
You can visit this link for further information https://cran.r-project.org/web/packages/DAAG/DAAG.pdf.


#Leaflet
We mainly use the leaflet to show the magnitude data on the map shown in the screenshot section. Leaflet is one of the most popular open-source JavaScript libraries for interactive maps. We use leaflet because of its portability and stable in any kind of code. And it also powerful and convenient feature to integrate with Shiny applications.


# R packages used
shiny <br />
shinydashboard <br />
leaflet <br />
DAAG <br/>


# Code Explaination
![1524796529094](https://user-images.githubusercontent.com/35421157/39341813-1ff89d4e-49ff-11e8-9726-70584e8e72bb.jpg)<br/>
In the code shown, we train and test the data. <br/>
So 80% of our initial dataset is used as the training or base of the Linear Regression model.<br/><br/>

![1524793665925](https://user-images.githubusercontent.com/35421157/39340325-bd11ad26-49f7-11e8-806e-887ee787eb0e.jpg)<br/>
in the code shown, we train and test the data. The reason why we use linear regression is. <br/><br/>

![1524794380923](https://user-images.githubusercontent.com/35421157/39340629-60a85a88-49f9-11e8-9e68-1511fa01ed5f.jpg)<br/>
In the code shown, we show the prediction of magnitude and the actual earthquake magnitude.<br/>
The prediction is based on the previously made linear regression model tested on the remaining 20% of the data.<br/><br/>

![1524797528142](https://user-images.githubusercontent.com/35421157/39342137-b44542f8-4a00-11e8-9c79-f968a7054611.jpg)<br/>
To see the prediction ratio. Our Project prediction ratio is 92%.<br/>
For further info you can visit this link https://stats.stackexchange.com/questions/287143/meaning-of-min-max-accuracy-of-a-regression-model.<br/><br/>

![1524798456020](https://user-images.githubusercontent.com/35421157/39342590-de8006c8-4a02-11e8-940a-7301f338d713.jpg)<br/>
this is our DAAG used for data analisys and displaying it.<br/><br/>


# Earthquake data source
https://earthquake.usgs.gov/earthquakes/search/ <br/>


# Screenshot
![1524782310297](https://user-images.githubusercontent.com/35421157/39335436-4332048e-49dd-11e8-98f1-d6155403e851.jpg)

