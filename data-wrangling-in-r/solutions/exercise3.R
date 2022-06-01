## Save nyt as new dataframe
nyt_E3 <- nyt

## Call the recipeName function using the $ operator to choose recipe names
nyt_E3$recipeName

### Long Way ###

## Select needed columns
nyt_E3 <- dplyr::select(nyt_E3, c('recipeName', 'commentID', 'sentiment'))

## Use subset() or filter() to select rows for 2 recipe names
nyt_E3 <- subset(nyt_E3, recipeName == 'grilled tofu' | recipeName == 'pineapple marinated chicken breasts')

## Use pivot_wider() (new function!) to transform data from long to wide format
nyt_E3 <- pivot_wider(nyt_E3, id_cols = 'commentID', names_from = 'recipeName', values_from = 'sentiment')

### Concise ###
nyt_E3 <- nyt_E3 %>% dplyr::select(c('recipeName', 'sentiment', 'commentID')) %>% ## Select needed columns
  subset(recipeName == 'grilled tofu' | recipeName == 'pineapple marinated chicken breasts') %>% ## Use subset() or filter() to select rows for 2 recipe names
  pivot_wider(id_cols = 'commentID', names_from = 'recipeName', values_from = 'sentiment') ## Use pivot_wider() (new function!) to transform data from long to wide format

head(nyt_E3, n = 20)

### t-test ###
t.test(nyt_E3$`grilled tofu`, nyt_E3$`pineapple marinated chicken breasts`,
       alternative = c('two.sided'),
       paired = F,
       conf.level = .95)
#sentiment does not differ between the two recipes I chose