-- singular test for macros example

    SELECT * FROM airbnb.raw.dim_listing_cleaned WHERE
        LISTING_ID IS NULL OR
        LISTING_NAME IS NULL OR
        ROOM_TYPE IS NULL OR
        MINIMUM_NIGHTS IS NULL OR
        HOST_ID IS NULL OR
        PRICE IS NULL OR
        CREATED_AT IS NULL OR
        UPDATED_AT IS NULL OR
        
 FALSE
