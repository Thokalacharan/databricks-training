# 🚀 PHASE-4A – Bucketing & Segmentation in PySpark

> **Transforming continuous numerical data into meaningful customer segments using PySpark!** 📊✨

This phase focuses on understanding Bucketing and Customer Segmentation, two important concepts in data engineering and business analytics. Different segmentation techniques are implemented using PySpark and SQL to categorize customers based on their spending behavior and compare multiple analytical approaches.

---

## 📂 Project Structure

```text
PHASE-4A/
│
├── 📁 Outputs/
├── 🐍 Pyspark_phase-4A.py
├── 🗄️ SQL_phase-4A.sql
├── 📄 phase4A_bucketing_segmentation.pdf
├── 📘 README.md
└── 📝 Reflection_Answers.md
```

---

## 🎯 Project Objective

The objective of this phase is to learn how continuous numerical values can be converted into meaningful business categories using different bucketing and customer segmentation techniques.

This project includes:

- 📥 Data Preparation
- 🧹 Data Cleaning
- 💰 Customer Spend Analysis
- 🥇 Customer Segmentation
- 📊 Customer Distribution Analysis
- 📈 Quantile-Based Segmentation
- 🪣 MLlib Bucketizer
- 🏆 Window-Based Ranking

---

## 📊 Dataset Used

The project uses sample datasets from Spark Playground.

### 👥 customers.csv

Contains customer information such as:

- Customer ID
- First Name
- Last Name
- City

### 💰 sales.csv

Contains sales transaction details including:

- Customer ID
- Order Date
- Total Amount

---

## 🧹 Data Cleaning Performed

Before performing segmentation, the following preprocessing steps were completed:

- ✅ Removed rows with missing `customer_id`
- ✅ Removed duplicate records
- ✅ Converted `total_amount` from String to Double
- ✅ Filtered records with negative sales values

---

## 📈 Practice Tasks Completed

### ✅ Task 1 – Customer Segmentation (Conditional Logic)

Created Gold, Silver, and Bronze customer segments using `when()` and `otherwise()`.

| Segment | Condition |
|----------|-----------|
| 🥇 Gold | Total Spend > 10000 |
| 🥈 Silver | Total Spend between 5000 and 10000 |
| 🥉 Bronze | Total Spend < 5000 |

---

### ✅ Task 2 – Customer Count by Segment

Grouped customers based on their segment and calculated the number of customers in each category.

**Output**

- Segment
- Customer Count

---

### ✅ Task 3 – Quantile-Based Segmentation

Used `approxQuantile()` to divide customers into balanced groups based on their spending distribution.

---

### ✅ Task 4 – Bucketizer (MLlib)

Applied Spark MLlib's `Bucketizer` to convert continuous spending values into predefined buckets.

---

### ✅ Task 5 – Window-Based Ranking

Ranked customers according to their total spending using the `percent_rank()` window function.

---

## 🪣 Bucketing Methods Implemented

| Method | Description |
|--------|-------------|
| ✅ Conditional Logic | Categorized customers using `when()` and `otherwise()` |
| ✅ SQL CASE | Created customer segments using SQL CASE statements |
| ✅ Bucketizer | Generated predefined numeric buckets using Spark MLlib |
| ✅ Quantile Segmentation | Divided customers into percentile-based groups |
| ✅ Window Ranking | Ranked customers using `percent_rank()` |

---

## 💻 SQL Concepts Practiced

- SELECT
- GROUP BY
- CASE
- Aggregate Functions
- SUM()
- COUNT()
- CONCAT()

---

## ⚡ PySpark Concepts Practiced

- SparkSession
- DataFrames
- CSV Reader
- `dropna()`
- `dropDuplicates()`
- `filter()`
- `withColumn()`
- `cast()`
- `groupBy()`
- `agg()`
- `sum()`
- `count()`
- `when()`
- `otherwise()`
- `concat_ws()`
- `approxQuantile()`
- Bucketizer (MLlib)
- Window Functions
- `percent_rank()`

---

## 🔄 SQL → PySpark Mapping

| SQL | PySpark |
|------|----------|
| SELECT | `select()` |
| GROUP BY | `groupBy()` |
| CASE | `when().otherwise()` |
| SUM() | `sum()` |
| COUNT() | `count()` |
| CONCAT() | `concat_ws()` |
| Percentile | `approxQuantile()` |
| Ranking | `percent_rank().over(Window)` |

---

## 🌟 Skills Gained

After completing this phase, I was able to:

- ✅ Convert continuous numerical values into meaningful business segments.
- ✅ Apply multiple customer bucketing techniques in PySpark.
- ✅ Compare rule-based and quantile-based segmentation methods.
- ✅ Use Spark MLlib's Bucketizer for feature engineering.
- ✅ Apply Window Functions for customer ranking.
- ✅ Analyze customer spending behavior to generate business insights.

---

## 🛠️ Technologies Used

- 🐍 Python
- ⚡ PySpark
- 🔥 Apache Spark
- 🗄️ SQL
- 💻 VS Code

---

## 🎓 Learning Outcome

This phase strengthened my understanding of customer segmentation and bucketing techniques used in real-world analytics. I learned how conditional logic, SQL CASE statements, Bucketizer, quantile-based segmentation, and Window Functions can be used to classify customers and support data-driven business decisions.

---

## 👨‍💻 Author

**Thokala Charan**

⭐ *Learning PySpark by transforming raw data into meaningful business insights through segmentation and analytics!*
