with dwh_fct_taxi as (
    SELECT 
        *
    FROM {{ref('dwh_fct_taxi')}}
)

select * from dwh_fct_taxi