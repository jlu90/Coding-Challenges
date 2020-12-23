library(ggplot2)
library(ggthemes)

# Define Data
df = mpg

# Histogram of HWY MPG values
pl <- ggplot(df, aes(x = hwy))
pl2 <- pl + geom_histogram(bins = 20, fill = 'red', alpha = 0.6) 
print(pl2)

# Bar Graph with Counts by Manufacturer
pl <- ggplot(df, aes(x = manufacturer))
pl2 <- pl + geom_bar((aes(fill = factor(cyl))))
print(pl2)

# Re-define Data
df = txhousing

# Create a Scatterplot of Volume vs. Sales
pl <- ggplot(df, aes(x = sales, y = volume))
pl2 <- pl + geom_point(color = 'blue', alpha = 0.3)
print(pl2 + geom_smooth(color = 'black'))


