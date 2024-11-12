with dwh_dim_store_and_forward as (
    SELECT 
        *
    FROM {{ref('dwh_dim_store_and_forward')}}
)

select * from dwh_dim_store_and_forward