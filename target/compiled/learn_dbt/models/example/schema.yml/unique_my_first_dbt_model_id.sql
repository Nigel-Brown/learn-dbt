
    
    

select
    id as unique_field,
    count(*) as n_records

from analytics.dbt_nigel.first_model
where id is not null
group by id
having count(*) > 1


