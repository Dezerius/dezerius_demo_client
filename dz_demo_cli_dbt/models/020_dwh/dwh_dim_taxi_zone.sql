with stg_nyt_nytgreentaxizonelookup as (
    SELECT 
        *
    FROM {{ref('stg_nyt_nytgreentaxizonelookup')}}
)

select * from stg_nyt_nytgreentaxizonelookup