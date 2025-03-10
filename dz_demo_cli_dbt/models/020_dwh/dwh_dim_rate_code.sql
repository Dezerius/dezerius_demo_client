with stg_nyt_nytgreenratecodedim as (
    SELECT 
        *
        ,{{ loc_generate_surrogate_key(['rate_code_id']) }} as rate_code_pk
    FROM {{ref('stg_nyt_nytgreenratecodedim')}}
)

select * from stg_nyt_nytgreenratecodedim