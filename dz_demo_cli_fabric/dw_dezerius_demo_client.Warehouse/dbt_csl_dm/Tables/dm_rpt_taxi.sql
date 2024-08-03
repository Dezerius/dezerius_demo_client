CREATE TABLE [dbt_csl_dm].[dm_rpt_taxi] (

	[m_valid_dt] date NULL, 
	[m_year_num] varchar(8000) NULL, 
	[m_month_num] varchar(8000) NULL, 
	[m_year_month_num] varchar(8000) NULL, 
	[vendor_id] int NULL, 
	[pickup_start_dt] datetime2(6) NULL, 
	[dropoff_end_dt] datetime2(6) NULL, 
	[passenger_cnt] int NULL, 
	[trip_distance_num] decimal(20,4) NULL, 
	[pick_up_location_id] varchar(8000) NULL, 
	[drop_off_location_id] varchar(8000) NULL, 
	[pickup_longitude_num] decimal(20,4) NULL, 
	[pickup_latitude_num] decimal(20,4) NULL, 
	[dropoff_longitude_num] decimal(20,4) NULL, 
	[dropoff_latitude_num] decimal(20,4) NULL, 
	[rate_code_id] int NULL, 
	[store_and_fwd_flag] varchar(8000) NULL, 
	[payment_type_cd] int NULL, 
	[fare_amt] decimal(20,4) NULL, 
	[extra_amt] decimal(20,4) NULL, 
	[mta_tax_amt] decimal(20,4) NULL, 
	[improvement_surcharge_amt] decimal(20,4) NULL, 
	[tip_amt] decimal(20,4) NULL, 
	[tolls_amt] decimal(20,4) NULL, 
	[ehail_fee_amt] decimal(20,4) NULL, 
	[total_amt] decimal(20,4) NULL, 
	[trip_type_cd] int NULL, 
	[m_updated_at_dttm] datetime2(6) NULL
);

