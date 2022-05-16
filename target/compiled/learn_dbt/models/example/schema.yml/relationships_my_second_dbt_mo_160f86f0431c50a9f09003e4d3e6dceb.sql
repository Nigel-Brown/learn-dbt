
    
    

with child as (
    select id as from_field
    from analytics.dbt.my_second_dbt_model
    where id is not null
),

parent as (
    select id as to_field
    from analytics.dbt.first_model
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


