select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select product_id
from PROJECT_2.PUBLIC.obt_orders
where product_id is null



      
    ) dbt_internal_test