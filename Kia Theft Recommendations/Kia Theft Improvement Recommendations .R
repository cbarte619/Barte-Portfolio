library(ggplot2)
library(dplyr)
library(treemap)
library(readxl)
library(tidyr)

df1 <- read.csv("C:\\Users\\cbart\\Favorites\\Data Presentation - 640\\Week 5-6\\carTheftsMap.csv")
df2 <- read.csv("C:\\Users\\cbart\\Favorites\\Data Presentation - 640\\Week 5-6\\KiaHyundaiMilwaukeeData.csv")
df3 <- read.csv("C:\\Users\\cbart\\Favorites\\Data Presentation - 640\\Week 5-6\\kiaHyundaiThefts.csv")
df4 <- read_excel("C:\\Users\\cbart\\Favorites\\Data Presentation - 640\\Week 5-6\\Motherboard VICE News Kia Hyundai Theft Data.xlsx")


#Visual 1
data_long <- df3 %>%
  pivot_longer(cols = c(countKiaHyundaiThefts, countOtherThefts),
               names_to = "Theft_Type",
               values_to = "Count")
ggplot(data_long, aes(x = city, y = Count, fill = Theft_Type)) +
  geom_bar(stat = "identity") +
  labs(title = "Theft Counts in Different Cities",
       x = "City",
       y = "Count of Thefts",
       fill = "Type of Theft") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

# Visual 2
ggplot(df2, aes(x = interaction(month, year), 
                       group = city, 
                       fill = city)) +
  geom_area(aes(y = countKiaHyundaiThefts), position = "stack", alpha = 0.5) +
  geom_area(aes(y = countOtherThefts), position = "stack", alpha = 0.5) +
  labs(title = "Vehicle Thefts: Kia & Hyundai vs Other",
       x = "Month and Year",
       y = "Number of Thefts",
       fill = "City") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

# Visual 3
df1$countCarThefts2019 <- as.numeric(as.character(df1$countCarThefts2019))
df1$countCarThefts2020 <- as.numeric(as.character(df1$countCarThefts2020))
df1$countCarThefts2021 <- as.numeric(as.character(df1$countCarThefts2021))
df1$countCarThefts2022 <- as.numeric(as.character(df1$countCarThefts2022))

total_thefts <- df1 %>%
  summarise(
    Total_2019 = sum(countCarThefts2019, na.rm = TRUE),
    Total_2020 = sum(countCarThefts2020, na.rm = TRUE),
    Total_2021 = sum(countCarThefts2021, na.rm = TRUE),
    Total_2022 = sum(countCarThefts2022, na.rm = TRUE)
  )

total_thefts_long <- as.data.frame(t(total_thefts))
colnames(total_thefts_long) <- "Total_Thefts"
total_thefts_long$Year <- rownames(total_thefts_long)

total_thefts_long <- total_thefts_long %>%
  filter(Total_Thefts > 0)

ggplot(total_thefts_long, aes(x = "", y = Total_Thefts, fill = Year)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Total Car Theft Distribution (2019-2022)", fill = "Year") +
  theme_void()

# Visual 4
summary_data <- df2 %>%
  summarise(
    totalKiaHyundai = sum(countKiaHyundaiThefts),
    totalOther = sum(countOtherThefts)
  ) %>%
  pivot_longer(cols = everything(), names_to = "type", values_to = "count")
ggplot(summary_data, aes(x = "", y = count, fill = type)) +
  geom_bar(stat = "identity", width = 0.5) +
  coord_polar("y") +      
  labs(title = "Vehicle Theft Distribution: Kia & Hyundai vs Other",
       fill = "Type of Theft") +
  theme_void() +                              
  theme(legend.position = "right") +         
  geom_text(aes(label = paste0(round(count / sum(count) * 100, 1), "%")), 
            position = position_stack(vjust = 0.5), color = "white") 

# Visual 5
library(treemapify)
ggplot(data_long, aes(area = Count, fill = Theft_Type, label = city)) + 
  geom_treemap() +  # Use geom_treemap to create the main treemap
  geom_treemap_text(grow = FALSE, colour = "white", place = "centre", reflow = TRUE) +
  theme(legend.position = "right") +
  labs(title = "Treemap of Thefts by City") +
  theme_void()

#Visual 6
top_10_data <- df1 %>%
  arrange(desc(percentChange2019to2022)) %>%
  slice(1:10)  # Select top 10

ggplot(top_10_data, aes(x = reorder(geo_name, percentChange2019to2022), y = percentChange2019to2022, fill = geo_name)) +
  geom_bar(stat = "identity", width = 0.7) +
  coord_flip() +  
  labs(title = "Top 10 Geo Names with Highest Percent Change in Car Thefts (2019-2022)",
       x = "Geographic Area",
       y = "Percent Change (2019-2022)") +
  theme_minimal() +
  theme(legend.position = "none")
  