data(iris)
str(iris)
View(iris)

plot(iris$Sepal.Length,iris$Sepal.Width)
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  main="Sepal Length Vs Sepal Width",
  xlab="Sepal Length(cm)",
  ylab="Sepal Width(cm)",
  col = "blue"
  pch = 16
)
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  col = as.numeric(iris$Species),
  pch = 16,
  main = "Sepal Dimensions by Species"
)
legend(
  "topright",
  legend = levels(iris)
)
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  col = as.numeric(iris$Species),
  pch = 16,
  cex = iris$Petal.Length,
  main = "Multivariate Scatter plot(color+size)"
)
pairs(
  iris[,1:4],
  col=as.numeric(iris.Species)
  pch=16,
  main = "Scatter Plot Matrix of Iris Dataset"
)
ggplot(
  iris,
  aes(
    x=Sepal.Length,
    y=Sepal.Width,
    color=Species
    size=Petal.Length
  )
)+
  geom_point(alpha=0.7
             theme_minimal()
             )
ggplot(iris,aes(x=))