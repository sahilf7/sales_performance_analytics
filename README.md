# Sales Performance Analytics

### End-to-End Business Intelligence Solution using SQL & Microsoft Power BI

![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?logo=powerbi&logoColor=black)
![SQL](https://img.shields.io/badge/SQL-025E8C?logo=mysql&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?logo=mysql&logoColor=white)
![DAX](https://img.shields.io/badge/DAX-Business%20Calculations-blue)
![Power Query](https://img.shields.io/badge/Power%20Query-ETL-green)

![Dashboard Preview](screenshots/01_overview_dashboard.png)

---

# Business Problem

Businesses generate large volumes of transactional sales data every day, but raw relational databases rarely provide actionable insights on their own. Decision-makers need clear visibility into revenue trends, customer performance, product demand, and profitability to support informed business decisions.

This project transforms raw sales data into an interactive Business Intelligence solution using SQL, Power Query, DAX, and Microsoft Power BI. It demonstrates the complete analytics workflow from data exploration and cleaning to dashboard development and business insight generation.

---

# Project Overview

The project follows a complete Business Intelligence pipeline consisting of:

- SQL-based data exploration and validation
- Data quality assessment
- Power Query ETL
- Data transformation and revenue normalization
- Star Schema data modeling
- DAX measure development
- Interactive dashboard creation
- SQL validation of dashboard metrics

Development was carried out in two phases:

### Phase 1

Sales performance dashboard built using the original transactional dataset.

### Phase 2

Enhanced Business Intelligence dashboard introducing profitability analysis through additional fields including:

- Cost Price
- Profit Margin
- Profit Margin Percentage

---

# Interactive Dashboards

## Phase 1 – Sales Performance Dashboard

The first dashboard provides an executive view of overall sales performance.

![Overview Dashboard](screenshots/01_overview_dashboard.png)

### Features

- Revenue KPI
- Sales Quantity KPI
- Revenue Trend
- Revenue by Market
- Sales Quantity by Market
- Top Customers
- Top Products
- Interactive Year and Month Filters

---

## Phase 2 – Enhanced Business Intelligence Dashboard

The second dashboard extends the analysis with profitability metrics and advanced performance tracking.

### Key Insights

![Key Insights](screenshots/03_key_insights.png)

Features include:

- Revenue KPI
- Sales Quantity KPI
- Customer Performance
- Product Performance
- Market Performance
- Revenue Trend
- Interactive Filters

---

### Profit Analysis

![Profit Analysis](screenshots/04_profit_analysis.png)

Key metrics:

- Total Profit Margin
- Profit Margin %
- Revenue Contribution %
- Profit Contribution %
- Customer Profitability
- Product Profitability

---

### Performance Insights

![Performance Insights](screenshots/05_performance_insights.png)

Advanced analytics include:

- Revenue vs Previous Year
- Dynamic Profit Targets
- Target Difference Analysis
- Year-over-Year Comparison
- Profit Margin Monitoring

---

# Analytics Pipeline

```text
Raw Sales Database
        │
        ▼
SQL Exploration
        │
        ▼
Data Quality Assessment
        │
        ▼
Power Query ETL
        │
        ▼
Data Cleaning & Transformation
        │
        ▼
Star Schema Modeling
        │
        ▼
DAX Measures
        │
        ▼
Interactive Power BI Dashboards
        │
        ▼
Business Insights
```

---

# Dataset Overview

The project uses a relational sales database consisting of five primary tables.

| Table | Purpose |
|--------|---------|
| Customers | Customer information |
| Products | Product information |
| Markets | Regional market details |
| Date | Calendar dimension |
| Transactions | Sales transaction records |

The enhanced version of the dataset extends the Transactions table with profitability-related attributes for advanced business analysis.

---

# Data Quality Challenges

Several preprocessing steps were required before building the dashboards:

- Mixed INR and USD transactions
- Duplicate currency values caused by hidden carriage return characters
- Invalid sales values (`-1` and `0`)
- Non-business market records
- Revenue inconsistencies across currencies

These issues were resolved before the data entered the analytical model.

---

# Power Query ETL

Power Query was used to prepare the dataset for reporting by:

- Removing invalid transactions
- Filtering non-business market records
- Standardizing currency values
- Converting USD transactions into INR
- Creating the `norm_sales_amount` column
- Correcting data types

The resulting dataset provides consistent revenue calculations across all reports.

---

# SQL Exploration

SQL was used to explore, validate, and analyze the relational database before dashboard development.

Key activities included:

- Data exploration
- Revenue aggregation
- Customer, product, and market analysis
- Time-based sales analysis
- JOIN operations
- Currency verification
- Data validation

# Data Model

The analytical model follows a **Star Schema**, separating transactional data from descriptive dimensions to improve query performance and simplify analytical reporting.

![Star Schema](screenshots/02_data_model.png)

### Fact Table

- Transactions

### Dimension Tables

- Customers
- Products
- Markets
- Date

---

# DAX Implementation

Business logic was implemented using DAX measures to support dynamic reporting and interactive analysis.

| Measure | Description |
|----------|-------------|
| Revenue | Total revenue |
| Sales Qty | Total sales quantity |
| Total Profit Margin | Overall profit |
| Profit Margin % | Profitability relative to revenue |
| Revenue Contribution % | Revenue contribution by entity |
| Profit Margin Contribution % | Profit contribution by entity |
| Revenue LY | Previous year revenue |
| Target Difference | Difference between actual and target profit |

A disconnected **Profit Target** parameter table was also implemented to enable dynamic target analysis within the dashboards.

---

# Validation

Dashboard metrics were validated against SQL query results to ensure analytical accuracy.

Validation included:

- Revenue aggregation
- Time-based revenue analysis
- Market-wise revenue validation
- Transaction count verification
- Currency consistency checks

During validation, a discrepancy was identified where the dashboard referenced the original `sales_amount` column instead of the normalized revenue column. Updating the analytical model to use `norm_sales_amount` ensured consistency between SQL queries and Power BI visuals.

---

# Business Insights

The dashboards enable users to answer key business questions such as:

- Which markets generate the highest revenue?
- Which customers contribute the most sales?
- Which products perform best?
- How has revenue changed over time?
- Which markets are the most profitable?
- Which customers contribute the highest profit?
- How does current performance compare with previous years?
- Are business profit targets being achieved?

Interactive filtering and dynamic KPI calculations allow users to explore performance across multiple business dimensions.

---

# Technology Stack

| Category       | Technology         |
|----------------|--------------------|
| Database       | MySQL              |
| Query Language | SQL                |
| ETL            | Power Query        |
| Data Modeling  | Star Schema        |
| Analytics      | DAX                |
| Visualization  | Microsoft Power BI |

---

# Repository Structure

```text
sales-performance-analytics/

├── dashboard/
│   ├── Sales_Overview.pbix
│   └── Sales_Performance_Analytics.pbix
│
├── screenshots/
│
├── sql/
│   ├── database/
│   └── queries/
│
└── README.md
```

---

# License

This project is licensed under the MIT License.