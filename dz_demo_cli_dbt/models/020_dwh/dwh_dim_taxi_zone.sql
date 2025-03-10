with stg_nyt_nytgreentaxizonelookup as (
    SELECT 
        *
        ,{{ loc_generate_surrogate_key(['location_id']) }} as location_pk
    FROM {{ref('stg_nyt_nytgreentaxizonelookup')}}
)

select * from stg_nyt_nytgreentaxizonelookup