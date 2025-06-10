// 1) Write an SQL query that extracts the year, month, and day from the date attribute for the orders table. Display them on the screen as three separate attributes along with the id attribute and the original date attribute (a total of 5 attributes).
SELECT 
    id,
    date,
    YEAR(date) AS year,
    MONTH(date) AS month,
    DAY(date) AS day
FROM orders;

// 2) Write an SQL query that adds one day to the date attribute for the orders table. Display the id attribute, the original date attribute, and the result of the addition.
SELECT 
    id,
    date,
    DATE_ADD(date, INTERVAL 1 DAY) AS order_date_plus_1
FROM orders;

// 3) Write an SQL query that displays the number of seconds since the beginning of the countdown for the date attribute for the orders table (shows its timestamp value). To do this, you need to find and apply the necessary function. Display the id attribute, the original date attribute, and the result of the function.
SELECT 
    id,
    date,
    UNIX_TIMESTAMP(date) AS timestamp_seconds
FROM orders;


// 4) Write an SQL query that counts how many rows in the orders table have a date attribute between 1996-07-10 00:00:00 and 1996-10-08 00:00:00.
SELECT COUNT(*) AS rows_in_range
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

// 5) Write an SQL query that prints the id attribute, the date attribute, and the JSON object {"id": , "date": } for the orders table. Use the function to create the JSON object.
SELECT 
    id,
    date,
    JSON_OBJECT('id', id, 'date', date) AS json_result
FROM orders;
