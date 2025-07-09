with stg_futu_km_status_sample as
(
    select * from {{ ref('stg_futu_km_status_sample') }}
)

,distinct_user as 
(
    select  
        m_valid_dt
        ,m_country_cd
        ,m_company_cd
        ,email_nm
        ,max(car_user_nm) as user_nm
        ,max(company_nm) as company_nm
    from stg_futu_km_status_sample
    group by 
        m_valid_dt
        ,m_country_cd
        ,m_company_cd
        ,email_nm
)

,pk_to_master as 
(
    select 
        *
        ,{{ loc_generate_surrogate_key(['m_valid_dt','m_country_cd','m_company_cd','email_nm']) }} as user_pk
    from distinct_user
)

select * from pk_to_master