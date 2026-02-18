.system clear
.mode table

-- QNS (1):
SELECT title, rating,
CASE
WHEN rating>=90 THEN 'Excellent'
WHEN rating BETWEEN 80 AND 89 THEN 'Good'
WHEN rating<80 THEN 'Average'
END AS BASED_ON_RATING
FROM games;

-- QNS (2):
SELECT title , price_usd,
CASE 
WHEN price_usd=0 THEN 'Free'
WHEN price_usd<=15 THEN 'Budget'
WHEN price_usd>15 THEN 'Premium'
END AS Price_Categories
FROM games;

-- QNS (3)
SELECT genre, COUNT(*) AS Total_Games
FROM games
GROUP BY genre;

-- QNS(4)
SELECT platform,AVG(rating) AS AVG_Rating
FROM  games
GROUP BY platform;

-- QNS(5)
SELECT genre, MAX(global_sales_million) AS MAX_Global_Sales
FROM games
GROUP BY genre;

-- QNS(6)
SELECT publisher,AVG(rating) AS Avg_Rating
FROM games 
GROUP BY publisher
HAVING Avg_Rating>90;

-- QNS(7)
SELECT title,
CASE 
WHEN global_sales_million>100 THEN 'Blockbuster'
WHEN global_sales_million BETWEEN 30 AND 100 THEN 'Hit'
WHEN global_sales_million<30 THEN 'Flop'
END AS Games_Based_On_Global_Sales
FROM games;

-- QNS(8)
SELECT platform,COUNT(*) AS Total_Games_By_Platform
FROM games
WHERE release_year>=2016
GROUP BY platform;

-- QNS(9)
SELECT genre,sum(global_sales_million) AS Total_Global_Sales
FROM games
GROUP BY genre
HAVING Total_Global_Sales>100;

-- QNS(10)
SELECT AVG(rating) AS Avg_Rating,
CASE
WHEN price_usd=0 THEN 'Free'
ELSE 'Paid'
END AS Price_Category
FROM games
GROUP BY Price_Category;

-- QNS(11)
SELECT publisher,COUNT(*) AS TOTAL_GAM
FROM games
GROUP BY publisher
HAVING TOTAL_GAM>2;

-- QNS(12)
SELECT platform,genre,AVG(rating) AS AVG_Rating
FROM games
GROUP BY platform,genre;

-- QNS(13)
SELECT title,rating
FROM games
ORDER BY rating DESC
LIMIT 3;

-- QNS(14)
SELECT platform,AVG(global_sales_million) AS AVG_GLOBAL_SALES
FROM games
GROUP BY platform
ORDER BY AVG_GLOBAL_SALES ASC
LIMIT 1;

-- QNS(15)
SELECT platform,genre, COUNT(*) AS common
FROM games
GROUP BY platform,genre
ORDER BY common DESC
LIMIT 1;
