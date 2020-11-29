CREATE TABLE IF NOT EXISTS web_session (
    `session_id` INT,
    `created_at` DATETIME,
    `user_id` INT,
    `utm_source` VARCHAR(7) CHARACTER SET utf8,
    `utm_campaign` VARCHAR(8) CHARACTER SET utf8,
    `device_type` VARCHAR(7) CHARACTER SET utf8
);
INSERT INTO web_session VALUES
    (1,'2020-10-01 00:00:00',1,'gsearch','brand','desktop'),
    (2,'2020-10-01 00:00:00',2,'gsearch','brand','desktop'),
    (3,'2020-10-02 00:00:00',3,'gsearch','brand','desktop'),
    (4,'2020-10-02 00:00:00',4,'gsearch','nonbrand','mobile'),
    (5,'2020-10-02 00:00:00',5,'gsearch','brand','desktop'),
    (6,'2020-10-03 00:00:00',6,'gsearch','brand','desktop'),
    (7,'2020-10-03 00:00:00',7,'gsearch','brand','desktop'),
    (8,'2020-10-04 00:00:00',8,'smedia','brand','desktop'),
    (9,'2020-10-04 00:00:00',9,'smedia','nonbrand','mobile'),
    (10,'2020-10-04 00:00:00',10,'smedia','nonbrand','desktop'),
    (11,'2020-10-05 00:00:00',11,'gsearch','brand','desktop'),
    (12,'2020-10-06 00:00:00',12,'smedia','nonbrand','mobile'),
    (13,'2020-10-06 00:00:00',13,'smedia','brand','mobile'),
    (14,'2020-10-08 00:00:00',14,'smedia','nonbrand','mobile'),
    (15,'2020-10-08 00:00:00',15,'gsearch','brand','mobile'),
    (16,'2020-10-08 00:00:00',16,'smedia','brand','desktop'),
    (17,'2020-10-09 00:00:00',17,'smedia','nonbrand','desktop'),
    (18,'2020-10-09 00:00:00',18,'smedia','brand','mobile'),
    (19,'2020-10-09 00:00:00',19,'gsearch','brand','desktop'),
    (20,'2020-10-10 00:00:00',20,'smedia','brand','desktop'),
    (21,'2020-10-10 00:00:00',21,'gsearch','brand','desktop'),
    (22,'2020-10-10 00:00:00',22,'gsearch','brand','mobile'),
    (23,'2020-10-11 00:00:00',23,'smedia','nonbrand','desktop'),
    (24,'2020-10-12 00:00:00',24,'smedia','brand','mobile'),
    (25,'2020-10-13 00:00:00',25,'gsearch','nonbrand','desktop'),
    (26,'2020-10-19 00:00:00',26,'smedia','nonbrand','desktop'),
    (27,'2020-10-20 00:00:00',27,'gsearch','brand','desktop'),
    (28,'2020-10-21 00:00:00',28,'gsearch','brand','mobile'),
    (29,'2020-10-22 00:00:00',29,'gsearch','brand','desktop'),
    (30,'2020-10-25 00:00:00',30,'gsearch','brand','desktop'),
    (31,'2020-10-25 00:00:00',31,'gsearch','brand','desktop'),
    (32,'2020-10-25 00:00:00',32,'gsearch','brand','mobile'),
    (33,'2020-10-27 00:00:00',33,'gsearch','brand','mobile'),
    (34,'2020-10-27 00:00:00',34,'gsearch','brand','mobile'),
    (35,'2020-10-30 00:00:00',35,'gsearch','nonbrand','desktop'),
    (36,'2020-10-30 00:00:00',36,'smedia','brand','desktop'),
    (37,'2020-10-31 00:00:00',37,'smedia','brand','desktop'),
    (38,'2020-10-31 00:00:00',38,'gsearch','brand','desktop'),
    (39,'2020-10-31 00:00:00',39,'gsearch','nonbrand','desktop'),
    (40,'2020-10-31 00:00:00',40,'gsearch','brand','mobile');


/*SELECT
	COUNT(DISTINCT CASE WHEN device_type = 'mobile' THEN session_id ELSE NULL END) AS mobile,
    COUNT(DISTINCT CASE WHEN device_type = 'desktop' THEN session_id ELSE NULL END) AS desktop,
    ROUND(COUNT(DISTINCT CASE WHEN device_type = 'desktop' THEN session_id ELSE NULL END) / 40 * 100) AS percentage
FROM web_session */


/* SELECT
	MIN(DATE(created_at)) AS week,
	COUNT(DISTINCT CASE WHEN device_type = 'mobile' THEN session_id ELSE NULL END) AS mobile,
    COUNT(DISTINCT CASE WHEN device_type = 'desktop' THEN session_id ELSE NULL END) AS desktop
FROM web_session 
GROUP BY WEEK(created_at) */


/* SELECT
	COUNT(DISTINCT CASE WHEN utm_source = 'gsearch' AND device_type = 'mobile' THEN session_id ELSE NULL END) AS mobile_google,
    COUNT(DISTINCT CASE WHEN utm_source = 'gsearch' AND device_type = 'desktop' THEN session_id ELSE NULL END) AS desktop_google,
    COUNT(DISTINCT CASE WHEN utm_source = 'smedia' AND device_type = 'mobile' THEN session_id ELSE NULL END) AS mobile_social_media,
    COUNT(DISTINCT CASE WHEN utm_source = 'smedia' AND device_type = 'desktop' THEN session_id ELSE NULL END) AS desktop_social_media
FROM web_session */

SELECT
	COUNT(DISTINCT CASE WHEN device_type = 'desktop' AND utm_campaign = 'brand' THEN session_id ELSE NULL END) AS desktop_brand,
    COUNT(DISTINCT CASE WHEN device_type = 'desktop' AND utm_campaign = 'nonbrand' THEN session_id ELSE NULL END) AS desktop_non_brand
FROM web_session
WHERE
	utm_source = 'gsearch'



  