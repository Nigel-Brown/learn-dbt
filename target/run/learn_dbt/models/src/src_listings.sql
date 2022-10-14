
  create or replace  view airbnb.dev.src_listings
  
   as (
    with raw_listings as (
    select * from AIRBNB.RAW.RAW_LISTINGS
)
select 
 id as listing_id
 ,name as listing_name
 ,listing_url
 ,room_type
 ,minimum_nights
 ,host_id
 ,price as price_str
 ,created_at
 ,updated_at
from raw_listings
  );
