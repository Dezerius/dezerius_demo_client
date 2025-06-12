CREATE TABLE [stg].[stg_nyt_nytgreentaxizonelookup] (

	[location_id] int NULL, 
	[borough_desc] varchar(8000) NULL, 
	[zone_desc] varchar(8000) NULL, 
	[service_zone_desc] varchar(8000) NULL, 
	[m_updated_at_dttm] datetime2(6) NULL
);