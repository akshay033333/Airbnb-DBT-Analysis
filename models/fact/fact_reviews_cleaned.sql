{{
    config(
        materialized = 'incremental',   
        on_schema_change = 'fail'
    )
}}
WITH scr_reviews as (
    select * from {{ref('scr_reviews')}}
)
select 
 {{ dbt_utils.surrogate_key(['listing_id', 'review_date', 'reviewer_name', 'review_text']) }} as review_id,
 * from scr_reviews
where review_text is not null 



 