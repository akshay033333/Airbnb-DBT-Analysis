with scr_listing as(
    select * from {{ref('scr_listing')}}
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