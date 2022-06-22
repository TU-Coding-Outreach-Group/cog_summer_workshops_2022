# Coding Outreach Group Summer Workshop
# Neuroimaging in Python
06/22/2022

__**Content creator:**__ Kim Nguyen

__**Content editor:**__ Billy Mitchell


## Description
In this workshop, we walk attendees through a series of traditional fMRI analytic steps using python so that they can get a feel for how neuromaging in python can be done. This workshop is an extremely condensed version of [Luke Chang's DartBrains Course](https://dartbrains.org/content/intro.html). DartBrains is an incredibly thorough resource which covers theory, and implementation of neuroimaging concepts and analysis. We have found this course to be very useful in completing our own analyses. 

## Prerequisites
1. Comfort coding in python
2. Familiarity with file path structures
3. Faimilarity with general neuroimaging analysis concepts

## Set Up (do before the workshop)
1. Make sure you've installed the following python packages:
    - [nltools](https://nltools.org/install.html) `pip install nltools`
    - [pyBIDS](https://github.com/bids-standard/pybids) `pip install pybids`
    - [nibable](https://nipy.org/nibabel/#code) `pip install nibabel`
    - [nilearn](https://nilearn.github.io/introduction.html#installing-nilearn) `pip install -U --user nilearn`
    
## Workshop objectives:
1. Introduce nltools
2. Demonstrate benefits of scripting analyses in python

## Workshop Materials
- [Data](https://drive.google.com/drive/folders/1eIQwZ4as6zlo25SheCDSrjfZdeRm9UjZ?usp=sharing)
- [Notebook Viewer](https://tu-coding-outreach-group.github.io/cog_summer_workshops_2022/neuroimaging-in-python/index.html)
- [Intro Slides](https://github.com/TU-Coding-Outreach-Group/cog_summer_workshops_2022/blob/main/neuroimaging-in-python/neuroimaging_python_intro-COG2022.pdf)

## Outline
| Topic | Time | Description |
| --- | --- | --- |
| Intro | Why run neuroimaging analyses in python (pros and cons)? What is nltools? | 5 min |
| Tutorial 1 | Single subject analysis | 25 min |
| Tutorial 2 | Group level analysis | 25 min |
| Examples | Unconventional design matricies and further resources | 5 min 

## Additional Resources
### Literature
- [Kriegeskorte et al., 2008](https://www.frontiersin.org/articles/10.3389/neuro.06.004.2008/full?utm_source=FWEB&utm_medium=NBLOG&utm_campaign=ECO_10YA_top-research)
    - The original paper that introduced RSA
- [Popal et al., 2019](https://academic.oup.com/scan/article/14/11/1243/5693905)
    - An RSA how-to and why-to guide aimed for the social neuroscience community
- [Dimsdale-Zucker & Ranganath, 2018](http://hrz-website.s3.amazonaws.com/papers/dimsdale-zucker_ranganath_2018_published-chapter.pdf)
    - An in-depth RSA guide aimed for memory researchers

### Packages
- [nltools](https://nltools.org/)

### Other Resources
- COG 2021 [Neuroimaing in Python](https://github.com/TU-Coding-Outreach-Group/cog_summer_workshops_2021/tree/main/neuroimaging-in-python) workshop by Elizabeth Beard and Haroon Popal
- [Dartbrains](https://dartbrains.org/content/intro.html) teaches an introduction to functional neuroimaging using the nltools. This is the resource used to create the present workshop
- [Nilearn](https://nilearn.github.io/stable/index.html) and [Nilearn office hours](https://github.com/nilearn/nilearn#:~:text=The%20nilearn%20team%20organizes%20regular,core%2Ddeveloper%20team%20is%20available.)


