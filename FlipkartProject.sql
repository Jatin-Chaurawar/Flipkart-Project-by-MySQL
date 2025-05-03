create database flipkartdata;
use flipkartdata;
select * from flipkartdata;
-- 1. Total Mobile Models
SELECT COUNT(DISTINCT brand) AS Total_Mobiles FROM flipkartdata;

-- 2. Total Brands
SELECT COUNT(DISTINCT Brand) AS Total_Brands FROM flipkartdata;

-- 3. Total Reviews
SELECT SUM(No_of_Reviews) AS Total_Reviews FROM flipkartdata;

-- 4. Average Reviews per Mobile
SELECT AVG(No_of_Reviews) AS Average_Reviews FROM flipkartdata;

-- 5. Average Rating
SELECT AVG(Ratings) AS Average_Rating FROM flipkartdata;

-- 6. Average MRP (Maximum Retail Price)
SELECT AVG(MRP) AS Average_MRP FROM flipkartdata;

-- 7. Average MSP (Market Selling Price)
SELECT AVG(MSP) AS Average_MSP FROM flipkartdata;

-- 8. Top 5 Brands by MSP (Highest Average MSP)
SELECT Brand, AVG(MSP) AS Avg_MSP 
FROM flipkartdata
GROUP BY Brand 
ORDER BY Avg_MSP DESC 
LIMIT 5;

-- 9. Top 5 Brands by Rating (Highest Average Rating)
SELECT Brand, AVG(Ratings) AS Avg_Rating 
FROM flipkartdata 
GROUP BY Brand 
ORDER BY Avg_Rating DESC 
LIMIT 5;

-- 10. Top 5 Brands by Reviews (Highest Total Reviews)
SELECT Brand, SUM(No_of_Reviews) AS Total_Reviews 
FROM flipkartdata 
GROUP BY Brand 
ORDER BY Total_Reviews DESC 
LIMIT 5;

-- 11. Top 5 Brands by Discount (Highest Average Discount)
SELECT Brand, AVG(Discountpercentage) AS Avg_Discount 
FROM flipkartdata
GROUP BY Brand 
ORDER BY Avg_Discount DESC 
LIMIT 5;

-- 12. Top 5 Phones/Models by MSP (Most Expensive Phones)
SELECT distinct brand, MSP 
FROM flipkartdata
ORDER BY MSP DESC 
LIMIT 5;

-- 13. Top 5 Phones/Models by Rating (Best Rated Phones)
SELECT brand, Ratings 
FROM flipkartdata
ORDER BY Ratings DESC 
LIMIT 5;

-- 14. Top 5 Phones/Models by Number of Reviews (Most Reviewed Phones)
SELECT brand, No_of_Reviews 
FROM flipkartdata
ORDER BY No_of_Reviews DESC 
LIMIT 5;

-- 15. Top 5 Phones/Models by Discount (Highest Discounted Phones)
SELECT brand, Discountpercentage
FROM flipkartdata
ORDER BY Discountpercentage DESC 
LIMIT 5;

alter table flipkartdata
add column discount int;
