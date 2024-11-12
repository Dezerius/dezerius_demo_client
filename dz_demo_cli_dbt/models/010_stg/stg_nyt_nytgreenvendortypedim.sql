SELECT 
    [VendorTypeID] as vendor_type_id
    ,[VendorTypeDesc] as vendor_type_desc
    ,[m_updated_at_dttm] as m_updated_at_dttm
FROM {{source('landing_delta', 'ld_nyt_nytgreenvendortypedim')}}