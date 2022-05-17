

      create or replace transient table analytics.dbt_nigel.snowflake_cumulative_sales  as
      (select distinct o_orderdate 
       , sum(o_totalprice) over (order by o_orderdate) cumulative_sales
from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS"
order by o_orderdate
      );
    