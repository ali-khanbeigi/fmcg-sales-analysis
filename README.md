# 🛒 FMCG Retail Sales Analytics
> End-to-end data analysis project covering Excel, SQL, Python, 
and Power BI — built to answer real business questions about 
product performance, regional trends, and channel profitability.

---

## 📌 Business Questions
- Which product categories drive the most profit?
- Which sales channels have the highest margins?
- How does revenue trend month-over-month?
- Which regions underperform vs. national average?
- Do discounts actually improve profitability?

---

## 🔍 Key Findings
- **5,000 transactions** analyzed across 6 regions and 5 channels
- **Dairy & Personal Care** account for 53% of total revenue
- **Supermarket channel** leads with 30% profit margin
- **Shiraz region** shows highest revenue share (18.8%)
- Top 53% of SKUs generate 80% of total revenue (Pareto Rule)
- Higher discounts show **no significant correlation** with profit (r = 0.053)

---

## 🛠️ Tech Stack
| Stage | Tool | What I Did |
|-------|------|------------|
| Stage 1 | Excel | Data cleaning, QA checks, Pivot KPIs |
| Stage 2 | SQL Server | Table creation, validation, EDA, CTEs, Window Functions |
| Stage 3 | Python (Pandas, NumPy, Matplotlib, Seaborn) | EDA, trend analysis, Pareto, feature engineering |
| Stage 4 | Power BI + DAX | Interactive dashboard, KPI measures, date table modeling |

---

## 📊 Dashboard Preview

<!-- Add your dashboard screenshots here -->
![Dashboard](https://github.com/ali-khanbeigi/fmcg-sales-analysis/blob/main/images/FMCG_ANALYSIS-images-0.jpg?raw=true)
![Category Analysis](images/dashboard_category.png)
![Regional Analysis](images/dashboard_regional.png)

---

## 📁 Project Structure
fmcg-sales-analysis/

├── data/

│   └── fmcg_sales_dataset.csv

├── notebooks/

│   └── fmcg_eda.ipynb

├── sql/

│   ├── create_table.sql

│   ├── data_validation.sql

│   ├── business_analysis.sql

│   └── advanced_analysis.sql

├── images/

│   ├── dashboard_overview.png

│   ├── dashboard_category.png

│   └── dashboard_regional.png

└── README.md
---

## 📈 Workflow
Raw CSV → Excel (Clean & QA) → SQL Server (Validate & Query)
→ Python (EDA & Insights) → Power BI (Dashboard)

---

## 💡 SQL Highlights
- Used **CTEs** for monthly trend aggregation
- Applied **Window Functions** (LAG, RANK) for MoM comparisons
- Built **market share analysis** using proportional revenue contribution
- Created **clean SQL View** for Power BI modeling

---

## 🐍 Python Highlights
- Full EDA pipeline with Pandas & NumPy
- Time-series visualization with Matplotlib & Seaborn
- **Pareto analysis** to identify top revenue-driving SKUs
- Feature engineering: `profit_margin`, `high_revenue` flag
- MoM growth rate calculation with `.pct_change()`

---

## ⚡ Power BI Highlights
- Custom **DAX measures**: Total Sales, MoM Growth %, YTD Sales, AOV
- **Date table** built with DAX for time intelligence
- 4 dashboard pages: Overview, Category, Regional, Time Analysis
- Interactive slicers by Year, Category, Region, Channel

---

*Built by [Ali Khanbeigi](https://www.linkedin.com/in/ali-khanbeigi)*

---

## 📁 Project Structure
