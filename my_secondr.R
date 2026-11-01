install.packages('palmerpenguins')
library('palmerpenguins')

install.packages('ggplot2')
library('ggplot2')

install.packages('tidyverse')
library('tidyverse')

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(color=species,shape=species))

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(color=species,shape=species))+ facet_wrap("species") + labs(title="Palmer Pinguins: Body mass vs. Flipper length")

species <- c("adelie","chinstrap","gentoo")
View(penguins)

barplot(species)
help(barplot)
help("par")

install.packages("dplyr")
library(dplyr)

install.packages("dplyr")  # Run only once
library(dplyr)             # Run every new session

birds <- data.frame(
  bird_sp = c("sparrow","kingfisher","eagle","hummingbird",
              "sparrow","kingfisher","eagle","hummingbird",
              "sparrow","kingfisher","eagle","hummingbird"),
  wingspan = c(22, 26, 195, 8,
               24, 23, 201, 9,
               21, 25, 185, 9)
)

colnames(birds) <- c("bird_sp", "wingspan")
colnames(birds)

mean_wings <- birds 
  group_by(bird_sp) 
  summarise(mean_wingspan = mean(wingspan))

barplot(
  mean_wings$mean_wingspan,
  names.arg = mean_wings$bird_sp,
  xlab = "Bird Species",
  ylab = "Mean Wingspan",
  col = "lightblue",
  main = "Mean Wingspan of Bird Species"
)

