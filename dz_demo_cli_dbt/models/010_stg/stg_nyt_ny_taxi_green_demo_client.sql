SELECT 
    [m_valid_dt]
    ,[m_year_num]
    ,[m_month_num]
    ,[m_year_month_num]
    ,[vendorID] as vendor_id
    ,CAST([lpepPickupDatetime] AS DATETIME) as pickup_start_dt
    ,CAST([lpepDropoffDatetime] AS DATETIME) as dropoff_end_dt
    ,[passengerCount] as passenger_cnt
    ,CAST([tripDistance] AS DECIMAL({{var('decimal_precision')}}, {{var('decimal_scale')}})) as trip_distance_num
    ,[puLocationId] as pick_up_location_id
    ,[doLocationId] as drop_off_location_id
    ,CAST([pickupLongitude] AS DECIMAL({{var('decimal_precision')}}, {{var('decimal_scale')}})) as pickup_longitude_num
    ,CAST([pickupLatitude] AS DECIMAL({{var('decimal_precision')}}, {{var('decimal_scale')}})) as pickup_latitude_num
    ,CAST([dropoffLongitude] AS DECIMAL({{var('decimal_precision')}}, {{var('decimal_scale')}})) as dropoff_longitude_num
    ,CAST([dropoffLatitude] AS DECIMAL({{var('decimal_precision')}}, {{var('decimal_scale')}})) as dropoff_latitude_num
    ,[rateCodeID] as rate_code_id
    ,[storeAndFwdFlag] as store_and_fwd_flag
    ,[paymentType] as payment_type_cd
    ,CAST([fareAmount] AS DECIMAL({{var('decimal_precision')}}, {{var('decimal_scale')}})) as fare_amt
    ,CAST([extra] AS DECIMAL({{var('decimal_precision')}}, {{var('decimal_scale')}})) as extra_amt
    ,CAST([mtaTax] AS DECIMAL({{var('decimal_precision')}}, {{var('decimal_scale')}})) as mta_tax_amt
    ,CAST([improvementSurcharge] AS DECIMAL({{var('decimal_precision')}}, {{var('decimal_scale')}})) as improvement_surcharge_amt
    ,CAST([tipAmount] AS DECIMAL({{var('decimal_precision')}}, {{var('decimal_scale')}})) as tip_amt
    ,CAST([tollsAmount] AS DECIMAL({{var('decimal_precision')}}, {{var('decimal_scale')}})) as tolls_amt
    ,CAST([ehailFee] AS DECIMAL({{var('decimal_precision')}}, {{var('decimal_scale')}})) as ehail_fee_amt
    ,CAST([totalAmount] AS DECIMAL({{var('decimal_precision')}}, {{var('decimal_scale')}})) as total_amt
    ,[tripType] as trip_type_cd
    ,[m_updated_at_dttm]
FROM {{source('landing_delta', 'ld_nyt_ny_taxi_green_demo_client')}}