#changing the creation date to timedate format must be done separately
nyt_concise$createDate <-lubridate::as_datetime(nyt_concise$createDate)

#solution
nyt_concise <- nyt_concise %>%  
  arrange(createDate) %>%
  filter(createDate >= '2021-01-01 00:00:00')

head(nyt_concise)