with stg_futu_km_status_sample as
(
    select * from {{ ref('stg_futu_km_status_sample') }}
)

,distinct_plates_by_user as 
(
    select distinct
        m_valid_dt
        ,m_country_cd
        ,m_company_cd
        ,email_nm
        ,plate_no
    from stg_futu_km_status_sample
)

,pk_to_master as 
(
    select 
        *
        ,{{ loc_generate_surrogate_key(['m_valid_dt','m_country_cd','m_company_cd','email_nm','plate_no']) }} as car_user_pk
        ,{{ loc_generate_surrogate_key(['m_valid_dt','m_country_cd','m_company_cd','email_nm']) }} as user_fk
    from distinct_plates_by_user
)

,validity_added as 
(
    select 
        *

    from pk_to_master
)

select * from pk_to_master