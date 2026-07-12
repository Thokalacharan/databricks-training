# 📊 Week 4 • Day 4 | PySpark Optimization, Null Handling & RDD Transformations

## 📖 Overview

This practice session focuses on advanced PySpark concepts, including DataFrame optimization, null value handling, partition management, caching techniques, and fundamental RDD transformations used in distributed data processing.

---

## 🎯 Objective

The objective of this assignment is to improve PySpark performance optimization skills by practicing partition management, caching, null value handling, data cleaning, and essential RDD transformations for scalable data processing.

---

## 📂 Project Files

| File Name                         | Description                                                                                                          |
| --------------------------------- | -------------------------------------------------------------------------------------------------------------------- |
| **PySpark_DF_Practice_Ass-7.txt** | Exercises covering partition management, caching, null handling, replacement operations, and DataFrame optimization. |
| **PySpark_DF_Practice_Ass-8.txt** | Practice exercises on RDD transformations including `map()`, `flatMap()`, and `reduceByKey()`.                       |

---

## 🚀 Key Concepts Practiced

### 🔹 Partition Management

* Managed DataFrame partitions using `repartition()`.
* Reduced partitions with `coalesce()`.
* Compared the behavior of `repartition()` and `coalesce()`.
* Optimized output file generation.

### 🔹 Performance Optimization

* Improved performance using `cache()`.
* Observed execution before and after caching.
* Released cached memory using `unpersist()`.

### 🔹 Null Value Handling

* Filled missing values using `fillna()` and `na.fill()`.
* Removed null records using `na.drop()`.
* Replaced missing values with default and calculated values.

### 🔹 Data Cleaning

* Replaced existing values using `replace()`.
* Standardized values for city, department, and gender columns.

### 🔹 RDD Transformations

* Applied `map()` for element-wise transformations.
* Flattened nested collections using `flatMap()`.
* Aggregated records using `reduceByKey()`.
* Generated employee summaries and department-level reports.

---

## 🛠️ PySpark Functions Used

* `repartition()`
* `coalesce()`
* `cache()`
* `unpersist()`
* `fillna()`
* `na.fill()`
* `na.drop()`
* `replace()`
* `map()`
* `flatMap()`
* `reduceByKey()`

---

## 🎯 Learning Outcomes

* Improved understanding of DataFrame partition optimization techniques.
* Learned how caching enhances PySpark application performance.
* Practiced efficient handling of missing data and data cleaning operations.
* Strengthened knowledge of fundamental RDD transformations.
* Built a solid foundation for scalable distributed data processing using PySpark.

---

## ⭐ Status

**Week 4 • Day 4 completed successfully.** This practice enhanced my understanding of PySpark optimization techniques, null handling, and RDD transformations for efficient big data processing.
