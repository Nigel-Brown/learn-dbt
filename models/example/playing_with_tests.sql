WITH sample_customer AS (
select * 
from {{ source('sample', 'customer') }}
)

select
  c_custkey,
  c_mktsegment,
  {{ rename_segments(c_mktsegment)}} mkt_segment_adjusted
from sample_customer