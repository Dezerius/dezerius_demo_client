SELECT 
    CAST([payment_type_id] AS INT) as payment_type_id
    ,[payment_type_desc] as payment_type_desc
    ,[m_updated_at_dttm] as m_updated_at_dttm
FROM {{source('landing_delta', 'ld_nyt_nytgreenpaymenttypedim')}}