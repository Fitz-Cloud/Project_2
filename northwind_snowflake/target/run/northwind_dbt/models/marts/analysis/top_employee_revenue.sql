
  
    

        create or replace transient table PROJECT_2.PUBLIC.top_employee_revenue
         as
        (

select
  e.employee_key,
  e.first_name || ' ' || e.last_name as employee_name,
  sum(f.total_revenue) as total_revenue
from PROJECT_2.PUBLIC.fact_order_details f
join PROJECT_2.PUBLIC.dim_employees e on f.employee_id = e.employee_id
group by e.employee_key, employee_name
order by total_revenue desc
        );
      
  