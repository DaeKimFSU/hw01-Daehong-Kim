library(readxl)

popcolleges <- read_excel("Pop-Univ.xlsx")

ggplot(popcolleges, aes(colleges, population_millions_est_2019)) +
  geom_point(aes(shape = area_category, color = area_category)) +
  geom_smooth(method="loess", se=F) +
  labs(y="Population (in millions)",
       x="Number of Colleges",
       title="State Population vs. Number of Colleges",
       caption = "Source: US College and University Directory (univsearch.com) 
       and Wikipedia") +
  theme(legend.title = element_text(size=8)) +
  theme(legend.text = element_text(size=8)) +
  theme(legend.title = element_blank()) +
  theme(plot.caption = element_text(size = 6, face = "italic")) +
  theme(plot.caption = element_text(hjust = 2.5))
