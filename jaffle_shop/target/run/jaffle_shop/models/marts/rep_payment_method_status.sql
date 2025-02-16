
  
    

  create  table "dbt"."dev"."rep_payment_method_status__dbt_tmp"
  
  
    as
  
  (
    SELECT 
    payment_method,
    SUM(CASE WHEN status = 'success' THEN amount ELSE 0 END) AS success,
    SUM(CASE WHEN status = 'failed' THEN amount ELSE 0 END) AS failed
FROM "dbt"."dev"."stg_payments"
GROUP BY payment_method
  );
  