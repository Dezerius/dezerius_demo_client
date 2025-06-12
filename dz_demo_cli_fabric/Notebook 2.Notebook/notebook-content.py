# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "af99128e-1dd3-452c-b1d3-5ca382d0816f",
# META       "default_lakehouse_name": "lh_dezerius_demo_client",
# META       "default_lakehouse_workspace_id": "dd4bc81e-11ab-4a49-9147-5148d66f690b",
# META       "known_lakehouses": [
# META         {
# META           "id": "af99128e-1dd3-452c-b1d3-5ca382d0816f"
# META         }
# META       ]
# META     }
# META   }
# META }

# CELL ********************

# Welcome to your new notebook
# Type here in the cell editor to add code!


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df = spark.sql("SELECT * FROM lh_dezerius_demo_client.ld_nyt_ny_taxi_green_demo_client LIMIT 1000")
display(df)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

from pyspark.sql.functions import current_date

# Add a new column with today's date
df = df.withColumn("todays_date", current_date())

# Show the DataFrame to verify the result
display(df)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
