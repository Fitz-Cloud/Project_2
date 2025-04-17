-- back compat for old kwarg name
  
  begin;
    
        
            
                
                
            
                
                
            
        
    

    

    merge into PROJECT_2.PUBLIC.fact_order_details as DBT_INTERNAL_DEST
        using PROJECT_2.PUBLIC.fact_order_details__dbt_tmp as DBT_INTERNAL_SOURCE
        on (
                    DBT_INTERNAL_SOURCE.order_id = DBT_INTERNAL_DEST.order_id
                ) and (
                    DBT_INTERNAL_SOURCE.product_id = DBT_INTERNAL_DEST.product_id
                )

    
    when matched then update set
        "ORDER_ID" = DBT_INTERNAL_SOURCE."ORDER_ID","PRODUCT_ID" = DBT_INTERNAL_SOURCE."PRODUCT_ID","CUSTOMER_ID" = DBT_INTERNAL_SOURCE."CUSTOMER_ID","EMPLOYEE_ID" = DBT_INTERNAL_SOURCE."EMPLOYEE_ID","SHIPPER_ID" = DBT_INTERNAL_SOURCE."SHIPPER_ID","ORDER_DATE" = DBT_INTERNAL_SOURCE."ORDER_DATE","TOTAL_REVENUE" = DBT_INTERNAL_SOURCE."TOTAL_REVENUE","AVG_REVENUE" = DBT_INTERNAL_SOURCE."AVG_REVENUE","MAX_REVENUE" = DBT_INTERNAL_SOURCE."MAX_REVENUE","MIN_REVENUE" = DBT_INTERNAL_SOURCE."MIN_REVENUE","LINE_COUNT" = DBT_INTERNAL_SOURCE."LINE_COUNT","REVENUE_RANK" = DBT_INTERNAL_SOURCE."REVENUE_RANK"
    

    when not matched then insert
        ("ORDER_ID", "PRODUCT_ID", "CUSTOMER_ID", "EMPLOYEE_ID", "SHIPPER_ID", "ORDER_DATE", "TOTAL_REVENUE", "AVG_REVENUE", "MAX_REVENUE", "MIN_REVENUE", "LINE_COUNT", "REVENUE_RANK")
    values
        ("ORDER_ID", "PRODUCT_ID", "CUSTOMER_ID", "EMPLOYEE_ID", "SHIPPER_ID", "ORDER_DATE", "TOTAL_REVENUE", "AVG_REVENUE", "MAX_REVENUE", "MIN_REVENUE", "LINE_COUNT", "REVENUE_RANK")

;
    commit;