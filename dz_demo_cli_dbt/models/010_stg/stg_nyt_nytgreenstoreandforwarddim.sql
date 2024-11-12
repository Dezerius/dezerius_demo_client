SELECT 
    [StoreAndForwardFlag] as store_and_fwd_flg 
    ,[StoreAndForwardDesc] as store_and_fwd_desc
    ,[m_updated_at_dttm] as m_updated_at_dttm
FROM {{source('landing_delta', 'ld_nyt_nytgreenstoreandforwarddim')}}