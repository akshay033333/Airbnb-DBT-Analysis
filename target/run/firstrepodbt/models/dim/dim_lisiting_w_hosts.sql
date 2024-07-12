
  
    

        create or replace transient table airbnb.raw.dim_lisiting_w_hosts
         as
        (WITH
l AS (
    SELECT
        *
    FROM
        airbnb.raw.dim_listing_cleaned
),
h AS (
    SELECT * 
    FROM airbnb.raw.dim_hosts_cleaned
)

SELECT 
    l.listing_id,
    l.listing_name,
    l.room_type,
    l.minimum_nights,
    l.price,
    l.host_id,
    h.host_name,
    h.IS_SUPERHOST as host_is_superhost,
    l.created_at,
    GREATEST(l.updated_at, h.updated_at) as updated_at
FROM l
LEFT JOIN h ON (h.host_id = l.host_id)
        );
      
  