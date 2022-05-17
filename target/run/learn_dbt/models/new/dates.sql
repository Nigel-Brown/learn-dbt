

      create or replace transient table analytics.dbt_nigel.dates  as
      (

select *
from "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."DATE_DIM"
where d_date <=current_date


      );
    