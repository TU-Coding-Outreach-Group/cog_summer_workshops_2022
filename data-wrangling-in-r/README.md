# Coding Outreach Group Summer Workshop
# Data Visualization in R
06/08/2022

__**Content creator:**__ Ginny Ulichney
__**Content editor:**__ Billy Mitchell

## Description
This workshop will cover some basic and intermediate data wrangling functions in R using the Tidyverse package (primarily tidyr and dplyr). The workshop will focus on practical and concise data organization. We will start with a walk-through of common data organization functions, discuss more efficient wrangling using piping, and finally, apply practical organization skills to some exercises. The goal of this workshop is to equip attendees with the skills to transform raw data into organized, analysis-ready data.

## Prerequisites
This workshop requires that users: 
1. have the R programming language downloaded, which can be accessed here:(<https://archive.linux.duke.edu/cran/>) 
2. have the R Studio user interface downloaded, which can be accessed here:(<https://www.rstudio.com/products/rstudio/download/#download>) 
3. have a basic familiarity with the R programming language basics, specifically (see resources below): 
  * installing packages and loading libraries 
  * [data structures and objects in R](https://swcarpentry.github.io/r-novice-inflammation/13-supp-data-structures/)  
  * basic understanding of R syntax: 
    * [codecademy R course](https://www.codecademy.com/learn/learn-r)
    * [Python and R for Data Science](https://www.anotherbookondatascience.com)
    * [R for Data Science](https://r4ds.had.co.nz)
    * [Introduction to Data Exploration and Analysis with R](https://bookdown.org/mikemahoney218/IDEAR/)

## What we won't cover
It is worth noting that this workshop will focus on wrangling data using a Tidy framework, although there are certainly other methods that can be used to achieve similar results (e.g., Base R). We also unfortunately will not have time to discuss the details of Natural Language Processing nor the other statistical analyses discussed. For example, we will discuss how to wrangle data into the format one might need to run a few basic analyses to put wrangling skills into context (t-tests and linear regression), but we will not discuss the statistical underpinnings of these analyses nor deeply unpack their results.

## Set Up (do before the workshop)
1.  Download the R-markdown script from Github
2.  Download the data used in the workshop
3.  Download the packages required for the workshop
    
## Workshop objectives:
1. To demonstrate best practice when cleaning messy raw data
2. To highlight some helpful tools R offers when analyzing data
3. To develop proficiency in conceptualizing data structure

## Outline
| Section | Description | Time |
| --- | --- | --- |
| Intro | Why is data wrangling important? | 05 min |
| Setup | Loading packages, data, and background | 05 min |
| Section 1 | Exploring, renaming, and filtering data | 15 min |
| Section 2 | Mutating data, merging dataframes, exporting data | 15 min |
| Section 3 | Application | 25 min |
| Q & A | --- | 25 min |

## Additional Resources
Supplemental information can be found within the [supplements folder](https://github.com/TU-Coding-Outreach-Group/cog_summer_workshops_2022/blob/main/data-wrangling-in-r/supplements/) and includes:
* A Base R Cheat Sheet
* A Data wrangling Cheat Sheet
* A Strings Cheat Sheet
* A ```tidyr``` Cheat Sheet

### Packages
* ```data.table``` - [for reading large data objects](https://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.html)
* ```effects``` - [helpful means of visualizing modeled data](https://cran.r-project.org/web/packages/effects/effects.pdf)
* ```lme4``` - [crucial for linear modeling](https://cran.r-project.org/web/packages/lme4/index.html)
* ```lubridate``` - [important for updating date and time strings](https://lubridate.tidyverse.org/)
* ```modelsummary``` - [important for R notebook functionality](https://vincentarelbundock.github.io/modelsummary/index.html)
* ```psych``` - [basic statistical functions](https://cran.r-project.org/web/packages/psych/index.html)
* ```qdap``` - [invovled in text analysis and text cleaning](https://cran.r-project.org/web/packages/qdap/index.html)
* ```reshape``` - [a basic data wrangling package](https://cran.r-project.org/web/packages/reshape/reshape.pdf)
* ```rJava``` - [invovled in text analysis and text cleaning](https://cran.r-project.org/web/packages/rJava/index.html)
* ```rlang``` - [a basic data wrangling package](https://rlang.r-lib.org/)
* ```skimr``` - [basic statistical functions with creative visualizations](https://cran.r-project.org/web/packages/skimr/vignettes/skimr.html)
* ```syuzhet``` - [invovled in text analysis and text cleaning](https://cran.r-project.org/web/packages/syuzhet/vignettes/syuzhet-vignette.html)
* ```tidytext``` - [invovled in text analysis and text cleaning](https://cran.r-project.org/web/packages/tidytext/vignettes/tidytext.html)
* ```tidyverse``` - [a collection of packages that are always incredibly helpful no matter what project you're working on](https://www.tidyverse.org/packages/)
* ```utils``` - [important for R notebook functionality](https://cran.r-project.org/web/packages/R.utils/index.html)
* ```yaml``` - [important for R notebook functionality](https://cran.r-project.org/web/packages/ymlthis/vignettes/yaml-overview.html)


### Other Workshops
- COG 2021 [Intro to Coding in R](https://github.com/TU-Coding-Outreach-Group/intro-to-coding-2021/tree/main/R) workshop by Billy Mitchell
- COG 2021 [Intro to Coding in Python](https://github.com/TU-Coding-Outreach-Group/intro-to-coding-2021/tree/main/python) workshop by Katie Jobson


