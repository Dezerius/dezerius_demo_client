with stg_nyt_ny_taxi_green_demo_client as (
    SELECT 
        *
    FROM {{ref('stg_nyt_ny_taxi_green_demo_client')}}
)

select * from stg_nyt_ny_taxi_green_demo_client