
  
    

        create or replace transient table PROJECT_2.PUBLIC.top_customer_revenue
         as
        (

select
  c.customer_id,
  c.company_name as customer_name,
  sum(f.total_revenue) as total_revenue
from PROJECT_2.PUBLIC.fact_order_details f
join PROJECT_2.PUBLIC.dim_customers c using (customer_id)
group by c.customer_id, c.company_name
order by total_revenue desc
        );
      
  