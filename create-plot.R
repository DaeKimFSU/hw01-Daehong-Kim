# create-plot.R: minimal R code to make a plot

# load packages
library(tidyverse)

# create variables x and y
x <- c(1, 2, 4, 6, 3)
y <- c(6, 2, 3, 1, 4)

# plot x and y
qplot(x, y)

# save plot in png format
ggsave("plot.png", height = 3, width = 4)