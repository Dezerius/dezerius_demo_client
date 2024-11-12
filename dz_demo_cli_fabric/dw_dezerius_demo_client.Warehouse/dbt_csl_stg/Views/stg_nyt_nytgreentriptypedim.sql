create view "dbt_csl_stg"."stg_nyt_nytgreentriptypedim" as SELECT 
    CAST([TripTypeId] AS INT) as trip_type_id
    ,[TripTypeDesc] as trip_type_desc
    ,[m_updated_at_dttm] as m_updated_at_dttm
FROM "lh_dezerius_demo_client"."dbo"."ld_nyt_nytgreentriptypedim";