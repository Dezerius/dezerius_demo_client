SELECT 
    CAST([TripTypeId] AS INT) as trip_type_id
    ,[TripTypeDesc] as trip_type_desc
    ,[m_updated_at_dttm] as m_updated_at_dttm
FROM {{source('landing_delta', 'ld_nyt_nytgreentriptypedim')}}