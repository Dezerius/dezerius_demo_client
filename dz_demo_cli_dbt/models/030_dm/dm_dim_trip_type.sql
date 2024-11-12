with dwh_dim_trip_type as (
    SELECT 
        *
    FROM {{ref('dwh_dim_trip_type')}}
)

select * from dwh_dim_trip_type