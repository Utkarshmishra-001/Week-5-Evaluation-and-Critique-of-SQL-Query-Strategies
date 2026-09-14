# Week 5: Evaluation and Critique of SQL Query Strategies

## Project Overview

This project focuses on the evaluation and critical analysis of SQL query strategies developed during the previous internship tasks. The main objective is to assess different SQL approaches based on performance, readability, maintainability, scalability, and correctness.

A sample retail database scenario is used for the analysis. The database consists of four main tables: Customers, Products, Orders, and OrderItems. Different SQL queries are evaluated to understand how query structure and strategy can affect data extraction and manipulation.

---

## Objectives

The main objectives of this project are:

- Evaluate previously developed SQL queries.
- Identify strengths and weaknesses of different SQL strategies.
- Compare alternative query approaches.
- Analyze query performance and efficiency.
- Evaluate SQL query readability.
- Assess maintainability of different query structures.
- Consider scalability for large datasets.
- Verify the correctness of query results.
- Recommend better SQL practices and alternative strategies.

---

## Database Structure

The project uses a sample retail database containing the following tables.

### Customers

Stores customer information.

**Columns:**

- `customer_id`
- `customer_name`
- `city`
- `email`

### Products

Stores product information.

**Columns:**

- `product_id`
- `product_name`
- `category`
- `price`
- `stock`

### Orders

Stores customer order information.

**Columns:**

- `order_id`
- `customer_id`
- `order_date`
- `status`

### OrderItems

Stores individual products included in orders.

**Columns:**

- `order_item_id`
- `order_id`
- `product_id`
- `quantity`

---

## Evaluation Criteria

The SQL strategies are evaluated using the following criteria:

| Criteria | Description |
|---|---|
| Performance | Efficiency of query execution and amount of data processed |
| Readability | Clarity and understandability of SQL code |
| Maintainability | Ease of modifying and maintaining the query |
| Scalability | Ability to handle increasing data volume |
| Correctness | Accuracy of the returned results |

---

## SQL Strategies Evaluated

### 1. SELECT * vs Specific Columns

The first comparison evaluates the use of `SELECT *` against selecting only the required columns.

#### Less Efficient Approach

```sql
SELECT *
FROM Products;
