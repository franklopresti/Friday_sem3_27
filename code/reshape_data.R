install.packages("tidyverse")  # If not already installed
library(tidyverse)




str(Temp_data)

library(dplyr)

# Convert Mar-Dec columns to numeric
Temp_data <- Temp_data %>%
  mutate_at(vars(Mar:Dec), as.numeric)

# Check structure again
str(Temp_data)

# Convert data to long format  Reshaping the Data (Long Format)
temperature_long <- pivot_longer(Temp_data, 
                                 cols = Jan:Dec, 
                                 names_to = "Month", 
                                 values_to = "Temperature_Anomaly")

# View transformed data
head(temperature_long)
