library(ggplot2)
library(ggthemes)
library(data.table)

filepath = '~/Documents/Data Science/Coding Challenges/data/Economist_Assignment_Data.csv'

df = fread(filepath, drop = 1)

pl <- ggplot(df, aes(x = CPI, y = HDI)) + geom_point(aes(color = Region), shape = 1, size = 2.5)
pl2 <- pl + geom_smooth(method = 'lm', formula = y ~ log(x), se = FALSE, color = 'red')

pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore")

pl3 <- pl2 + geom_text(aes(label = Country), color = 'gray20', data = subset(df, Country %in% pointsToLabel, check_overlap = TRUE))

pl4 <- pl3 + theme_bw()
pl5 <- pl4 + scale_x_continuous(name = 'Corruption Perceptions Index, 2011 (10 = least corrupt)', limits = c(0.5,10.5), breaks = 1:10)
pl6 <- pl5 + scale_y_continuous(name = 'Human Development Index, 2011 (1 = best)', limits = c(0.2, 1.0))
pl7 <- pl6 + ggtitle('Corruption and Human Development')
print(pl7)


