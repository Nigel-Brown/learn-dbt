with orders as (
	select *
	from snowflake_sample_data.tpch_sf1.orders
)

select distinct
  o_orderdate 
, sum(o_totalprice) over (order by o_orderdate) cumulative_sales
from orders


where year(o_orderdate) = 1996



order by o_orderdate