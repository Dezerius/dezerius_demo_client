with stg_nyt_ny_taxi_green_demo_client as (
    SELECT 
        *
        ,{{ loc_generate_surrogate_key(['m_valid_dt','pickup_start_dt']) }} as transaction_pk
        ,{{ loc_generate_surrogate_key(['payment_type_id']) }} as payment_type_fk
        ,{{ loc_generate_surrogate_key(['rate_code_id']) }} as rate_code_fk
        ,{{ loc_generate_surrogate_key(['store_and_fwd_flg']) }} as store_and_fwd_fk
        ,{{ loc_generate_surrogate_key(['trip_type_id']) }} as trip_type_fk
        ,{{ loc_generate_surrogate_key(['vendor_type_id']) }} as vendor_type_fk
        ,{{ loc_generate_surrogate_key(['pick_up_location_id']) }} as pick_up_location_fk
        ,{{ loc_generate_surrogate_key(['drop_off_location_id']) }} as drop_off_location_fk
    FROM {{ref('stg_nyt_ny_taxi_green_demo_client')}}
)

select * from stg_nyt_ny_taxi_green_demo_client