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
ggplot(popcolleges, aes(colleges, population_millions_est_2019)) +
  +     geom_smooth(method="loess", se=F) +
  +     labs(y="Population (in millions)",
             +          x="Number of Colleges",
             +          title="State Population vs. Number of Colleges",
             +          caption = "Source: US College and University Directory (univsearch.com) 
+        and Wikipedia") +
  +     theme(legend.title = element_text(size=8)) +
  +     theme(legend.text = element_text(size=8)) +
  +     theme(legend.title = element_blank()) +
  +     theme(plot.caption = element_text(size = 6, face = "italic")) +
  +     theme(plot.caption = element_text(hjust = 2.5))