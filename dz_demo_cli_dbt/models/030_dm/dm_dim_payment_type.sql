with dwh_dim_payment_type as (
    SELECT 
        *
    FROM {{ref('dwh_dim_payment_type')}}
)

select * from dwh_dim_payment_type