{{ config (
  materialized = 'table' )
}}

with fact_reviews as (
  select * from {{ ref('fact_reviews')}}
),
full_moon_dates as (
  select * from {{ ref('seed_full_moon_dates')}}
)

select r.*
       ,case when fm.full_moon_date is null then 'not full moon'
        else 'full moon'
        end as is_full_moon
from fact_reviews as r
left join full_moon_dates fm
on to_date(r.review_date) = dateadd(day, 1, fm.full_moon_date)