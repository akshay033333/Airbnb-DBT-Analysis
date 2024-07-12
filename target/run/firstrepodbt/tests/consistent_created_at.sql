select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select * from airbnb.raw.dim_listing_cleaned as dl
join airbnb.raw.fact_reviews_cleaned as fr on dl.listing_id=fr.listing_id
where fr.review_date<dl.created_at
      
    ) dbt_internal_test