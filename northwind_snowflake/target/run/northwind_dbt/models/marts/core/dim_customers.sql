
  
    

        create or replace transient table PROJECT_2.PUBLIC.dim_customers
         as
        (select * from PROJECT_2.PUBLIC.stg_customers
        );
      
  