#3.Calculate the total revenue generated by each store in dollars.alter
#I need 4 tables: 
#store (store_id is the key with inventory)
#inventory (iventory_id is the key with rental)
#rental (rental_id is the key with payment)
#payment (gives me the amount)

USE sakila;

SELECT s.store_id, SUM(p.amount) AS Total_Revenue
FROM payment p
JOIN rental r ON p.rental_id = r.rental_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN store s ON i.store_id = s.store_id
GROUP BY s.store_id;