![Banner](https://github.com/Hafizah/Trend-Analysis-using-MySQL/blob/main/Images/banner.png)
## Introduction
To analyze the weekly trend of customers' visit to an e-commerce website between desktop and mobile devices.

## Dataset
The dataset used in this analysis was created using Excel and transformed into .sql using sqlizer.io. There are 40 rows and 6 columns altogether mimicking website sessions in October, 2020.

Variable | Description
---- | -------
**session_id** | Primary key
**created_at** | Date when session takes place
**user_id** | ID to track user across multiple sessions
**utm_source** | Urchin tracking module to track where the traffic originated from 
**utm_campaign** | Urchin tracking module to monitor specific campaign
**device_type** | Type of device used to access website

## Questions
### 1. How does traffic on desktop compared to mobile?

#### Answer
![Banner](https://github.com/Hafizah/Trend-Analysis-using-MySQL/blob/main/Images/total%20in%20percentage.jpg)

I used COUNT and CASE functions to calculate the total number of customers' visits to the website for both devices. Using a simple percentage calculation and rounding method, we can see that 65% of the traffic to the webpage was accessed through the desktop and only 35% through mobile phone!

#### Why is it important? 
Using this information, a marketer can make better decision in terms of bidding and improve customers' satisfaction when visiting the webpage using mobile phone.

### 2. What is the weekly trend of customer's visit for the month of October between desktop and mobile?
![Banner](https://github.com/Hafizah/Trend-Analysis-using-MySQL/blob/main/Images/weekly%20trend.jpg)

I used COUNT and CASE functions to create a pivot table.



