Tokyo Olympic Data Engineering Project ⚙️🎉

An end-to-end data engineering solution for the Tokyo 2020 Olympics dataset, built on Azure Data Factory, Azure Databricks, and Azure Synapse Analytics, with electrifying visualizations in Power BI and Tableau.

🚀 Project Overview

Ingest raw CSV files into your Azure Data Lake (Gen2) with Azure Data Factory pipelines.

Transform and clean data using PySpark in Azure Databricks notebooks.

Curate parquet files back into the data lake in a performance-optimized zone.

Load curated data into your Synapse SQL pool, ready for fast analytics.

Visualize insights in Synapse Studio dashboards, Power BI Service, or Tableau, directly in the cloud (no desktop required!).

📂 Repository Structure

/ (root)
│
├── data/                       # Raw and transformed CSV files (already uploaded)
│   ├── raw/                    # Raw source data (athletes, coaches, entriesgender, medals, teams)
│   └── transformed/            # Cleaned parquet files
│
├── images/                     # Diagrams & screenshots for docs
│   ├── architecture.png        # End-to-end pipeline diagram
│   ├── data-ingestion.png      # ADF pipeline screenshot
│   └── synapse-dashboard.png   # Synapse Studio dashboard example
│
├── analysis.sql                # T-SQL queries for dashboard preparation
├── Tokyo Olympic Transformation.ipynb  # PySpark notebook for data cleansing & transformation
└── README.md                   # This engaging documentation

🔧 Deployment Steps

Ingest Raw Data

Trigger the data-ingestion ADF pipeline to load CSVs from your storage account into data/raw/.

Screenshot:

Transform Data

Open Tokyo Olympic Transformation.ipynb in Synapse Studio or locally.

Execute PySpark cells to read from data/raw/, apply cleaning logic, and write to data/transformed/.

Load into Synapse

In Synapse Studio, use Map Data or COPY INTO to ingest parquet files into your dedicated SQL pool tables.

Run Analysis Queries

Open analysis.sql under Develop in Synapse Studio, attach to your SQL pool, and run the commented queries.

Build & Share Dashboards

In Monitor → Dashboards, pin your visuals directly in Synapse Studio.

Or connect your SQL pool to Power BI Service (Premium workspace) or Tableau for sleek, interactive dashboards.

📊 Sample Dashboard



🎯 Next Steps & Enhancements

Add Row-Level Security to your Synapse tables for multi-tenant scenarios.

Automate notebook execution with Synapse triggers or Azure DevOps pipelines.

Extend to Looker Studio or Grafana for further visualization options.

© 2025 Shantanu H. Fuke

Master’s in Computer Science @ TAMUK & Data Engineer extraordinaire!
