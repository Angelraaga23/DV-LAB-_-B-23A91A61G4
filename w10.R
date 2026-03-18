# Load and understand the Dataset 
data(iris)
str(iris)
# Basic 3D ScatterPlot (scatterplot3d)
# Install Necessary packages
install.packages("scatterplot3d")
library(scatterplot3d)
#Basic 3D plot:
scatterplot3d(
  iris$Sepal.Length,
  iris$Sepal.Width,
  iris$Petal.Length)
# Labeled 3D Scatter Plot
scatterplot3d(
  iris$Sepal.Length,
  iris$Sepal.Width,
  iris$Petal.Length,
  main="3D Scatter Plot of Iris Data",
  xlab="Sepal Length",
  ylab="Sepal Width",
  zlab="Petal Length",
  pch = 16)
# Coloured 3D Scatter Plot by Species
colors<- as.numeric(iris$Sepal.Length,
                    iris$Sepal.Width,
                    iris$Petal.Length,
                    color=colors,
                    pch = 16,
                    main = "3D Scatter Plot by Species"
                    )
legend(
  "topright",
  legend=levels(iris$Species),
  col=1:3,
  pch=16
) #Now species clusters become visible.
#3D Plot using `cloud()` (Lattice) 
# Load lattice package:
library(lattice)
# Basic 3D cloud plot:
cloud(
  Petal.Length ~ Sepal.Length*Sepal.Width,
  data = iris,
  groups = Species,
  auto.key = TRUE,
  main = "3D Cloud Plot of Iris Data"
)

