with stg_futu_km_status_sample as 
(
    select * from {{ ref('stg_futu_km_status_sample') }}
)

,distinct_plates as 
(
    select distinct 
        m_valid_dt
        ,m_country_cd
        ,m_company_cd
        ,plate_no
    from stg_futu_km_status_sample
)

select * from distinct_plates