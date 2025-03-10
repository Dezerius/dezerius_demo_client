with stg_nyt_nytgreentriptypedim as (
    SELECT 
        *
        ,{{ loc_generate_surrogate_key(['trip_type_id']) }} as trip_type_pk
    FROM {{ref('stg_nyt_nytgreentriptypedim')}}
)

select * from stg_nyt_nytgreentriptypedim