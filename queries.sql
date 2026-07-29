-- ==========================================
-- CUSTOMER RESEARCH & MARKET INSIGHTS ANALYTICS
-- POSTGRESQL QUERIES
-- ==========================================


-- ==========================================
-- QUERY 1: DISPLAY THE FIRST 10 RECORDS
-- Purpose: Verify that the dataset was imported successfully.
-- ==========================================

SELECT *
FROM shopping_trends
LIMIT 10;



-- ==========================================
-- QUERY 2: TOTAL NUMBER OF CUSTOMERS
-- Purpose: Count the total number of customer records.
-- ==========================================

SELECT COUNT(*) AS total_customers
FROM shopping_trends;



-- ==========================================
-- QUERY 3: AVERAGE CUSTOMER AGE
-- Purpose: Determine the average age of customers.
-- ==========================================

SELECT ROUND(AVG(age), 2) AS average_age
FROM shopping_trends;



-- ==========================================
-- QUERY 4: GENDER DISTRIBUTION
-- Purpose: Determine the number of customers by gender.
-- ==========================================

SELECT gender,
COUNT(*) AS total_customers
FROM shopping_trends
GROUP BY gender
ORDER BY total_customers DESC;



-- ==========================================
-- QUERY 5: CUSTOMER DISTRIBUTION BY LOCATION
-- Purpose: Identify locations with the highest number of customers.
-- ==========================================

SELECT location,
COUNT(*) AS total_customers
FROM shopping_trends
GROUP BY location
ORDER BY total_customers DESC;

-- ==========================================
-- QUERY 6: CUSTOMER SUBSCRIPTION STATUS
-- Purpose: Compare subscribed and non-subscribed customers.
-- ==========================================

SELECT subscription_status,
COUNT(*) AS total_customers
FROM shopping_trends
GROUP BY subscription_status
ORDER BY total_customers DESC;



-- ==========================================
-- QUERY 7: MOST POPULAR PRODUCT CATEGORY
-- Purpose: Identify the most frequently purchased product categories.
-- ==========================================

SELECT category,
COUNT(*) AS total_customers
FROM shopping_trends
GROUP BY category
ORDER BY total_customers DESC;



-- ==========================================
-- QUERY 8: AVERAGE CUSTOMER REVIEW RATING
-- Purpose: Determine the overall customer satisfaction level.
-- ==========================================

SELECT ROUND(AVG(review_rating), 2) AS average_review_rating
FROM shopping_trends;



-- ==========================================
-- QUERY 9: DISCOUNT USAGE
-- Purpose: Determine how many customers used discounts.
-- ==========================================

SELECT discount_applied,
COUNT(*) AS total_customers
FROM shopping_trends
GROUP BY discount_applied
ORDER BY total_customers DESC;

-- ==========================================
-- QUERY 10: SHOPPING FREQUENCY DISTRIBUTION
-- Purpose: Determine how often customers make purchases.
-- ==========================================

SELECT frequency_of_purchases,
COUNT(*) AS total_customers
FROM shopping_trends
GROUP BY frequency_of_purchases
ORDER BY total_customers DESC;