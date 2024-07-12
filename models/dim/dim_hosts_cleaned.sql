with src_hosts as(
    select * from {{ref('src_hosts')}} 
)
select 
    host_id,
    is_superhost,
    case when  host_name is not null then host_name
    else 'Anonymous' end as host_name,
    created_at,
    updated_at
from 
    src_hosts
