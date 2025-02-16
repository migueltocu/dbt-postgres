
  
    

  create  table "dbt"."dev"."rep_returned_orders__dbt_tmp"
  
  
    as
  
  (
    SELECT 
    o.order_id,
    o.customer_id,
    o.order_date,
    o.status,
    c.first_name,
    c.last_name,
    p.amount
FROM "dbt"."dev"."stg_orders" o
LEFT JOIN "dbt"."dev"."stg_customers" c ON o.customer_id = c.customer_id
LEFT JOIN "dbt"."dev"."stg_payments" p ON o.order_id = p.order_id
WHERE o.status = 'returned'
  );
  