#Load the data
data(iris)
# Understand the Data
str(iris)
View(iris)
class(iris)
?iris
#Basic Box Plot
boxplot(iris$Sepal.Length)
#Add title and labels
boxplot(iris$Sepal.Length,
        main="Box plot for Sepal Length",
        ylab = "Sepal_Length",
        col='skyblue')
#Grouped Box plot (by Species)
boxplot(Sepal.Length~Species,
        data = iris,
        main ="Sepal.Length by Species",
        xlab="Species",
        ylab="Sepal Length",
        col=c('pink','green','skyblue'))
# Multivariable Box plot
boxplot(iris$Sepal.Length,
        main="Box plot for Sepal Length",
        ylab="Sepal_Length",
        col='skyblue')
        boxplot(iris[1:4],
                main="Multi Variable Box Plot",
                col=c('pink','green','skyblue','orange'))
# Using Custom color Palette
species_colors<-c("setosa"="red",
                  "versicolor="steelblue",
                  "virginica"="green")
boxplot(
    Sepal.Length~Species,
    data = iris,
    col=
library(ggplot2)
ggplot(iris,
    aes(x=Species,y=Sepal.Length))+
  geom_boxplot()
  
# Coloured box plot by species
ggplot(iris,aes(x=Species,y=Sepal.Length,fill=Species))+
  geom_boxplot()+
  theme_minimal()
  
#Using Manual Color Palette
ggplot(iris,aes(x=Species,y=Sepal.Length,fill=Species))+
geom_boxplot()
scale_fill_manual(
  values = c(
  "setosa"="red",
  "vercicolor"="steelblue",
  "virginica"="green"
  )
)
)