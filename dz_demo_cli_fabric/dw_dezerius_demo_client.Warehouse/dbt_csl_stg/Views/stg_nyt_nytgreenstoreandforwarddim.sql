create view "dbt_csl_stg"."stg_nyt_nytgreenstoreandforwarddim" as SELECT 
    [StoreAndForwardFlag] as store_and_fwd_flg 
    ,[StoreAndForwardDesc] as store_and_fwd_desc
    ,[m_updated_at_dttm] as m_updated_at_dttm
FROM "lh_dezerius_demo_client"."dbo"."ld_nyt_nytgreenstoreandforwarddim";