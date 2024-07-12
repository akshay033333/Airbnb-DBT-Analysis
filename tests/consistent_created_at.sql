
select * from {{ref('dim_listing_cleaned')}} as dl
join {{ref('fact_reviews_cleaned')}} as fr on dl.listing_id=fr.listing_id
where fr.review_date<dl.created_at