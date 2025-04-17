select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select employee_key
from PROJECT_2.PUBLIC.top_employee_revenue
where employee_key is null



      
    ) dbt_internal_test