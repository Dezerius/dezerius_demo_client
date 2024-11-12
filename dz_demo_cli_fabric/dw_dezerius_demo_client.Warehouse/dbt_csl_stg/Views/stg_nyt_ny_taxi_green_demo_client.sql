create view "dbt_csl_stg"."stg_nyt_ny_taxi_green_demo_client" as SELECT 
    [m_valid_dt]
    ,[m_year_num]
    ,[m_month_num]
    ,[m_year_month_num]
    ,CAST([vendorID] AS INT) as vendor_type_id
    ,CAST([lpepPickupDatetime] AS DATETIME2(6)) as pickup_start_dt
    ,CAST([lpepDropoffDatetime] AS DATETIME2(6)) as dropoff_end_dt
    ,[passengerCount] as passenger_cnt
    ,CAST([tripDistance] AS DECIMAL(20, 4)) as trip_distance_num
    ,CAST([puLocationId] AS INT) as pick_up_location_id
    ,CAST([doLocationId] AS INT) as drop_off_location_id
    ,CAST([pickupLongitude] AS DECIMAL(20, 4)) as pickup_longitude_num
    ,CAST([pickupLatitude] AS DECIMAL(20, 4)) as pickup_latitude_num
    ,CAST([dropoffLongitude] AS DECIMAL(20, 4)) as dropoff_longitude_num
    ,CAST([dropoffLatitude] AS DECIMAL(20, 4)) as dropoff_latitude_num
    ,CAST([rateCodeID] AS INT) as rate_code_id
    ,[storeAndFwdFlag] as store_and_fwd_flag
    ,CAST([paymentType] AS INT) as payment_type_id
    ,CAST([fareAmount] AS DECIMAL(20, 4)) as fare_amt
    ,CAST([extra] AS DECIMAL(20, 4)) as extra_amt
    ,CAST([mtaTax] AS DECIMAL(20, 4)) as mta_tax_amt
    ,CAST([improvementSurcharge] AS DECIMAL(20, 4)) as improvement_surcharge_amt
    ,CAST([tipAmount] AS DECIMAL(20, 4)) as tip_amt
    ,CAST([tollsAmount] AS DECIMAL(20, 4)) as tolls_amt
    ,CAST([ehailFee] AS DECIMAL(20, 4)) as ehail_fee_amt
    ,CAST([totalAmount] AS DECIMAL(20, 4)) as total_amt
    ,CAST([tripType] AS INT) as trip_type_id
    ,[m_updated_at_dttm]
FROM "lh_dezerius_demo_client"."dbo"."ld_nyt_ny_taxi_green_demo_client";