with stg_nyt_nytgreenstoreandforwarddim as (
    SELECT 
        *
        ,{{ loc_generate_surrogate_key(['store_and_fwd_flg']) }} as store_and_fwd_pk
    FROM {{ref('stg_nyt_nytgreenstoreandforwarddim')}}
)

select * from stg_nyt_nytgreenstoreandforwarddim