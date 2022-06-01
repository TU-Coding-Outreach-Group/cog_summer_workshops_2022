## Save nyt as new dataframe
nyt_E4 <- nyt

## Select needed columns 
nyt_E4 <- dplyr::select(nyt_E4, c('commentID', 'textLength', 'sentiment', 'replyCount'))

## Standardize replyCount and textLength
nyt_E4$replyCount <- scale(nyt_E4$replyCount, center = T, scale = T)
nyt_E4$textLength <- scale(nyt_E4$textLength, center = T, scale = T)

## Use lm() and plot(effect()) to estimate linear regression models and visualize results

### replyCount ~ sentiment
lm1 <- lm(replyCount ~ sentiment, nyt_E4)
summary(lm1)
plot(effect("sentiment", lm1), grid = TRUE)
#Reply count is lower with stronger positive sentiment, and higher with stronger negative sentiment, b = -0.1, SE = 0.004, t = -22.43, p < .001.

### sentiment ~ textLength
lm2 <- lm(sentiment ~ textLength, nyt_E4)
summary(lm2)
plot(effect("textLength", lm2), grid = TRUE)
#More positive reviews were longer, b = 0.24, SE = 0.004, t = 65.18, p < .001.