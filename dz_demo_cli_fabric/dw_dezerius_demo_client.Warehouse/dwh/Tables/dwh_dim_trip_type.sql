CREATE TABLE [dwh].[dwh_dim_trip_type] (

	[trip_type_id] int NULL, 
	[trip_type_desc] varchar(8000) NULL, 
	[m_updated_at_dttm] datetime2(6) NULL, 
	[trip_type_pk] varchar(256) NULL
);