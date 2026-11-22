# SQL Practice

A collection of SQL exercises developed to practise database querying, data manipulation and relational database management using MySQL.

## Project Overview

This repository contains 19 SQL exercises organised into two databases:

- **Universidad:** Exercises 01–18, working with student and course enrolment data.
- **Gimnasio:** Exercise 19, working with gym members, sports activities and registrations.

Each exercise is stored in a separate `.sql` file, making the collection easy to navigate and reproduce.

## Technologies

- **MySQL 8.4** – Relational database management system.
- **DBeaver** – Database administration and SQL development tool.

## Repository Structure

```text
sql-practice/
├── README.md
├── exercises/
│   ├── exercise-01.sql
│   ├── exercise-02.sql
│   └── ...
│   └── exercise-19.sql
└── databases/
    ├── universidad/
    │   ├── schema.sql
    │   └── sample_data.sql
    └── gimnasio/
        ├── schema.sql
        └── sample_data.sql
```

## Getting Started

To reproduce the exercises, first create the databases and populate them with the sample data.

### 1. Set up the Universidad database

Execute the following files in order:

1. `databases/universidad/schema.sql`
2. `databases/universidad/sample_data.sql`

### 2. Set up the Gimnasio database

Execute the following files in order:

1. `databases/gimnasio/schema.sql`
2. `databases/gimnasio/sample_data.sql`

### 3. Run the exercises

Open the corresponding `.sql` files in the `exercises/` directory and execute them against the appropriate database.

- Exercises 01–18 use `universidad`.
- Exercise 19 uses `gimnasio`.

## Purpose

This project documents my practical progress in SQL and provides a collection of exercises involving relational databases and data analysis.
