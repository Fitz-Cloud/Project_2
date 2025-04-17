select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select customer_id
from PROJECT_2.PUBLIC.fact_order_details
where customer_id is null



      
    ) dbt_internal_test