SELECT 
    CAST([RateCodeID] AS INT) as rate_code_id
    ,[RateCodeDesc] as rate_code_desc
    ,[m_updated_at_dttm] as m_updated_at_dttm
FROM {{source('landing_delta', 'ld_nyt_nytgreenratecodedim')}}