![dbt](https://img.shields.io/badge/dbt-FF694B?style=for-the-badge&logo=dbt&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)


\# Healthcare Claims Analytics Engineering Pipeline



End-to-end analytics engineering project using PostgreSQL, dbt, and Docker.

## 📊 Dashboard Preview

### Claims Performance Overview
![Claims Dashboard Overview](docs/images/dashboard_overview_v2.png)

### Claim-Level Breakdown
![Claims Dashboard Detail](docs/images/dashboard_detail_v2.png)


\## Project Structure



\- `healthcare\_ae/` – dbt project (models, tests, snapshots, docs)

\- `data/` – raw CSV data used for ingestion

\- `docker/` – Docker Compose setup for Postgres

\- `src/` – supporting scripts (ETL / loaders)

\- `tableau/` – optional BI layer

\- `docs/` – additional documentation



👉 \*\*See `healthcare\_ae/README.md` for full dbt model and lineage documentation.\*\*

## Data Model Lineage (dbt)

This project follows a layered dbt analytics engineering architecture:

- **Raw layer**: source-aligned ingestion
- **Staging layer**: cleaned and conformed models
- **Mart layer**: analytics-ready KPIs and aggregates for dashboards

![dbt Lineage](docs/images/dbt_lineage.png)


\## Tech Stack

\- PostgreSQL

\- dbt Core

\- Docker

\- Python



