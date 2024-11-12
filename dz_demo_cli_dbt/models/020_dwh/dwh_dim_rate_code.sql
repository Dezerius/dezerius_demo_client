with stg_nyt_nytgreenratecodedim as (
    SELECT 
        *
    FROM {{ref('stg_nyt_nytgreenratecodedim')}}
)

select * from stg_nyt_nytgreenratecodedim