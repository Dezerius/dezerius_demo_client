with stg_futu_km_status_sample as (
    SELECT 
        entry_dttm
        ,plate_no
        ,{{ loc_generate_surrogate_key(['car_user_nm','plate_no','entry_dttm']) }} as km_status_pk
        ,{{ loc_generate_surrogate_key(['car_user_nm']) }} as car_user_fk
        ,km_status_amt
    FROM {{ref('stg_futu_km_status_sample')}}
)

select * from stg_futu_km_status_sample