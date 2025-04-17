
  
    

        create or replace transient table PROJECT_2.PUBLIC.dim_employees
         as
        (with source_data as (
    select * from PROJECT_2.PUBLIC.stg_employees
),
scd2 as (
    select 
        md5(cast(coalesce(cast(employee_id as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT)) as employee_key,
        *,
        current_timestamp as dbt_updated_at
    from source_data
)
select * from scd2
        );
      
  