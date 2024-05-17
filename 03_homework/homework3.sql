#Aggrate
#1
SELECT vendor_id, COUNT(*) AS booth_rental_count
FROM vendor_booth_assignments
GROUP BY vendor_id;

#2
SELECT a.customer_id, customer_first_name, customer_last_name
FROM customer_purchases a
join customer b
on a.customer_id=b.customer_id
GROUP BY a.customer_id,customer_first_name, customer_last_name
HAVING SUM(quantity* cost_to_customer_per_qty) > 2000
ORDER BY customer_last_name,customer_first_name;

#Temp Table
CREATE TEMPORARY TABLE temp.new_vendor AS
SELECT * FROM vendor;

INSERT INTO temp.new_vendor (vendor_id, vendor_name, vendor_type, vendor_owner_first_name, vendor_owner_last_name)
VALUES (10, 'Thomass Superfood Store', 'Fresh Focused', 'Thomas','Rosenthal');


# date
#1
SELECT 
    customer_id,
    STRFTIME('%m', market_date) AS month,
    STRFTIME('%Y', market_date) AS year
FROM 
    customer_purchases;

	
#2
SELECT 
    customer_id,
    SUM(quantity * cost_to_customer_per_qty) AS total_spent
FROM 
    customer_purchases
WHERE 
    STRFTIME('%m', market_date) = '04'
    AND STRFTIME('%Y', market_date) = '2019'
GROUP BY 
    customer_id;
