# Tokyo Olympic Data Analytics Pipeline

An end-to-end data engineering pipeline for Tokyo 2020 Olympics CSV datasets, leveraging **Azure Data Factory**, **Azure Databricks**, and **Azure Synapse Analytics**.

## 🚀 Project Workflow

1. **GitHub CSV Storage**  
   Raw CSV files (`athletes.csv`, `coaches.csv`, `entriesgender.csv`, `medals.csv`, `teams.csv`) are stored in this GitHub repository.

2. **Data Ingestion to Azure Data Lake**  
   - An **Azure Data Factory** pipeline fetches the CSV files from GitHub via HTTP connector.  
   - Files are copied into Azure Data Lake Gen2 under the `raw_data/` folder.

3. **Data Transformation in Azure Databricks**  
   - A **Databricks** notebook reads the CSVs from `raw_data/`.  
   - Data cleaning, type casting, deduplication, and enrichment operations are performed.  
   - Cleaned CSVs are written to the `transformed_data/` folder in the data lake.

4. **Loading into Azure Synapse**  
   - Azure Synapse Analytics uses **`COPY INTO`** (or **Map Data**) to load CSVs from `transformed_data/` into the dedicated SQL pool.  
   - Tables created: `athletes`, `coaches`, `entriesgender`, `medals`, `teams`.

5. **Analysis & Visualization**  
   - Run T‑SQL queries in **Synapse Studio** against the SQL pool.  
   - Build dashboards in **Synapse Studio**, **Power BI Service**, or **Tableau** to visualize medal counts, gender participation, and more.



