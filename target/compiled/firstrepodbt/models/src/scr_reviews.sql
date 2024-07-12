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