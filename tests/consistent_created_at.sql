select *
from  {{ ref('dim_listings_cleansed')}} l
inner join {{ ref('fact_reviews')}} f
using (listing_id) 
where l.created_at >= f.review_date






