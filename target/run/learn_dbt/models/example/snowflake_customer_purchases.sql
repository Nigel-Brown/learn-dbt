

      create or replace transient table analytics.dbt_nigel.snowflake_customer_purchases  as
      (with sample_customer as(
	select *
	from snowflake_sample_data.tpch_sf1.customer
),

sample_orders as (
	select * 
	from snowflake_sample_data.tpch_sf1.orders
)



select c.c_custkey
     , c.c_name
     , c.c_nationkey as nation
     , sum(o.o_totalprice) as total_order_price
from sample_customer c
left join sample_orders o
on c.c_custkey = o.o_custkey
group by 1,2,3
      );
    