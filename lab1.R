visitors <- read_csv("data/UK-visitor-numbers.csv")
visitors %>% head(n = 10) #See first 10 rows of data

nrow(visitors) #See total amount of rows
ncol(visitors) #See total amount of columns
#Question 1
visitors %>% count(region) #Find the total tally for each region
visitors %>% count(admission, setting)

#Question 2
class(visitors$n_2022) #See what data class is the data
visitors %>% summarise_all(class) #Summarise all data class in each column heading

#Question 3
visitors %>% arrange(desc(n_2022)) #Sort amount of visitors in descending order
visitors %>% arrange(n_2021) #Sort amount of visitors in asc order (default is asc so dont have to add anything else)

#Question 4
visitors %>% filter(attraction == "National Museum of Scotland") #Filter data for only Nat Mus of Scot
visitors %>% filter(n_2022 == 565772)
visitors %>% filter(n_2022 > 1000000)

#Question 5
visitors %>%
  filter(
    setting == "O", #Filtering for Outside attractions
    region == "Yorkshire and the Humber", #Filtering for region
    admission == "Members", #Filtering for members free admission
    n_2022 >= 100000, #Filtering for more than 100k visitors
  ) %>%
  count()

visitors %>% #Filter for visistors in 2022 between 50k and 100k
  filter(
    n_2022 <= 100000, 
    n_2022 >= 50000,
  ) %>%
  count()

visitors %>% 
  filter(
    
  )
  