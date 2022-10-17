

with  __dbt__cte__src_reviews as (
with raw_reviews as (
    select * from airbnb.raw.raw_reviews
)
select 
 listing_id
 ,date as review_date
 ,reviewer_name
 ,comments as review_text
 ,sentiment as review_sentiment
from raw_reviews
),src_reviews as (
  select * from __dbt__cte__src_reviews
)
select 
 md5(cast(coalesce(cast(listing_id as TEXT), '') || '-' || coalesce(cast(review_date as TEXT), '') || '-' || coalesce(cast(reviewer_name as TEXT), '') || '-' || coalesce(cast(review_text as TEXT), '') as TEXT)) as review_id,
* from src_reviews
where review_text is not null

  and review_date > (select max(review_date) from airbnb.dev.fact_reviews)
