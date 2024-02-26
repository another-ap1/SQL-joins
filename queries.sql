-- write your queries here

SELECT * FROM owners o LEFT JOIN vehicles v ON o.id = v.owner_id;

SELECT o.first_name, o.last_name, COUNT(*) AS total 
FROM owners o 
JOIN vehicles v 
ON o.id = v.owner_id 
GROUP BY o.first_name, o.last_name 
ORDER BY total;

SELECT o.first_name, o.last_name, CEILING(AVG(v.price)) AS average_price, COUNT(*) AS count 
FROM owners o JOIN vehicles v ON o.id = v.owner_id 
GROUP BY o.first_name, o.last_name 
HAVING COUNT(o.id) > 1 AND CEILING(AVG(price)) > 10000 
ORDER BY count DESC;