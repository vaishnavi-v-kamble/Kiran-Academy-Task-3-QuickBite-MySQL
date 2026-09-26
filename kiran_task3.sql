CREATE DATABASE quickbite;
USE quickbite;

CREATE TABLE restaurants (
restaurant_id INT PRIMARY KEY,
restaurant_name VARCHAR(100),
cuisine VARCHAR(50),
city VARCHAR(50),
rating DOUBLE,
avg_order_value DOUBLE,
orders_count INT,
delivery_fee DOUBLE,
est_delivery_time INT,
owner_name VARCHAR(100),
brand VARCHAR(100)
);

insert into restaurants values(101,'Spice Route','North Indian','Pune', 4.5 ,420, 18500,39,32,'Amit Sharma','Spice Route');
INSERT INTO restaurants
(restaurant_id, restaurant_name, cuisine, city, rating, avg_order_value,
 orders_count, delivery_fee, est_delivery_time, owner_name, brand)
VALUES
(102, 'South Tiffin House', 'South Indian', 'Pune', 4.3, 260, 14300, 29, 25, 'Priya Nair', 'South Tiffin'),
 
(103, 'Mumbai Zaika', 'Maharashtrian', 'Mumbai', 4.1, 350, 22000, 49, 38, 'Rohit Patil', 'Zaika Foods'),
 
(104, 'Burger Garage', 'Fast Food', 'Pune', 4.4, 310, 27500, 29, 30, 'Neha Joshi', 'Burger Garage'),

(105, 'Pizza Planet', 'Italian', 'Mumbai', 4.6, 520, 31000, 19, 35, 'Vikas Mehta', 'Pizza Planet'),

(106, 'Biryani Junction', 'Biryani', 'Hyderabad', 4.7, 480, 42000, 29, 40, 'Arjun Reddy', 'Biryani Junction'),

(107, 'Chai & Snacks Cafe', 'Cafe', 'Pune', 4.2, 180, 19500, 19, 22, 'Sneha Kulkarni', 'Chai & Snacks'),

(108, 'Royal Thali', 'North Indian', 'Delhi', 4.0, 390, 16800, 39, 42, 'Manish Gupta', 'Royal Thali'),

(109, 'Tandoori Tales', 'Mughlai', 'Delhi', 4.5, 610, 12100, 59, 45, 'Karan Singh', 'Tandoori Tales'),

(110, 'Coastal Curry', 'Seafood', 'Goa', 4.6, 750, 9800, 69, 48, 'Riya Fernandes', 'Coastal Curry'),

(111, 'Green Bowl', 'Healthy', 'Bengaluru', 4.3, 330, 11600, 39, 28, 'Ananya Rao', 'Green Bowl'),

(112, 'Dosa Factory', 'South Indian', 'Bengaluru', 4.5, 240, 27800, 19, 24, 'Suresh Kumar', 'Dosa Factory'),

(113, 'Punjabi Dhaba', 'Punjabi', 'Chandigarh', 4.1, 370, 13200, 49, 40, 'Gurpreet Singh', 'Punjabi Dhaba'),

(114, 'The Wok House', 'Chinese', 'Pune', 4.4, 450, 18400, 39, 36, 'Rahul Jain', 'Wok House'),

(115, 'Sushi Street', 'Japanese', 'Mumbai', 4.8, 920, 7600, 89, 50, 'Meera Shah', 'Sushi Street'),

(116, 'Cafe Mocha', 'Cafe', 'Pune', 4.2, 290, 15400, 29, 27, 'Ishita Deshmukh', 'Cafe Mocha'),

(117, 'Street Tadka', 'Indian', 'Nagpur', 3.9, 220, 10200, 19, 35, 'Akash Verma', 'Street Tadka'),

(118, 'Hyderabadi House', 'Biryani', 'Hyderabad', 4.6, 430, 35500, 29, 37, 'Faizan Ali', 'Hyderabadi House'),

(119, 'Pasta Palace', 'Italian', 'Bengaluru', 4.5, 560, 10900, 49, 41, 'Nikhil Rao', 'Pasta Palace'),

(120, 'Sweet Cravings', 'Desserts', 'Pune', 4.7, 280, 20500, 19, 26, 'Pooja Patil', 'Sweet Cravings'),

(121, 'Kebab Kingdom', 'Mughlai', 'Delhi', 4.4, 530, 14100, 59, 44, 'Sameer Khan', 'Kebab Kingdom'),

(122, 'Taco Town', 'Mexican', 'Mumbai', 4.2, 460, 8700, 49, 39, 'Kabir Malhotra', 'Taco Town'),

(123, 'Farm Fresh', 'Healthy', 'Pune', 4.6, 390, 12500, 29, 30, 'Rohan Kulkarni', 'Farm Fresh'),

(124, 'Midnight Bites', 'Fast Food', 'Pune', 4.0, 250, 24800, 39, 34, 'Tanvi Shah', 'Midnight Bites'),

(125, 'Kolkata Kitchen', 'Bengali', 'Kolkata', 4.3, 340, 11400, 39, 43, 'Soham Sen', 'Kolkata Kitchen'),

(126, 'Kerala Cafe', 'South Indian', 'Kochi', 4.5, 310, 12700, 29, 31, 'Akhil Menon', 'Kerala Cafe'),

(127, 'Royal Rajputana', 'Rajasthani', 'Jaipur', 4.7, 470, 9200, 49, 46, 'Vivek Rathore', 'Rajputana Foods'),

(128, 'Namma Meals', 'South Indian', 'Bengaluru', 4.4, 275, 23900, 19, 27, 'Kavya Shetty', 'Namma Meals'),

(129, 'Lassi Lab', 'Beverages', 'Pune', 4.1, 160, 18200, 19, 21, 'Dev Malhotra', 'Lassi Lab'),

(130, 'Flame & Grill', 'BBQ', 'Mumbai', 4.8, 880, 8300, 79, 52, 'Aditya Kapoor', 'Flame & Grill');

select * from restaurants;

#Task 1. Find restaurants having rating greater than 4.5.
select restaurant_name , rating from restaurants where rating > 4.5;

#Task 2. Find restaurants whose average order value is less than 300.
select restaurant_name , avg_order_value from restaurants where avg_order_value < 300;

#Task 3. Find all restaurants located in Pune
select restaurant_name , city from restaurants where city='Pune';

#Task 4. Find restaurants having more than 20,000 orders.
select restaurant_name ,orders_count from restaurants where orders_count > 20000;

#Task 5. Find restaurants whose delivery time is greater than 40 minutes.
select restaurant_name ,est_delivery_time from restaurants where est_delivery_time > 40;

#Task 6. Find restaurants whose rating is between 4.2 and 4.7.
select restaurant_name from restaurants where rating between 4.2 and 4.7;

#Task 7. Find restaurants belonging to South Indian, Italian or Biryani cuisine using IN
select restaurant_name,cuisine from restaurants where cuisine in ('South Indian', 'Italian','Biryani');

#Task 8. Find restaurants owned by a person whose name contains 'Patil'.
SELECT restaurant_name, owner_name FROM restaurants WHERE owner_name LIKE '%Patil%';

#Task 9. Find restaurants where brand matches the restaurant name.
SELECT restaurant_name,brand FROM restaurants WHERE brand = restaurant_name;

#Task 10. Find restaurants having delivery fee less than 30.
SELECT restaurant_name, delivery_fee FROM restaurants WHERE delivery_fee < 30;

#4. ■ LEVEL 2 — Recommendation Team
#Task 11. Find the 5 restaurants with the highest number of orders.
SELECT *FROM restaurants ORDER BY orders_count DESC LIMIT 5;

#Task 12. Find the 5 restaurants with the lowest average order value.
SELECT * FROM restaurants ORDER BY avg_order_value ASC LIMIT 5;

#Task 13. Display restaurants from highest rating to lowest rating.
SELECT * FROM restaurants ORDER BY rating DESC;

#Task 14. Display only unique cuisines using DISTINCT.
select distinct cuisine from restaurants;

#Task 15. Display Restaurant and Rating using aliases Restaurant_Name and Customer_Rating.
select restaurant_name AS Restaurant_Name , rating AS Customer_Rating from restaurants;

#Task 16. Display restaurant name, owner and brand only.
select restaurant_name, owner_name ,brand from restaurants;

#Task 17. Sort restaurants by city and then rating descending.
SELECT * from restaurants ORDER BY city ASC, rating DESC;

#Task 18. Find the 5 highest-rated restaurants with more than 10,000 orders.
SELECT * FROM restaurants WHERE orders_count > 10000 ORDER BY rating DESC LIMIT 5;

#Task 19. Find the 3 most ordered restaurants in Pune.
SELECT * FROM restaurants WHERE city = 'Pune' ORDER BY orders_count DESC LIMIT 3;

#Task 20. Find the 5 restaurants with the highest delivery fee.
SELECT * FROM restaurants ORDER BY delivery_fee DESC LIMIT 5;

##5. ■ LEVEL 3 — Find the Hidden Restaurants

#Task 21. Find restaurant names starting with S.
SELECT * FROM restaurants WHERE restaurant_name LIKE 'S%';

#Task 22. Find restaurant names ending with 'House'.
SELECT * FROM restaurants WHERE restaurant_name LIKE '%House';

#Task 23. Find restaurant names containing 'Cafe'.
SELECT * FROM restaurants WHERE restaurant_name LIKE '%Cafe%';

#Task 24. Find cuisines containing 'Indian'.
SELECT * FROM restaurants WHERE cuisine LIKE '%Indian%';

#Task 25. Find restaurant names having exactly 5 characters.
SELECT * FROM restaurants WHERE restaurant_name LIKE '_____';

#Task 26. Find owners whose name contains 'Raj'.
SELECT * FROM restaurants WHERE owner_name LIKE '%Raj%';

#Task 27. Find brands whose name contains 'Foods'.
SELECT * FROM restaurants WHERE brand LIKE '%Foods%';

#Task 28. Find cities whose name starts with 'P'.
SELECT * FROM restaurants WHERE city LIKE 'P%';

#6. ■ LEVEL 4 — Business Team

#Task 29. Find restaurants with average order value greater than ■400 AND rating greater than 4.5.
SELECT * FROM restaurants WHERE avg_order_value > 400 AND rating >4.5;

#Task 30. Find restaurants with orders greater than 20,000 OR rating greater than 4.7.
SELECT * FROM restaurants WHERE orders_count > 20000 OR rating > 4.7;

#Task 31. Find restaurants that are NOT in Pune.
SELECT * FROM restaurants
 WHERE city <> 'Pune';

#Task 32. Find restaurants whose delivery time is between 25 and 40 minutes.
SELECT * FROM restaurants WHERE est_delivery_time BETWEEN 25 AND 40;

#Task 33. Find restaurants whose average order value is between ■300 and ■600.
SELECT * FROM restaurants WHERE avg_order_value BETWEEN 300 AND 600;

#Task 34. Find restaurants from Pune or Mumbai.
SELECT * FROM restaurants WHERE city IN ('Pune', 'Mumbai');

#Task 35. Find Fast Food restaurants with more than 20,000 orders.
SELECT * FROM restaurants WHERE cuisine = 'Fast Food' AND orders_count > 20000;

#Task 36. Find restaurants with rating greater than 4.5 and delivery fee below ■40.
SELECT * FROM restaurants WHERE rating > 4.5 AND delivery_fee < 40;

#Task 37. Find restaurants in Bengaluru with more than 10,000 orders.
SELECT * FROM restaurants WHERE city = 'Bengaluru' AND orders_count > 10000;

#Task 38. Find restaurants where owner name is not 'Rahul Jain'.
SELECT * FROM restaurants WHERE owner_name <> 'Rahul Jain';

#7. ■ LEVEL 5 — Boss Challenges
#Challenge 1 — Hidden Gem
#Find restaurants with rating above 4.5 but fewer than 10,000 orders.
SELECT * FROM restaurants WHERE rating > 4.5 AND orders_count < 10000;

#Challenge 2 — Cheap & Popular
#Find restaurants with average order value below ■300 and orders above 20,000.
SELECT * FROM restaurants WHERE avg_order_value < 300 AND orders_count > 20000;

#Challenge 3 — Fast Delivery
#Find restaurants with delivery time below 30 minutes and rating above 4.3.
SELECT * FROM restaurants WHERE est_delivery_time < 30 AND rating > 4.3;

#Challenge 4 — Trending Restaurants
#Find the 3 most ordered restaurants from Mumbai.
SELECT * FROM restaurants WHERE city = 'Mumbai' ORDER BY orders_count DESC LIMIT 3;

#Challenge 5 — Premium Restaurants
#Find restaurants whose average order value is greater than the average order value of all restaurants. Use AVG().
SELECT * FROM restaurants WHERE avg_order_value > (
    SELECT AVG(avg_order_value) FROM restaurants
);

#Challenge 6 — City Spotlight
#Find all restaurants from Pune and sort them by orders from highest to lowest
SELECT * FROM restaurants WHERE city = 'Pune' ORDER BY orders_count DESC;

#Challenge 7 — Cuisine Report
#Find all South Indian restaurants and display restaurant, city, rating and average order value.
SELECT restaurant_name, city, rating, avg_order_value FROM restaurants
WHERE cuisine = 'South Indian';

#Challenge 8 — High Value Partners
#Find restaurants where average order value is above ■500 and rating is at least 4.5.
SELECT * FROM restaurants WHERE avg_order_value > 500 AND rating >= 4.5;

## 8. ■ FINAL BOSS — CEO Challenge
#QuickBite CEO wants a report of the company's strongest restaurant partners. Display restaurant name, cuisine, city, rating,
average order value, orders count, delivery fee, owner and brand. Only consider restaurants with rating greater than 4.4,
orders greater than 10,000, and average order value between ■300 and ■700. Sort by orders from highest to lowest and
display only the top 5 restaurants.
Expected learning: Students should independently identify SELECT, WHERE, AND, BETWEEN, ORDER BY, DESC and
LIMIT.
#
SELECT restaurant_name, cuisine, city, rating, avg_order_value, orders_count, delivery_fee, owner_name, brand
FROM restaurants WHERE rating > 4.4
AND orders_count > 10000
AND avg_order_value BETWEEN 300 AND 700
ORDER BY orders_count DESC
LIMIT 5;
