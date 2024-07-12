with  __dbt__cte__scr_listing as (
WITH raw_listings AS (
    SELECT
        *
    FROM airbnb.raw.raw_listings
)
SELECT
    id AS listing_id,
    name AS listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price AS price_str,
    created_at,
    updated_at
FROM
    raw_listings
), scr_listing as(
    select * from __dbt__cte__scr_listing
)

select 
    listing_id,
    listing_name,
    ROOM_TYPE,
    case 
    when minimum_nights =0 then 1
    else minimum_nights end as minimum_nights,
    host_id,
    replace(price_str,'$')::Number(
        10,
        2
    ) as price,
    created_at,
    updated_at
from 
    scr_listing