SELECT ROUND( COUNT(CASE WHEN customer_pref_delivery_date = order_date THEN 'immediate' END) * 100 / COUNT(delivery_id), 2) AS immediate_percentage
FROM delivery;
