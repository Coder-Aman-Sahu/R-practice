# Load necessary libraries
library(rvest)

# URL of the webpage
url <- "https://example.com"

# Read the HTML content
webpage <- read_html(url)

# Extract specific data (e.g., table)
table_data <- webpage %>%
  html_nodes("table") %>%
  html_table()

# Convert the extracted table to a data frame
data <- as.data.frame(table_data[[1]])

# View the extracted data
head(data)
