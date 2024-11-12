with stg_nyt_nytgreenstoreandforwarddim as (
    SELECT 
        *
    FROM {{ref('stg_nyt_nytgreenstoreandforwarddim')}}
)

select * from stg_nyt_nytgreenstoreandforwarddim