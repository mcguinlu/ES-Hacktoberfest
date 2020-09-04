library(httr)
library(jsonlite)
library(dplyr)


t <- GET("https://api.github.com/search/issues?q=label:Hacktoberfest")

details <- t %>%
  httr::content(as = "text", encoding = "UTF-8") %>%
  jsonlite::fromJSON()
