with dwh_dim_rate_code as (
    SELECT 
        *
    FROM {{ref('dwh_dim_rate_code')}}
)

select * from dwh_dim_rate_code