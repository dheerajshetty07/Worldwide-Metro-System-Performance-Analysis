### Datathon Case - Metro Data
### Viraj, Sahaj, Marco, Dheeraj
### Last updated 15 October 2024

library(readr)
library(dplyr)
library(ggplot2)
library(lubridate)

Metro_data <- read.csv('metro_data.csv')

summary(Metro_data)
str(Metro_data)
colnames(Metro_data)

# Data cleaning and transformation

# Checking for non-numeric values in Last.expanded

Metro_data |> 
  filter(!is.na(Last.expanded) & Last.expanded != "–" & !grepl("^\\d{4}$", Last.expanded)) |> 
  select(City, Country.region, Last.expanded)

New_metro_data <- Metro_data |> 
  mutate(
    Service.opened = as.numeric(Service.opened),
    Last.expanded = case_when(
      Last.expanded == "–" ~ NA_real_,
      grepl("^\\d{4}$", Last.expanded) ~ as.numeric(Last.expanded),
      TRUE ~ NA_real_
    ),
    System.length = as.numeric(gsub("[^0-9.]", "", System.length)),
    Annual.ridership = as.numeric(gsub("[^0-9.]", "", Annual.ridership..millions.))
  )

summary(New_metro_data)

# Check for any remaining non-numeric values in Last.expanded

New_metro_data |> 
  filter(!is.na(Last.expanded) & is.na(as.numeric(as.character(Last.expanded)))) |> 
  select(City, Country.region, Last.expanded)

# Basic statistics
summary(New_metro_data)

# Top 10 systems by ridership
top_10_ridership <- New_metro_data |> 
  arrange(desc(Annual.ridership)) |> 
  head(10)

print(top_10_ridership)

# Average system length by country
avg_length_by_country <- New_metro_data |> 
  group_by(Country.region) |> 
  summarise(avg_length = mean(System.length, na.rm = TRUE))

print(avg_length_by_country)

summary(New_metro_data$System.length)
summary(New_metro_data$Annual.ridership)

New_metro_data <- New_metro_data |> 
  filter(is.finite(System.length) & is.finite(Annual.ridership))

### Visualization - Ridership vs System Length

ggplot(New_metro_data, aes(x = System.length, y = Annual.ridership)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  scale_y_log10() +  # Use log scale for y-axis due to wide range of values
  labs(title = "Ridership vs. System Length",
       x = "System Length (km)",
       y = "Annual Ridership (millions, log scale)") +
  theme_minimal()

# Remove outliers (values more than 3 standard deviations from the mean)
New_metro_data_filtered <- New_metro_data |> 
  filter(Annual.ridership < mean(Annual.ridership, na.rm = TRUE) + 3*sd(Annual.ridership, na.rm = TRUE))

ggplot(New_metro_data_filtered, aes(x = System.length, y = Annual.ridership)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Ridership vs. System Length (Outliers Removed)",
       x = "System Length (km)",
       y = "Annual Ridership (millions)") +
  theme_minimal()

### Histogram of system lengths
ggplot(New_metro_data, aes(x = System.length)) +
  geom_histogram(binwidth = 10, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Metro System Lengths",
       x = "System Length (km)",
       y = "Count") +
  theme_minimal()

### Relationship between the number of stations and ridership
ggplot(New_metro_data, aes(x = Stations, y = Annual.ridership)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  scale_y_log10() +
  labs(title = "Ridership vs. Number of Stations",
       x = "Number of Stations",
       y = "Annual Ridership (millions, log scale)") +
  theme_minimal()

### Summary of the top 10 metro systems by ridership
top_10_ridership <- New_metro_data |> 
  arrange(desc(Annual.ridership)) |> 
  head(10) |> 
  select(City, `Country.region`, Annual.ridership, System.length, Stations)

print(top_10_ridership)
