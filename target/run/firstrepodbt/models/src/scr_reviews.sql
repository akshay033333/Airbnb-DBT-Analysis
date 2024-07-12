
  create or replace   view airbnb.raw.scr_reviews
  
   as (
    with raw_reviews as(
    select
        * 
    from 
        AIRBNB.raw.raw_reviews
)

select 
    LISTING_ID,
    DATE as review_date,
    REVIEWER_NAME,
    COMMENTS as review_text,
    sentiment as review_sentiment
from 
    raw_reviews
  );

