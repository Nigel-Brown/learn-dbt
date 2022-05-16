

      create or replace transient table analytics.dbt.my_second_dbt_model  as
      (-- Use the `ref` function to select from other models

select *
from analytics.dbt.first_model
/*
union all
select 7 as id, True as first_variable
*/
      );
    