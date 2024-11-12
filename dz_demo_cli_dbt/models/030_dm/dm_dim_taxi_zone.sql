with dwh_dim_taxi_zone as (
    SELECT 
        *
    FROM {{ref('dwh_dim_taxi_zone')}}
)

select * from dwh_dim_taxi_zone