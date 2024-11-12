create view "dbt_csl_stg"."stg_nyt_nytgreenratecodedim" as SELECT 
    CAST([RateCodeID] AS INT) as rate_code_id
    ,[RateCodeDesc] as rate_code_desc
    ,[m_updated_at_dttm] as m_updated_at_dttm
FROM "lh_dezerius_demo_client"."dbo"."ld_nyt_nytgreenratecodedim";