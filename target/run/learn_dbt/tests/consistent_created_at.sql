select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select *
from  airbnb.dev.dim_listings_cleansed l
inner join airbnb.dev.fact_reviews f
using (listing_id) 
where l.created_at >= f.review_date
      
    ) dbt_internal_test