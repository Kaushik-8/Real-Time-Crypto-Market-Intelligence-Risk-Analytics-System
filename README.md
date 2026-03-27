# 🚀 Real-Time Crypto Market Intelligence & Risk Analytics System

## 📌 Project Summary
This project builds an end-to-end real-time analytics system to monitor cryptocurrency markets using live API data. It integrates Python for data ingestion and preprocessing, MySQL for time-series storage and advanced querying, and Power BI for interactive visualization. The system is designed to track market trends, identify volatility and liquidity risks, and generate insights that support data-driven investment decisions.

---

## 🧠 Problem Statement
Cryptocurrency markets are highly dynamic and volatile, making it difficult to track trends and make informed investment decisions using static data. This project addresses that challenge by creating a real-time data pipeline that continuously collects, stores, and analyzes market data to generate actionable insights.

---

## 🛠️ Tech Stack
- **Python** (Pandas, Requests, SQLAlchemy)
- **MySQL** (Data storage & analytical queries)
- **Power BI** (Dashboard & storytelling)

---

## 🔄 Architecture
---

## ⚙️ Key Features
- 📡 Live data ingestion using public cryptocurrency API  
- 🧹 Data cleaning and preprocessing using Python  
- ⏱️ Time-series data storage with timestamps  
- 🧮 Advanced SQL queries using window functions (ROW_NUMBER, LAG, Moving Average)  
- 📊 Market dominance, volatility, and liquidity analysis  
- 📈 Trend detection and top gainers/losers identification  
- 📉 Risk analysis for investment decision-making  

---

## 📊 Business Impact
This system provides insights that can support:
- 💰 Investment strategy decisions  
- ⚠️ Risk identification (high volatility & low liquidity assets)  
- 📈 Market trend analysis  
- 📊 Portfolio diversification strategies  

---

## 🧪 Data Processing & Feature Engineering
- Removed null values and duplicates  
- Converted and validated numerical fields  
- Engineered key metrics:
  - Price Change %  
  - Rolling Average  
  - Liquidity Ratio (Volume / Market Cap)  

---

## 🗄️ SQL Analysis Highlights
- Latest data extraction using window functions  
- Time-based trend analysis  
- Moving averages using SQL window functions  
- Market dominance calculation  
- Liquidity and volatility metrics  

---

## 📊 Power BI Dashboard (In Progress 🚧)
An interactive dashboard is being developed in Power BI to:
- Visualize real-time price trends  
- Highlight top gainers and losers  
- Analyze market dominance  
- Identify high-risk assets  

---

## 🌟 Unique Aspects
- Uses real-time API data instead of static datasets  
- Implements time-series tracking for historical analysis  
- Combines Python, SQL, and BI tools in a single pipeline  
- Focuses on business insights rather than just visualization  

---

## 🎯 Future Improvements
- Automate pipeline using schedulers (Airflow / Cron)  
- Deploy on cloud (AWS/GCP)  
- Add alert system for price spikes  
- Enhance dashboard with drill-through insights  

---

## 👨‍💻 Author
Satyam Kaushik
