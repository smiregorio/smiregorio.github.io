#Machine learning in the tidyverse
library(tidyverse)
## create a list with columns
df %>%
  group_by(column) %>%
  nest()

## access data
nested_df$data[[1]]

## return back to normal df
nested_df %>%
  unnest(data)

## you can access a column from the list with
list_df <- nested_df$data[[1]]
min(list_df$specific_column)