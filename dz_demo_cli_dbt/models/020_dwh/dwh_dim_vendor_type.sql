with stg_nyt_nytgreenvendortypedim as (
    SELECT 
        *
        ,{{ loc_generate_surrogate_key(['vendor_type_id']) }} as vendor_type_pk
    FROM {{ref('stg_nyt_nytgreenvendortypedim')}}
)

select * from stg_nyt_nytgreenvendortypedim