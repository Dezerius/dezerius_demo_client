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

# PARAMETERS CELL ********************

# PARAMETERS CELL ********************

p_source_sytem_cd = "LF"
p_subfolder_path = "LF"
p_in_table_name = "COA P&L demo_LF"
p_lakehouse_name = "lh_dezerius_demo_client"

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# Import libraries
import pandas as pd
import re
from pyspark.sql import SparkSession
from pyspark.sql.functions import *
from notebookutils import mssparkutils
from datetime import datetime, timedelta
import os

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# Create a SparkSession
spark = SparkSession.builder.appName("MergeParquetToDelta").getOrCreate()

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# Get default lakehouse abfs path
for mp in mssparkutils.fs.mounts():
    if mp.mountPoint == '/default':
       v_abfs = mp.source

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# Path to the directory containing Parquet files
v_xlsx_path = v_abfs+"/Files/Source/"+p_in_table_name+".xlsx"
display(v_xlsx_path)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# CELL ********************

v_out_table_name_pre = "ld_"+p_source_sytem_cd.lower()+"_"+p_in_table_name.lower()
display(v_out_table_name_pre)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# Function to sanitize the table name
def sanitize_table_name(table_name):
    # Remove special characters and spaces, replace with underscores
    sanitized_name = table_name.replace(" ", "_").replace("&", "_and_").replace("/", "_").replace("-", "_")
    return sanitized_name

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# Get the sanitized table name
v_out_table_name = sanitize_table_name(v_out_table_name_pre)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# CELL ********************

# Path to the Delta table
v_out_table_name_path = "Tables/"+v_out_table_name
display(v_out_table_name_path)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# Read the XLSX files
pd_df = pd.read_excel(v_xlsx_path, dtype=str, na_filter=False)
# Display the DataFrame
print(pd_df.head())

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# Convert pandas df to spark df
spark_df = spark.createDataFrame(pd_df)
spark_df.show()

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# CELL ********************

# Create m_updated_at_dttm
output_df = spark_df.withColumn("m_updated_at_dttm", from_utc_timestamp(current_timestamp(), "Europe/Budapest"))

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

display(output_df)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# CELL ********************

# Write the Delta table
output_df.write.format("delta")\
                .option("overwriteSchema", "true")\
                .mode("overwrite")\
                .save(v_out_table_name_path)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
