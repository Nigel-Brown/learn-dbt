

      create or replace transient table analytics.dbt.first_model  as
      (/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/



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
select *, True as first_variable
from source_data
where id >= 1
*/
      );
    