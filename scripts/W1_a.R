?VADeaths
class(VADeaths)
help(class)
va_df <- as.data.frame(VADeaths)
class(va_df)
View(va_df)
va_df$AgeGroups <- row.names(VADeaths)
View(va_df)
help("reshape")
va_long = reshape(va_df,
                  direction = "long",
                  varying = colnames(VADeaths),
                  v.names = "DeathRate",
                  timevar = "Population",
                  times = colnames(VADeaths))
View(va_long)
png("Basic_hist.png",)
hist(va_long$DeathRate)

hist(va_long$DeathRate,
     main= "Basic Histogram of VA Deathrates",
     xlab = "VA Deathrates",
     ylab = "Frequency",
     labels = TRUE)

hist(va_long$DeathRate,
     main= "Basic Histogram of VA Deathrates",
     xlab = "VA Deathrates",
     ylab = "Frequency",
     labels = TRUE,
     col = "pink",
     border = "blue")

hist(va_long$DeathRate,
     breaks = 5,
     main= "Basic Histogram of VA Deathrates",
     xlab = "VA Deathrates",
     ylab = "Frequency",
     labels = TRUE,
     col = "pink",
     border = "purple")
# Data Asthetics Geometry Facets Statistics Coordinates Themes Labels
library(ggplot2)
ggplot(
  va_long,
  aes(x=DeathRate)
)+
  geom_histogram(
    bins=10,
    fill="gold",
    col="red")+
  labs(
    title="GGPLOT-Histogram",
    y = "Frequency")+
  # facet_wrap(~Population)
  theme_dark()
