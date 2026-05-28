# Day 1 - Reading CSV Files using PySpark

## 🎯 Objective
Learn how to read CSV files and display data using PySpark in Databricks.

---

## 📂 Files Used
- Big Sales.csv
- empData.csv

---

## 💻 PySpark Code

### 🔹 Reading Big Sales CSV File
```python
df = spark.read.csv(
    "/Volumes/workspace/default/day1files/Big Sales.csv",
    header=True
)

df.show()
