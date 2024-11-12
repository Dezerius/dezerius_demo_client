with stg_nyt_nytgreentriptypedim as (
    SELECT 
        *
    FROM {{ref('stg_nyt_nytgreentriptypedim')}}
)

select * from stg_nyt_nytgreentriptypedim