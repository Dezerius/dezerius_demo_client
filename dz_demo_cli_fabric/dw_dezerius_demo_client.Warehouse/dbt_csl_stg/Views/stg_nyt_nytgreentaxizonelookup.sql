create view "dbt_csl_stg"."stg_nyt_nytgreentaxizonelookup" as SELECT 
    CAST([LocationID] AS INT) as location_id
    ,[Borough] as borough_desc
    ,[Zone] as zone_desc
    ,[service_zone] as service_zone_desc
    ,[m_updated_at_dttm] as m_updated_at_dttm
FROM "lh_dezerius_demo_client"."dbo"."ld_nyt_nytgreentaxizonelookup";