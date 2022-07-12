# Coding Outreach Group Summer Workshop
# Representational Similarity Analysis
07/13/2022

__**Content creator:**__ Büşra Tanrıverdi

__**Content Editor:**__ Haroon Popal


## Description
Representational similarity analysis (RSA) is a newer analytic technique that can be used for both neural and behavioral data and is great for exploring high-dimensional data or comparing data across different modalities.

## Prerequisites
1. Comfort coding in R
    - If you need to refresh your R knowledge, please check the previous R workshops from our group (by [Ginny Ulichney](https://github.com/TU-Coding-Outreach-Group/cog_summer_workshops_2022/tree/main/data-wrangling-in-r) & [William Mitchell](https://github.com/TU-Coding-Outreach-Group/intro-to-coding-2021/tree/main/R)) 
2. Familiarity with file path structures
3. Faimilarity with general neuroimaging analysis concepts

## Set Up (do before the workshop)
1. Download the R-markdown script from Github 
1. Download the data used in the workshop 
1. Download the packages required for the workshop 
    
## Workshop objectives:
1. Introduce the basic framework of representational similarity analysis 
2. Demonstrate how to create representational similarity matrices from neuroimaging (specifically, functional MRI) data 
3. Demonstrate RSA with a region of interest approach 
4. Relate neural similarity to behavioral outcomes 

## Workshop Materials
- [Notebook Viewer](https://tu-coding-outreach-group.github.io/cog_summer_workshops_2022/rsa/index.html)
- [Intro Slides](https://github.com/TU-Coding-Outreach-Group/cog_summer_workshops_2022/blob/main/rsa/RSA_IntroSlides.pdf)

## Outline
| Topic | Time | Description |
| --- | --- | --- |
| Intro | Why use RSA? | 5 min |
| Part 1 | Within Subject, Item-level RSA (ROI) | 30 min |
| Part 2 | Across Subjects, Item-level RSA (ROI) | 15 min |
| Part 3 | ROI RSA predicting behavior (memory) | 10 min |
| Outro | Significance Testing, Additional Resources & Examples | 5 min |

## Additional Resources

### Literature
- [Kriegeskorte et al., 2008](https://www.frontiersin.org/articles/10.3389/neuro.06.004.2008/full?utm_source=FWEB&utm_medium=NBLOG&utm_campaign=ECO_10YA_top-research)
    - The original paper that introduced RSA
- [Popal et al., 2019](https://academic.oup.com/scan/article/14/11/1243/5693905)
    - An RSA how-to and why-to guide aimed for the social neuroscience community
- [Dimsdale-Zucker & Ranganath, 2018](http://hrz-website.s3.amazonaws.com/papers/dimsdale-zucker_ranganath_2018_published-chapter.pdf)
    - An in-depth RSA guide aimed for memory researchers

### Packages
- [Dartbrains](https://dartbrains.org/content/RSA.html) - python
    - Excellent tutorial. Much of the code in this workshop was adapted from this resource.
    - Uses the nltools package
- [PyMVPA](http://www.pymvpa.org/examples/rsa_fmri.html) - python
    - Includes searchlight analysis
- [Brain imaging analysis kit](https://brainiak.org/tutorials/06-rsa/)
- [NeuroRA](https://neurora.github.io/NeuroRA/)

### Other Workshops
- [Mark Thornton's RSA workshop](https://colab.research.google.com/drive/1UEtFr-oJisRzl8BmzbNdMZZ7-Of0gLcH?usp=sharing) for Society for Social Neuroscience 2021
- [MIND 2018 RSA workshop](https://github.com/markallenthornton/mind_2018/tree/master/tutorials/representational_similarity) in R
- [COG 2021 RSA workshop](https://github.com/TU-Coding-Outreach-Group/cog_summer_workshops_2021/tree/main/rsa) by Haroon Popal
- [COG 2020 RSA workshop](https://github.com/TU-Coding-Outreach-Group/cog_summer_workshops_2020/tree/master/representational-similarity-analysis) by Iva Brunec


