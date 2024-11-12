create view "dbt_csl_stg"."stg_nyt_nytgreenvendortypedim" as SELECT 
    CAST([VendorTypeID] AS INT) as vendor_type_id
    ,[VendorTypeDesc] as vendor_type_desc
    ,[m_updated_at_dttm] as m_updated_at_dttm
FROM "lh_dezerius_demo_client"."dbo"."ld_nyt_nytgreenvendortypedim";