/* =========================================================
   OLIST E-COMMERCE DATA ANALYSIS – MYSQL
   ========================================================= */

/* 1. Total number of orders placed */
SELECT 
    COUNT(DISTINCT order_id) AS total_orders
FROM orders_data;


/* 2. Orders delivered vs cancelled */
SELECT 
    order_status,
    COUNT(*) AS total_orders
FROM orders_data
GROUP BY order_status;


/* 3. Total revenue generated */
SELECT 
    SUM(payment_value) AS total_revenue
FROM payments_data;


/* 4. Average order value (AOV) */
SELECT 
    AVG(order_total) AS avg_order_value
FROM (
    SELECT 
        order_id,
        SUM(payment_value) AS order_total
    FROM payments_data
    GROUP BY order_id
) t;


/* 5. Most popular payment method */
SELECT 
    payment_type,
    COUNT(*) AS usage_count
FROM payments_data
GROUP BY payment_type
ORDER BY usage_count DESC;


/* 6. Product categories generating the most revenue */
SELECT 
    p.product_category_name,
    SUM(oi.price) AS total_revenue
FROM order_items oi
JOIN products_data p 
    ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY total_revenue DESC
LIMIT 10;


/* 7. Average delivery time (in days) */
SELECT 
    AVG(
        DATEDIFF(
            order_delivered_customer_date,
            order_purchase_timestamp
        )
    ) AS avg_delivery_days
FROM orders_data
WHERE order_status = 'delivered';


/* 8. Average delivery delay by review score */
SELECT 
    r.review_score,
    AVG(
        DATEDIFF(
            o.order_delivered_customer_date,
            o.order_estimated_delivery_date
        )
    ) AS avg_delivery_delay
FROM orders_data o
JOIN order_reviews r 
    ON o.order_id = r.order_id
WHERE o.order_status = 'delivered'
GROUP BY r.review_score
ORDER BY r.review_score;


/* 9. Do late deliveries affect reviews? (Early / On Time / Late) */
SELECT
    r.review_score,
    CASE
        WHEN DATEDIFF(
            o.order_delivered_customer_date,
            o.order_estimated_delivery_date
        ) < 0 THEN 'Early'
        WHEN DATEDIFF(
            o.order_delivered_customer_date,
            o.order_estimated_delivery_date
        ) = 0 THEN 'On Time'
        ELSE 'Late'
    END AS delivery_status,
    COUNT(*) AS order_count
FROM orders_data o
JOIN order_reviews r 
    ON o.order_id = r.order_id
WHERE o.order_status = 'delivered'
GROUP BY r.review_score, delivery_status
ORDER BY r.review_score;


/* 10. Which state places the most orders? */
SELECT 
    c.customer_state,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM orders_data o
JOIN customers_data c 
    ON o.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY total_orders DESC;
