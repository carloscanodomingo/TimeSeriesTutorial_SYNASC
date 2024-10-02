library(rhdf5)
library(data.table)
library(tsibble)

path = "/home/ccanodom/data/Exp/train/db172003-6497-4adc-a4e9-cfbf12022d28.result"
read_data <- function(path, sample_rate){
  info <- h5ls(path)
  keys = unique(info$group)
  # Step 1: Filter the list to get elements that start with "/Cycle"
  # Initialize an empty data frame before the loop
  all_data <- data.frame()
  
  # Step 1: Filter the list to get elements that start with "/Cycle"
  cycle_elements <- grep("^/Cycle", keys, value = TRUE)
  last_time = 0
  # Step 2: Loop through the cycle elements
  for (cycle in cycle_elements) {
    # Read the data for the current cycle
    data <- h5read(path, cycle)
    
    # Convert the data to a data frame
    new_data <- data.frame(t(data$block0_values))
    
    # Set the column names
    colnames(new_data) <- data$block0_items
    new_data$Step[new_data$Step == max(new_data$Step)] = 5
    new_data$cycle <- as.numeric(sub("/Cycle", "", cycle))
    mean_diff = mean(diff(new_data$relative_time))
    
    last_time = new_data$total_time[length(new_data$total_time)] + 2 * mean_diff
    # Concatenate the new data frame with the existing one
    all_data <- rbind(all_data, new_data)
  }
  all_data$minutes <- seq_len(nrow(all_data)) - 1
  # Convert the 'minutes' column to a POSIXct time object, treating it as time starting from a specific origin
  origin_time <- ymd_hms("2024-01-01 00:00:00")  # Set an arbitrary start date
  all_data$time <- origin_time + seconds(all_data$minutes) 
  # Select every nth row to reduce sample size
  #reduced_data <- all_data[seq(1, nrow(all_data), by = sample_rate), ]
  reduced_data = all_data
  
  clean_data <- reduced_data[!duplicated(reduced_data$time), ]
  
  y <- tsibble(
    clean_data,
    index = time
  )
  y
}
get_soh <- function(csv_path, file_name)
{
  # Step 1: Read the CSV file
  data <- read.csv(csv_path, stringsAsFactors = FALSE)
  
  # Step 2: Define the key string you want to search for
  key_string <- file_name
  
  # Step 3: Find the row that contains the key string in the 'name' column
  # (Replace 'name' with the actual column name in your data)
  selected_columns <- grep("Iteration_", colnames(data))
  row_vector <- data[grep(key_string, data$Profile_Path), selected_columns]
  # Convert to numeric and suppress warnings
  numeric_vector <- suppressWarnings(as.numeric(row_vector))
  clean_vector <- numeric_vector[!is.na(numeric_vector) & numeric_vector != 0]

  
 
  # Step 4: Copy the matching row to a vector (as.numeric or as.character depending on your need)
  # Here we are converting the row to a character vector for demonstration

  
  clean_vector
}
