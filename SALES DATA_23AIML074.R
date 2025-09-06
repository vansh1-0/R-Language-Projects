library(dplyr)
library(ggplot2)

# Load the dataset
df <- read.csv("C://Users//Lenovo//Desktop//VANSH//SEMESTER 4//R PROGRAMMING for Data-Analysis And Data Science//23AIML074 VANSH DILIPKUMAR MEHTA - sales_data.csv")

# Convert Sale_Date column to Date format
df$Sale_Date <- as.Date(df$Sale_Date, format="%Y-%m-%d")

# Display the structure of the dataset
print(str(df))

# Show summary statistics of the dataset
print(summary(df))

# Check for missing values in each column
print(colSums(is.na(df)))

# Histogram to visualize the distribution of Sales Amount
ggplot(df, aes(x=Sales_Amount)) +
  geom_histogram(fill="blue",bins=30) +
  theme_minimal() +
  labs(title="Sales Amount Distribution", x="Sales Amount", y="Frequency")

# Boxplot to compare Sales Amount across different Regions
ggplot(df, aes(x=Region, y=Sales_Amount)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title="Sales Amount by Region", x="Region", y="Sales Amount")

# Bar chart to analyze Sales Amount by Sales Representatives
ggplot(df, aes(x=Sales_Rep, y=Sales_Amount)) +
  geom_bar(stat="identity") +
  theme_minimal() +
  labs(title="Sales Performance by Sales Rep", x="Sales Representative", y="Total Sales") +
  theme(axis.text.x = element_text(angle=45, hjust=1))

