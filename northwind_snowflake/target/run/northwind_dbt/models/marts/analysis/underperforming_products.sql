
  
    

        create or replace transient table Project_2.public.underperforming_products
         as
        (

select
  p.product_id,
  p.product_name,
  p.units_in_stock,
  coalesce(f.total_revenue, 0) as total_revenue
from Project_2.public.dim_products p
left join (
    select
      product_id,
      sum(total_revenue) as total_revenue
    from Project_2.public.fact_order_details
    group by product_id
) f on p.product_id = f.product_id
where p.units_in_stock > 10
  and coalesce(f.total_revenue, 0) < 1000
order by total_revenue asc
        );
      
  