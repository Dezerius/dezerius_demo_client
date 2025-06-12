CREATE TABLE [dbt_csl_dwh].[dwh_dim_vendor_type] (

	[vendor_type_id] int NULL, 
	[vendor_type_desc] varchar(8000) NULL, 
	[m_updated_at_dttm] datetime2(6) NULL
);