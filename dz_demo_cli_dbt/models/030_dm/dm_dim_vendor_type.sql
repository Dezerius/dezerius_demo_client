with dwh_dim_vendor_type as (
    SELECT 
        *
    FROM {{ref('dwh_dim_vendor_type')}}
)

select * from dwh_dim_vendor_type