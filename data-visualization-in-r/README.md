# Coding Outreach Group Summer Workshop
# Data Visualization in R
06/13/2022

__**Content creator:**__ Billy Mitchell

## Description
With science communication depending increasingly upon digital spaces, the ways in which researchers can communicate their findings in presentations, posters, papers, or webpages is expanding. Animating visualizations or making their interactive can be more engaging for the audience and increase comprehension. This tutorial will provide a brief overview of the ways in which researchers can make static, basic graphs more dynamic, interactive, and interesting using basic functionality primarily with three R packages: gganimate, plotly, and shiny.     

## Prerequisites
This workshop demands that users:
1. have the R programming language downloaded, which can be accessed here:(https://archive.linux.duke.edu/cran/)
2. have the R Studio user interface downloaded, which can be accessed here:(https://www.rstudio.com/products/rstudio/download/#download)
3. have the packages listed in the following R script installed: (See index.html for instructions)
4. have a proficiency with the R programming language
5. have a basic familiarity with plotting data in R; previous primers can be accessed here: (https://github.com/TU-Coding-Outreach-Group/cog_summer_workshops_2021/tree/main/data-visualization-in-r) 

## Set Up (do before the workshop)
1. Download the R Markdown script from github
2. Download the dataset for the workshop
3. Download the relevant packages (See below)
    
## Workshop objectives:
1. Demonstrate how to generate interactive visualizations w/ ```plotly```
2. Demonstrate how to generate animated visualizations w/ ```gganimate```
3. Demonstrate how to generate reactive visualizations w/ ```shiny```

## What We Won't Cover:
We will not be covering data wrangling, or how to format the data to in way that facilitates visualization. This will be covered in a preceding workshop designed by Ginny Ulichney. We also will not be covering how to conduct statistical tests of the data that we will be visualizing. Lastly, we will not be reviewing many basic visualizations like bar graphs or regression plots that I had covered in the previous year's workshop.  

## Outline
| Section | Description | Time |
| --- | --- | --- |
| Intro | What's so special about dynamic plots? | 05 min |
| Setup | Loading packages, data, and background | 05 min |
| Section 1 | Data Distributions | 05 min |
| Section 2 | Interactive Visualizations | 10 min |
| Section 3 | Animated Visualizations | 10 min |
| Section 4 | Reactive Visualizations | 25 min |
| Conclusion | Where to go from here | 05 min |
| Q & A | --- | 15 min |

## Additional Resources
Supplemental information can be found within the [supplements folder](https://github.com/TU-Coding-Outreach-Group/cog_summer_workshops_2022/blob/main/data-visualization-in-r/Supplements/) and includes:
* A R Markdown Cheat Sheet
* A  ```ggplot2``` Cheat Sheet
* A ```gganimate``` Cheat Sheet
* A ```shiny``` Cheat Sheet
* A Basic Colors in R Guide
* A Color Brewer Palette Guide

### Packages
* ```gganimate``` - [provides tools to animate our visualizations](https://gganimate.com/)
* ```htmlwidgets``` - [creates stand-alone widgets for both interactive and reactive visualizations](https://www.htmlwidgets.org/)
* ```naniar``` - [contains a host of helpful missing data functions and visualizations](https://cran.r-project.org/web/packages/naniar/vignettes/getting-started-w-naniar.html)
* ```plotly``` - [the premier interactive graphing library for both R and python](https://plotly.com/r/)
* ```RColorBrewer``` - [provides premade palettes that are user-friendly and colorblind-friendly](https://cran.r-project.org/web/packages/RColorBrewer/index.html)
* ```shiny``` - [powerful package that will generate web applications with javascript frontends and R engines](https://shiny.rstudio.com/)
* ```tidyverse``` - [a collection of packages that are always incredibly helpful no matter what project you're working on; sometimes the only package I load (contains ggplot2](https://www.tidyverse.org/packages/)
* ```transformr``` - [necessary to animate regression lines](https://cran.r-project.org/web/packages/transformr/index.html)
* ```VIM``` - [visualization and imputation of missing data](https://cran.r-project.org/web/packages/VIM/index.html)

### Other Workshops
- COG 2021 [Data Visualization in R](https://github.com/TU-Coding-Outreach-Group/cog_summer_workshops_2021/tree/main/data-visualization-in-r) workshop by Billy Mitchell