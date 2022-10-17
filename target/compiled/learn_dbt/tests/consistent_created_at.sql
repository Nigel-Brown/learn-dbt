select *
from  airbnb.dev.dim_listings_cleansed l
inner join airbnb.dev.fact_reviews f
using (listing_id) 
where l.created_at >= f.review_date