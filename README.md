# 📊 SQL Analysis: Data Scientist Job Market


This project consists of five SQL queries designed to explore and analyze the Data Scientist job market using a relational job postings database. The focus is on identifying key skills, salary trends, and the most in-demand and top-paying roles.

## 🧱 Project Setup

The dataset was downloaded from a job market data source.
I structured the dataset into a relational PostgreSQL database using tables like:
- `job_postings_fact`: job-level info
- `skills_job_dim`: mapping between jobs and skills
- `skills_dim`: skill names


## 🛠️ Tools Used
- SQL (PostgreSQL)
- DB: Relational schema with job postings and skills tables

## 📁 Query Overview

### 1. Top Paying Data Scientist Jobs
Displays the top 10 highest-paying job postings with job title, salary, location, and more.

### 2. Top Jobs with Associated Skills
Lists the top 10 highest-paying Data Scientist jobs along with the skills required for each.

### 3. Most Demanded Skills
Identifies the most frequently requested skills for Data Scientist job postings.
- Sorts by count of skill appearances.

### 4. Most Optimal Skills
Finds skills that are both highly demanded and have high average salaries.
- Uses average salary and demand as metrics.

### 5. Most Paying Skills
Ranks skills based on the highest average salary across Data Scientist postings.
- Great for identifying niche, high-paying skills.


## 🚀 How to Use
1. Run each `.sql` file against your database that contains `job_postings_fact`, `skills_job_dim`, and `skills_dim` tables.
2. Make sure salary and skill data are populated to get meaningful results.
3. Use a SQL IDE like DBeaver, PgAdmin, or Azure Data Studio for execution and visualization.

## 📌 Dataset Schema Assumption
- `job_postings_fact`: job-level info
- `skills_job_dim`: mapping between jobs and skills
- `skills_dim`: skill names

## 📬 Contact
Feel free to connect: nerko_hodza11@hotmail.com

