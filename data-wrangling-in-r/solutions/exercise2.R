## How many rows and columns are in the dataset?
nrow(nyt) #53355 rows
names(nyt) #11 cols

## What classes are the "commentBody" and "textLength" columns?
str(nyt) #commentBody is character, textLength is integer

## Turn textLength into a numeric variable (suggestion: use as.numeric()).
nyt$textLength <- as.numeric(nyt$textLength)

## Use the skim() function to find the mean, SD, min and max for textLength, sentiment (Hint: we standardized sentiment earlier on, so M should be 0 and SD should be 1), and replyCount.
skim(nyt)

## Remove rows containing outliers for textLength, sentiment, and replyCount (greater or less than 3SD from the mean)
nyt <- subset(nyt, textLength <= 116.23)
nyt <- subset(nyt, sentiment <= 3 & sentiment >= -3)
nyt <- subset(nyt, replyCount <= 1.58)

## Remove any rows with missing data. (Hint: use drop_na())
nyt <- drop_na(nyt)
nrow(nyt) #52189 rows remaining

## Plot histograms of the sentiment, textLength, and replyCount columns.
hist(nyt$sentiment)
hist(nyt$replyCount)
hist(nyt$textLength)

## Using the select() function and datasummary_correlation() function from the modelsummary package, create an intercorrelation table of all numeric variables aside from date and ID variables.
names(nyt)
nyt_cor <- dplyr::select(nyt, c('recommendations', 'textLength', 'replyCount','sentiment'))
datasummary_correlation(nyt_cor)