![Banner](https://github.com/Hafizah/Trend-Analysis-using-MySQL/blob/main/Images/banner.png)
## Introduction
Web analytics is used to analyze the success criteria of e-commerce sites in order to improve a company's revenue. One of the techniques used is to perform a traffic source analysis. The objective of the analysis is to discover the type of sources of the traffic to the sites as well as where these sources are coming from. The findings will help company's markerter to make better decision in efficiently directing bidding and guide developer to improve designs and usability of the site itself.

## Objective
To analyze the trend of the traffic source analysis by answering several guided questions.

## Dataset
The dataset used in this analysis was created using Excel and transformed into sql file format using [Sqlizer](https://sqlizer.io). The dataset consists of 40 rows and 6 columns and imitate e-commerce site sessions in October, 2020. You will see the word "session" used frequently in the analysis. Google Analytics defines the word "session" as follows.
<br>
<br>

> A session is a group of user interactions with your website that take place within a given time frame. For example a single session can contain multiple page views, events, social interactions, and ecommerce transactions.
<br>

The image below shows the codes needed to create a table in MySQL.

![table_creation](https://github.com/Hafizah/Trend-Analysis-using-MySQL/blob/main/Images/table%20creation.jpg)
<br>
<br>
The table below shows the breakdown of all the variables in the table.

Variable | Description
---- | -------
**session_id** | Used as primary key in the table
**created_at** | The date when each sessions occur
**user_id** | The ID used to track the user across multiple sessions
**utm_source** | Urchin tracking module to track where the traffic originated from 
**utm_campaign** | Urchin tracking module to monitor specific campaign
**device_type** | The type of devices used to access the site


## Questions
### 1.  How does the traffic flow looks like on the desktop compared to on the mobile?

#### Answer:
![Banner](https://github.com/Hafizah/Trend-Analysis-using-MySQL/blob/main/Images/total%20in%20percentage.jpg)

The CASE and COUNT functions filter and count the total number of users sessions for both devices. Using a simple percentage calculation and rounding method, we can see that 65% of the traffic to the site was accessed through desktops and 35% through mobile phones. This information helps a marketer to make better decisions in terms of bidding direction.


### 2.  What is the weekly trend of sessions for the month of October for both devices?

#### Answer:
![traffic surge](https://github.com/Hafizah/Trend-Analysis-using-MySQL/blob/main/Images/traffic%20surge%20.jpg)

Looking at the weekly data distribution, we can see that there was a spike in session on the mobile by 700%. An analyst should investigate this piece of information further to see what could have caused the increase. A good step forward is to compare the trend with previous years data. Changes could be made in terms of sales and promotion on the particular day or week to increase revenue.


### 3. Which source is bringing more traffic to the site?

#### Answer:
![Banner](https://github.com/Hafizah/Trend-Analysis-using-MySQL/blob/main/Images/Traffic%20source.jpg)

### 4. 

#### Answer:
![Banner](https://github.com/Hafizah/Trend-Analysis-using-MySQL/blob/main/Images/brand%20non.jpg)

## Conclusion




