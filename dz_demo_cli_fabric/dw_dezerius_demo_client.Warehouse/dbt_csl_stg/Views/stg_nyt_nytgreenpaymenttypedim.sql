create view "dbt_csl_stg"."stg_nyt_nytgreenpaymenttypedim" as SELECT 
    CAST([payment_type_id] AS INT) as payment_type_id
    ,[payment_type_desc] as payment_type_desc
    ,[m_updated_at_dttm] as m_updated_at_dttm
FROM "lh_dezerius_demo_client"."dbo"."ld_nyt_nytgreenpaymenttypedim";