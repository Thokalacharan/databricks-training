# 🚀 Week 4 • Day 2: Advanced PySpark DataFrame Transformations

## 📖 Overview

In this practice session, I explored advanced PySpark DataFrame transformations that are widely used in data engineering. The exercises focused on integrating datasets, transforming columns, handling different schemas, and performing efficient analytical operations using PySpark.

---

## 🎯 Objective

The primary objective of this assignment was to strengthen my understanding of advanced DataFrame transformations by implementing practical examples involving joins, unions, sampling, string processing, type conversions, and schema management.

---

## 📂 Project Files

| File Name                                | Purpose                                                                              |
| ---------------------------------------- | ------------------------------------------------------------------------------------ |
| **PySpark_DataFrame_Practice_Ass-3.txt** | Practice exercises on Joins, Union, Sampling, Explode, Split, and Concat operations. |
| **PySpark_DataFrame_Practice_Ass-4.txt** | Advanced exercises covering Casting, Aliasing, and schema-related transformations.   |

---

## 🚀 Implemented Operations

### 🔸 Join Operations

* Implemented Inner, Left, Right, and Full Outer Joins.
* Combined employee and department datasets.
* Retrieved manager information for employees.
* Practiced integrating relational datasets.

### 🔸 Union Operations

* Merged multiple DataFrames using `union()` and `unionByName()`.
* Compared the behavior of both methods.
* Worked with DataFrames having different column orders.
* Managed missing columns using `allowMissingColumns=True`.

### 🔸 Limit & Sampling

* Retrieved a limited number of records using `limit()`.
* Generated random samples from datasets.
* Used sampling with and without seed values.
* Applied sampling after filtering records.

### 🔸 Explode Transformation

* Expanded array columns into individual rows.
* Counted employee skills.
* Retrieved employees based on specific skills.
* Generated skill-wise reports.

### 🔸 Split Transformation

* Split date values into year, month, and day.
* Parsed designation strings.
* Extracted useful components from text columns.
* Created new columns from split values.

### 🔸 Concat & Concat_WS

* Combined multiple columns into a single column.
* Created employee labels.
* Generated descriptive text fields.
* Formatted output using custom separators.

### 🔸 Type Casting

* Converted columns into String, Integer, Double, and Date data types.
* Created calculated numeric fields.
* Improved schema consistency and flexibility.

### 🔸 Aliasing

* Renamed columns using aliases.
* Applied aliases in aggregation results.
* Used aliases during join operations.
* Improved the readability of query outputs.

---

## 🛠️ PySpark Functions Practiced

* `join()`
* `union()`
* `unionByName()`
* `allowMissingColumns`
* `limit()`
* `sample()`
* `explode()`
* `split()`
* `concat()`
* `concat_ws()`
* `cast()`
* `alias()`
* `current_date()`
* `collect_list()`
* `rand()`

---

## 🎯 Learning Outcomes

* Developed practical knowledge of advanced PySpark DataFrame transformations.
* Learned efficient methods for joining and combining datasets with different schemas.
* Practiced sampling, string manipulation, array processing, and data type conversion.
* Improved confidence in building scalable and efficient data transformation pipelines for real-world data engineering tasks.

---

## ⭐ Status

**Week 4 • Day 2 completed successfully.** This assignment enhanced my understanding of advanced PySpark DataFrame transformations, schema management, joins, and data manipulation techniques used in modern data engineering workflows.
