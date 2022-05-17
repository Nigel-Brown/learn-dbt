WITH sample_customer AS (
select * 
from snowflake_sample_data.tpch_sf1.customer
)

select
  c_custkey,
  c_mktsegment,
  
  CASE
    WHEN '' in ('BUILDING', 'HOUSEHOLD', 'FURNITURE')
      THEN 'segment_1'
    ELSE 'segment_2'
  END
 mkt_segment_adjusted
from sample_customer