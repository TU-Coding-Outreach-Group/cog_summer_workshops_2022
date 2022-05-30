# We can start by making sure that the pacman package is on our machine
install.packages("pacman")

# and then we can simply list our target packages with no need for quotations or anything
pacman::p_load(gganimate, htmlwidgets, naniar, plotly, RColorBrewer, tidyverse, transformr, VIM)