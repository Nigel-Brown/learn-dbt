

      create or replace transient table analytics.dbt_nigel.my_second_dbt_model  as
      (-- Use the `ref` function to select from other models

select *
from analytics.dbt_nigel.first_model
/*
union all
select 7 as id, True as first_variable
*/
      );
    