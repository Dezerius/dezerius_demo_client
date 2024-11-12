with stg_nyt_nytgreenvendortypedim as (
    SELECT 
        *
    FROM {{ref('stg_nyt_nytgreenvendortypedim')}}
)

select * from stg_nyt_nytgreenvendortypedim