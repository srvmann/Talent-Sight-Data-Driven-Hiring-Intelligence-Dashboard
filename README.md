# Talent-Sight-Data-Driven-Hiring-Intelligence-Dashboard
TalentSight is an end-to-end Data Analytics solution designed to transform fragmented job market data into actionable hiring intelligence.

Built using Python, MySQL, and Power BI, the project consolidates 7 lakhs+ job postings from multiple unstructured sources, cleans and restructures them into a unified analytical model, and delivers interactive visual insights on hiring trends, job types, skills demand, and company activity.

This dashboard enables recruitment teams and business leaders to:

Identify peak hiring periods

Analyse remote vs hybrid vs onsite job distribution

Track yearly growth in job opportunities

Discover country-wise demand patterns

Understand skill trends and top job domains in the data field

With a scalable data pipeline and optimised Power BI model, TalentSight serves as a single source of truth for strategic workforce planning and talent intelligence.

Here is your **FULL UPDATED README** including:

✔ Client problem
✔ Schema
✔ Dashboard explanation
✔ Data flow (MySQL + Python pipelines)
✔ Insights
✔ Tools, DAX and project summary

### **End-to-End Data Engineering | Data Cleaning | Power BI Modelling | Insights Generation**

## 📝 Project Overview

A recruitment and selection firm acquired a large volume of job market data from **multiple external sources**, leading to:

❌ Unstructured job descriptions
❌ Missing and inconsistent values
❌ No unified schema
❌ Fragmented datasets with no relationships

The client requested:

1. **Cleaning + Structuring** the entire job database
2. **Building a proper multi-table database** (for internal future use)
3. **Consolidating all data into one unified table** in Power BI
4. **Creating an insights-driven dashboard** for hiring trend analysis

---

## 🔄 Data Flow & ETL Pipeline

This project involved **two independent data processing pipelines**.

---

### **📂 Source 1 → Job_Postings1 (MySQL Pipeline)**

➡ Raw Data → MySQL → Power BI Query Editor → Power BI

#### Why MySQL?

✔ Contained already structured table-like data
✔ Needed relational modelling and standardisation
✔ Client demanded a proper database for reuse

#### Steps:

1. Imported Job_Postings1 into **MySQL Server**
2. Fixed missing values & datatype issues
3. Validated table joins
4. Connected to **Power BI using MySQL Connector**
5. Used Power Query to map it to the final master schema

---

### **📂 Source 2 → Job_Postings2 (Python Pipeline)**

➡ Raw Data → Python Script → Cleaned CSV & Grouping → Power BI Query Editor → Power BI

#### Why Python?

✔ Job descriptions embedded inside long paragraphs
✔ Mixed formats & messy text fields
✔ Skills, job type, experience level not extractable via SQL

#### Python Tasks:

✔ Grouped job_field using Group Function in pandas.
✔ Cleaned and standardised country/location names
✔ Removed duplicates
✔ Exported final dataset to CSV → Loaded into Power BI


### **🔗 Final Consolidation (Inside Power BI)**

Both sources merged into a **single master fact table** with schema:

| Column Name         | Description               |
| ------------------- | ------------------------- |
| Job_id              | Unique job reference      |
| Job_title           | Name of job role          |
| Job_field           | Domain/category           |
| Company_name        | Hiring company            |
| Job_location        | Country / City            |
| Job_posting_date    | Posting date              |
| Job_level           | Entry / Mid / Senior      |
| Job_type            | Remote / Hybrid / On-site |
| Job_skills          | Extracted skill keywords  |
| Job_employment_type | Full-time / Contract      |
| Summary             | Job description           |

---

## 🧹 Key Data Challenges Solved

| Challenge         | Solution                          |
| ----------------- | --------------------------------- |
| Missing values    | Standardised values + imputation  |
| No schema         | Designed unified database model   |
| 4 lakh+ rows      | Performance optimized model       |
| Tables not linked | Merged tables in query editor as  |
|                   | per client requirement            |

---

## 📈 Dashboard Preview

> *(Word cloud removed to maintain performance and layout clarity)*
> *(Dashboard-- https://github.com/srvmann/Talent-Sight-Data-Driven-Hiring-Intelligence-Dashboard/blob/main/Dashboard-2.png)*

Dashboard Contains:

📊 **Average Job Count by Year-Month**
🏢 **Average Company Posting Trends**
🌍 **Top Job Types by Country & Year**
🎯 **Top Job Fields by Year**
🏷 **Job Type % Distribution per Year (Remote, Hybrid, Onsite)**

---

## 🔍 Insights Delivered

### 1️⃣ **Hiring Trend Over Time**

Shows peak hiring months — useful for staffing strategy.

### 2️⃣ **Job Type Evolution**

Remote roles significantly increased after 2023.

### 3️⃣ **Company Hiring Activity**

Identifies the most active employers in the market.

### 4️⃣ **Regional Demand**

Different countries favour different job types.

### 5️⃣ **High-Demand Job Fields**

Top domains: **Data Analyst, Data Scientist, Data Engineer**.

---

## 🛠 Tools & Technologies

| Stage          | Tool                         |
| -------------- | ---------------------------- |
| Data Cleaning  | Power Query, Python          |
| Database       | MySQL                        |
| Data Modelling | Power BI                     |
| Scripting      | Python (pandas, regex, nltk) |
| Visualization  | Power BI                     |

---

## ⚙ Core DAX Measures Used

* `Avg Job Posting Count`
* `Company Counter`
* `Percentage of Job Type Share`
* `Year-Month Combined Metrics`

---

## 🚀 Final Project Outcomes

✔ Built a **Single Source of Truth** for all job data
✔ Transformed **unusable raw datasets → structured analytical model**
✔ Designed a **performance optimised Power BI dashboard**
✔ Generated **actionable insights for strategic hiring decisions**

---

## 📁 Project Architecture (Text Diagram)

```
       ┌──────────────┐            ┌──────────────┐
       │ Job_Posting1 │            │ Job_Posting2 │
       └──────┬───────┘            └──────┬───────┘
              │                            │
        MySQL Processing            Python Text Cleaning
              │                            │
       ┌──────▼───────┐            ┌───────▼────────┐
       │ Structured DB│            │ Cleaned CSV     │
       └──────┬───────┘            └───────┬─────────┘
              │                            │
              └────────────┬───────────────┘
                           │
                   Power BI Model
                           │
                   Final Unified Table
                           │
                     Interactive Dashboard
```

---

## 📬 Contact

📌 **LinkedIn:** *https://www.linkedin.com/in/sauravkumaar/*
📌 **Portfolio:** *https://www.datascienceportfol.io/thisissauurav*
📌 **Email:** *srvmann@gmail.com*

---
