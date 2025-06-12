CREATE TABLE [dwh].[dwh_dim_rate_code] (

	[rate_code_id] int NULL, 
	[rate_code_desc] varchar(8000) NULL, 
	[m_updated_at_dttm] datetime2(6) NULL, 
	[rate_code_pk] varchar(256) NULL
);