![Banner](https://github.com/Hafizah/Trend-Analysis-using-MySQL/blob/main/Images/banner.png)
## Introduction
Web analytics is used to analyze the success criteria of e-commerce sites in order to improve a company's revenue. One of the techniques used is a traffic source analysis. The objective of this analysis is to discover the most important sources of web traffic as well as where these sources are coming from. The findings of this analysis help a company's markerting team make a more informed decision during the bidding process as well as guide the development team to improve designs and usability of their products.

## Objective
To analyze the trend of the traffic source on an e-commerce site with the help of guided questions.

## Dataset
The dataset used in this analysis was created using Excel and transformed into sql file format using [Sqlizer](https://sqlizer.io). The dataset consists of 40 rows and 6 columns and imitate e-commerce site sessions in October, 2020. You will see the word "session" used frequently in the analysis. Google Analytics defines the word "session" as follows.
<br>
<br>

> A session is a group of user interactions with your website that take place within a given time frame. For example a single session can contain multiple page views, events, social interactions, and e-commerce transactions.
<br>

The image below shows the codes needed to create a table called "website_session" in MySQL.

![table_creation](https://github.com/Hafizah/Trend-Analysis-using-MySQL/blob/main/Images/table%20creation.jpg)
<br>
<br>
The image below show the table after it has been created.

![table](https://github.com/Hafizah/Trend-Analysis-using-MySQL/blob/main/Images/Table.jpg)
<br>
<br>
The table below shows the breakdown of all the variables in the table above.

Variable | Description
---- | -------
**session_id** | Used as primary key in the table
**created_at** | The date when each sessions occur
**user_id** | The ID used to track the user across multiple sessions
**utm_source** | Urchin tracking module to track where the traffic originated from 
**utm_campaign** | Urchin tracking module to monitor specific campaign
**device_type** | The type of devices used to access the site


## Questions
### 1.  How does the traffic flow looks like on desktop compared to mobile device?

#### Answer:
![Banner](https://github.com/Hafizah/Trend-Analysis-using-MySQL/blob/main/Images/total%20in%20percentage.jpg)

The CASE and COUNT functions filter and count the total number of user sessions for both devices. Using a simple percentage calculation and rounding method, we can see that 65% of the traffic to the site was accessed through desktops and 35% through mobile phones. 


### 2.  What is the weekly trend of sessions for the month of October for both devices?

#### Answer:
![traffic surge](https://github.com/Hafizah/Trend-Analysis-using-MySQL/blob/main/Images/traffic%20surge%20.jpg)

Looking at the weekly data distribution, we can see that there was a spike in session on the mobile by 700%. An analyst should investigate this piece of information further to see what could had caused the increase. A good step forward is to compare the trend with the previous years data. Changes could be made in terms of sales and promotion on the particular day or week to increase future revenue.


### 3. Which source contributes the most traffic to the site?

#### Answer:
![Banner](https://github.com/Hafizah/Trend-Analysis-using-MySQL/blob/main/Images/Traffic%20source.jpg)

The most traffic to the site was contributed by gsearch accessed by desktops with total session volume of 25 which is 63% of the total sessions. 

### 4. Focusing on desktop device and gsearch, how does brand and nonbrand do in terms of session volume?

#### Answer:
![Banner](https://github.com/Hafizah/Trend-Analysis-using-MySQL/blob/main/Images/brand%20non.jpg)

The session volume of gsearch brand did 4 times better than gsearch nonbrand. 

## Conclusion

The analysis above are examples of simple calculations performed by an analyst before venturing into more complex queries. A marketer would be interested to know how these trend affect orders. A good conversion rate is when session to order values is high above a certain percentage. Having these information, a marketer can make better decisions in terms of bidding direction whether to increase or reduce bidding on specific campaign. Aside from that, the analysis above can also help developer to improve designs and usability of the site.



