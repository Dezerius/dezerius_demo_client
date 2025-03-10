with stg_nyt_nytgreenpaymenttypedim as (
    SELECT 
        *
        ,{{ loc_generate_surrogate_key(['payment_type_id']) }} as payment_type_pk
    FROM {{ref('stg_nyt_nytgreenpaymenttypedim')}}
)

select * from stg_nyt_nytgreenpaymenttypedim