select 
    cast('2025-07-07' as date) as m_valid_dt
    ,cast('HU' as varchar(3)) as m_country_cd
    ,cast('Futureal' as varchar(50)) as m_company_cd
    ,cast(plate_number as varchar(6)) as plate_no
    ,cast(name as varchar(50)) as car_user_nm
    ,cast(company as varchar(100)) as company_nm
    ,cast(km_status as int) as km_status_amt
    ,cast(entry_datetime as datetime2(6)) as entry_dttm
    ,cast(email as varchar(100)) as email_nm
from {{ source('landing_delta', 'ld_futu_km_status_sample') }}