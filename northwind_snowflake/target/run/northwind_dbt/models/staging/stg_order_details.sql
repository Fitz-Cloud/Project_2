
  create or replace   view PROJECT_2.PUBLIC.stg_order_details
  
   as (
    select * from PROJECT_2.PUBLIC.order_details
  );

