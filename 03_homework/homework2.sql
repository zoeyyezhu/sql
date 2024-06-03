#SELECT
#Write a query that returns everything in the customer table.
select * from customer;
#Write a query that displays all of the columns and 10 rows from the customer table, sorted by customer_last_name, then customer_first_ name.
SELECT * FROM customer
ORDER BY customer_last_name, customer_first_name
LIMIT 10;

#WHERE
#Write a query that returns all customer purchases of product IDs 4 and 9.
SELECT * 
FROM customer_purchases 
WHERE product_id IN (4, 9);


#1.Write a query that returns all customer purchases and a new calculated column 'price' (quantity * cost_to_customer_per_qty), filtered by vendor IDs between 8 and 10 (inclusive) using either:
#i.two conditions using AND
SELECT *, quantity * cost_to_customer_per_qty AS price
FROM customer_purchases 
WHERE vendor_id >= 8 AND vendor_id <= 10;

#ii.one condition using BETWEEN
SELECT *, quantity * cost_to_customer_per_qty AS price
FROM customer_purchases 
WHERE vendor_id BETWEEN 8 AND 10;

#CASE
#1.
SELECT 
    product_id, 
    product_name, 
    CASE 
        WHEN product_qty_type = 'unit' THEN 'unit'
        ELSE 'bulk'
    END AS prod_qty_type_condensed
FROM 
    product;
	
	
#2.
SELECT 
    product_id, 
    product_name, 
    CASE 
        WHEN product_qty_type = 'unit' THEN 'unit'
        ELSE 'bulk'
    END AS prod_qty_type_condensed,
    CASE
        WHEN LOWER(product_name) LIKE '%pepper%' THEN 1
        ELSE 0
    END AS pepper_flag
FROM 
    product;	

#JOIN
SELECT 
    v.*, 
    vba.*
FROM 
    vendor AS v
INNER JOIN 
    vendor_booth_assignments AS vba 
ON 
    v.vendor_id = vba.vendor_id
ORDER BY 
    v.vendor_name, 
    vba.market_date;
