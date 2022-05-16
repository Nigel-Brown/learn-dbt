
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view' , alias='first_model') }}

with source_data as (

    select 1 as id
    union all
    select null as id
    union all
    select 3 as id

)

select * 
from source_data


/*
select *, {{ var('my_first_variable') }} as first_variable
from source_data
where id >= {{ var('my_third_variable') }}
*/

