
  
    

        create or replace transient table airbnb.raw.dim_hosts_cleaned
         as
        (with  __dbt__cte__src_hosts as (
with src_host as(
    select
        * 
    from 
        airbnb.raw.raw_hosts
)

select 
    id as host_id,
    name as host_name,
    IS_SUPERHOST,
    created_at,
    updated_at
from 
    src_host
), src_hosts as(
    select * from __dbt__cte__src_hosts 
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
        );
      
  