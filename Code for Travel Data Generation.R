# Installing and loading packages
install.packages(c("dplyr", "openxlsx"))
library(dplyr)
library(openxlsx)

# Generating dataset for the travel survey
set.seed(2025)

n_travel <- 250

travel_data <- data.frame(
  ID = sprintf("Q%03dk", 1:n_travel),
  Incentive_Offered = sample(c("$20 voucher", "Travel coupon", "Gift card", "Discount code"), n_travel, replace = TRUE),
  Age_Group = sample(c("18-21", "22-25", "26-30", "31-35", "36-40", "41-45"), n_travel, replace = TRUE, prob = c(0.15,0.25,0.25,0.15,0.1,0.1)),
  Gender = sample(c("Male","Female","Non-binary/Third gender","Prefer not to say"), n_travel, replace = TRUE, prob = c(0.45,0.45,0.05,0.05)),
  Employment = sample(c("Full-time","Part-time","Student","Self-employed","Between jobs"), n_travel, replace = TRUE),
  Income = sample(c("Under $30k","$30k-$49k","$50k-$69k","$70k-$89k","$90k-$119k","$120k+"), n_travel, replace = TRUE),
  Trips_Past_Year = sample(c("0","1-2","3-4","5-7","8-10","More than 10"), n_travel, replace = TRUE, prob = c(0.05,0.3,0.3,0.2,0.1,0.05)),
  Spend_Last_Year = sample(c("$0","$1-$1999","$2000-$4999","$5000-$9999","$10000-$19999","$20000+"), n_travel, replace = TRUE, prob = c(0.05,0.25,0.3,0.25,0.1,0.05)),
  Destination_Type = sample(c("Beach","Mountain","Cultural","Adventure","Urban","Wellness"), n_travel, replace = TRUE),
  Travel_Companion = sample(c("Solo","Partner","Friends","Family","Group","Work"), n_travel, replace = TRUE),
  Duration = sample(c("Weekend","Short (4-7 days)","Extended (1-2 weeks)","Long-term (3+ weeks)"), n_travel, replace = TRUE, prob = c(0.25,0.4,0.25,0.1)),
  Booking_Horizon = sample(c("Last minute","1-2 weeks","3-4 weeks","2-3 months","4-6 months","6+ months"), n_travel, replace = TRUE),
  Importance_Price = sample(1:8, n_travel, replace = TRUE, prob = rev(1:8)),
  Importance_Value = sample(1:8, n_travel, replace = TRUE, prob = rev(1:8)),
  Importance_Service = sample(1:8, n_travel, replace = TRUE),
  Importance_Sustainability = sample(1:8, n_travel, replace = TRUE, prob = c(1,1,2,3,4,4,2,1)),
  Future_Intent = sample(c("Increase","Maintain","Decrease","Uncertain"), n_travel, replace = TRUE, prob = c(0.45,0.35,0.1,0.1)),
  Max_Planning_Hours = sample(c("1-2","3-5","6-10","11-20","20+"), n_travel, replace = TRUE),
  Comment = sample(c("Need better price transparency","Wish for local experiences","Faster booking apps","More eco options","Better customer service",""), n_travel, replace = TRUE, prob = c(0.2,0.2,0.2,0.2,0.1,0.1))
)

write.xlsx(travel_data, "Travel_Survey_Data_Sherodhi.xlsx")

head(travel_data)
str(travel_data)
dim(travel_data)