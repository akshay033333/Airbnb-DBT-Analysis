with src_host as(
    select
        * 
    from 
        {{source('airbnb','hosts')}}
)

select 
    id as host_id,
    name as host_name,
    IS_SUPERHOST,
    created_at,
    updated_at
from 
    src_host
