# Tokyo Olympic Data Analytics Pipeline

An end-to-end data engineering pipeline for Tokyo 2020 Olympics CSV datasets, leveraging **Azure Data Factory**, **Azure Databricks**, and **Azure Synapse Analytics**.

<img width="1232" alt="Screenshot 2025-05-25 at 5 57 47 PM" src="https://github.com/user-attachments/assets/8613e512-68b6-42f5-b710-996b5448fbd2" />

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
  

<img width="1052" alt="Screenshot 2025-05-25 at 5 54 08 PM" src="https://github.com/user-attachments/assets/de363484-54c2-4da5-8085-f0fdaacb5d71" />

<img width="1700" alt="Screenshot 2025-05-25 at 5 53 31 PM" src="https://github.com/user-attachments/assets/c01a7bcf-3f97-42cf-94c9-8cc909cc1f8f" />

<img width="1710" alt="Screenshot 2025-05-25 at 5 53 14 PM" src="https://github.com/user-attachments/assets/7f94d33d-45f0-4a5c-8000-ae1958135561" />







