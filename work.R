#change the file path
data1 <- read.csv(file("C:\\Users\\yupit\\Desktop\\It was rated\\ds-uph-master\\query.csv"))
# categorize
head(data1)

# view
summary(data1)
# brackets

####### Step 1

# plot
#install.packages("ggplot2")
library(ggplot2)
geom_point(1, 1, 1)
ggplot(data1, aes(x=latitude, y=longitude)) + geom_point()