# Library-database-management
A MySQL database schema and sample data for a library management system. 

This repository contains a relational database schema, sample data, and SQL scripts for a comprehensive Library Management System built using **MySQL**.

## 🚀 Features
* Tracks books with titles, page counts, and genres.
* Manages authors and maps them to their respective books using relational keys.
* Demonstrates advanced SQL queries including complex `INNER JOIN` operations and data manipulation commands (`UPDATE`, `ALTER`).

## 📊 Database Schema & Sample Data
The database links authors and books with a primary/foreign key relationship. 

### Sample Records Preview:
* **Books:** *1984*, *Büyük Kayıp*, *Kader*, *Robotlar ve Dünya*, etc.
* **Genres Included:** Bilim Kurgu (Sci-Fi), Tarih (History), Roman (Novel), Teknoloji (Technology).

## 🛠️ Key SQL Queries Demonstrated
This project includes scripts for:
1. **Schema Modifications:** Dynamic schema updating using `ALTER TABLE` to add new attributes like `kitap_turu`.
2. **Data Manipulation:** Bulk categorization of records using conditional `UPDATE` statements combined with `IN` clauses.
3. **Data Retrieval:** Advanced multi-table data fetching using `INNER JOIN` logic to pull book details alongside their corresponding author names.

## 💻 How to Run
1. Open **MySQL Workbench** or your preferred MySQL client.
2. Create a new database: `CREATE DATABASE kutuphane;`.
3. Import and execute the `.sql` script file provided in this repository to generate the tables and populate the sample data.
