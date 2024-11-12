with stg_nyt_nytgreenpaymenttypedim as (
    SELECT 
        *
    FROM {{ref('stg_nyt_nytgreenpaymenttypedim')}}
)

select * from stg_nyt_nytgreenpaymenttypedim