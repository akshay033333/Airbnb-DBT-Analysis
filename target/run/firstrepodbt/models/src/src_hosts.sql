
  create or replace   view airbnb.raw.src_hosts
  
   as (
    with src_host as(
    select
        * 
    from 
        AIRBNB.RAW.raw_hosts
)

select 
    id as host_id,
    name as host_name,
    is_superhost,
    created_at,
    updated_at
from 
    src_host
  );

