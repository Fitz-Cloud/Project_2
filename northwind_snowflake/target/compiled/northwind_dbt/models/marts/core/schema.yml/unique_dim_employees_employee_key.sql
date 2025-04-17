
    
    

select
    employee_key as unique_field,
    count(*) as n_records

from PROJECT_2.PUBLIC.dim_employees
where employee_key is not null
group by employee_key
having count(*) > 1


