with stg_futu_km_status_sample as
(
    select * from {{ ref('stg_futu_km_status_sample') }}
)

,min_entry_dt_by_name_and_plate as 
(
    select 
        car_user_nm
        ,email_nm
        ,plate_no
        ,min(entry_dttm) as mindatetime
    from stg_futu_km_status_sample
    group by 
        car_user_nm
        ,email_nm
        ,plate_no
)

,current_plate_by_user as 
(
    select 
        car_user_nm
        ,email_nm
        ,plate_no
        ,mindatetime
        ,max(mindatetime) over (partition by car_user_nm) as maxdatetime
        ,case when mindatetime = max(mindatetime) over (partition by car_user_nm) then 'Y' else 'N' end as 'current_plate'
    from min_entry_dt_by_name_and_plate
)

,user_master as 
(
    select 
        car_user_nm
        ,email_nm
        ,plate_no
    from current_plate_by_user
    where current_plate = 'Y'
)

,pk_to_master as 
(
    select 
        *
        ,{{ loc_generate_surrogate_key(['car_user_nm']) }} as car_user_pk
    from user_master
)

select * from pk_to_master