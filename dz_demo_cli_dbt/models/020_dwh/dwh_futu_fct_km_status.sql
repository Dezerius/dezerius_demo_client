with stg_futu_km_status_sample as (
    SELECT 
        entry_dttm
        ,plate_no
        ,{{ loc_generate_surrogate_key(['m_valid_dt','m_country_cd','m_company_cd','email_nm','plate_no','entry_dttm']) }} as km_status_pk
        ,{{ loc_generate_surrogate_key(['m_valid_dt','m_country_cd','m_company_cd','email_nm','plate_no']) }} as car_user_fk
        ,{{ loc_generate_surrogate_key(['m_valid_dt','m_country_cd','m_company_cd','email_nm']) }} as user_fk
        ,km_status_amt
    FROM {{ref('stg_futu_km_status_sample')}}
)

select * from stg_futu_km_status_sample