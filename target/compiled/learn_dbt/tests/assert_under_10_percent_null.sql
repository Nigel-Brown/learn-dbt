select sum (case when id is null then 1 else 0 end) / count(*) as total_nulls
from analytics.dbt.first_model
having sum (case when id is null then 1 else 0 end) / count(*) > .4