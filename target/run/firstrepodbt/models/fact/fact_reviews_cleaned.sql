
  
    

        create or replace transient table airbnb.raw.fact_reviews_cleaned
         as
        (
WITH  __dbt__cte__scr_reviews as (
with raw_reviews as(
    select
        * 
    from 
        airbnb.raw.raw_reviews
)


select 
    LISTING_ID,
    DATE as review_date,
    REVIEWER_NAME,
    COMMENTS as review_text,
    sentiment as review_sentiment
from 
    raw_reviews
), scr_reviews as (
    select * from __dbt__cte__scr_reviews
)
select 
 md5(cast(coalesce(cast(listing_id as 
    varchar
), '') || '-' || coalesce(cast(review_date as 
    varchar
), '') || '-' || coalesce(cast(reviewer_name as 
    varchar
), '') || '-' || coalesce(cast(review_text as 
    varchar
), '') as 
    varchar
)) as review_id,
 * from scr_reviews
where review_text is not null
        );
      
  