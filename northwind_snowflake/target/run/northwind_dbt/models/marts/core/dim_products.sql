
  
    

        create or replace transient table PROJECT_2.PUBLIC.dim_products
         as
        (select 
    p.product_id,
    p.product_name,
    p.supplier_id,
    s.company_name as supplier_name,
    p.category_id,
    c.category_name,
    p.quantity_per_unit,
    p.unit_price,
    p.units_in_stock,
    p.units_on_order,
    p.reorder_level,
    p.discontinued
from PROJECT_2.PUBLIC.stg_products p
left join PROJECT_2.PUBLIC.suppliers s on p.supplier_id = s.supplier_id
left join PROJECT_2.PUBLIC.categories c on p.category_id = c.category_id
        );
      
  