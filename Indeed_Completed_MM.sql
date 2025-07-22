/*
--1
SELECT
COUNT (*) AS rows
FROM
data_analyst_jobs
;
--1,793


--2
SELECT *
FROM
data_analyst_jobs
LIMIT 10
;
--ExxonMobil


--3
SELECT
COUNT(*)
FROM
data_analyst_jobs
WHERE
location = 'TN' OR location='KY'
;
--TN=21, KY=6, TN&KY=27


--4
SELECT COUNT(*) AS "4+stars"
FROM data_analyst_jobs
WHERE location = 'TN' AND star_rating >=4
--4
;


--5
SELECT
COUNT (*) AS "Review Count"
FROM
data_analyst_jobs
WHERE
review_count <1000 AND review_count >500
;
--150


--6
SELECT
location,
ROUND(AVG(star_rating),2) AS avg_rating
FROM
data_analyst_jobs
WHERE 
star_rating IS NOT null
GROUP BY DISTINCT(location)
ORDER BY avg_rating DESC
;


--7
SELECT
COUNT (DISTINCT title)
FROM
data_analyst_jobs
--881
;


--8
SELECT
COUNT (DISTINCT title)
FROM
data_analyst_jobs
WHERE
location='CA'
--230

;



--9
SELECT
company,
SUM(review_count) AS rc,
AVG(star_rating) AS avg_rating,
COUNT(*) as results_count
FROM
data_analyst_jobs
WHERE
review_count IS NOT null AND review_count>5000
GROUP BY company
ORDER BY rc DESC
;
--41,   I couldn't get it to count the results of the querry
--(make sure to mention in review)



--10
SELECT
company,
SUM(review_count) AS rc,
AVG(star_rating) AS avg_rating,
COUNT(*) as results_count
FROM
data_analyst_jobs
WHERE
review_count IS NOT null AND review_count>5000
GROUP BY company
ORDER BY avg_rating DESC
;
--GM 4.1999998090000000



--11
SELECT
COUNT(title)
FROM
data_analyst_jobs
WHERE title ILIKE '%ANALYST%'
;
--1669



--12
SELECT
title
FROM
data_analyst_jobs
WHERE title NOT ILIKE '%ANALYST%' AND title NOT ILIKE '%analytics%'
;
--4 , data



--BONUS

SELECT
domain,
COUNT(title) AS jobs
FROM
data_analyst_jobs
WHERE domain IS NOT null AND days_since_posting > 21
GROUP BY domain
ORDER BY jobs DESC
;

*/