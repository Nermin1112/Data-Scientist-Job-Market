
-- Top 10 Data Scientist Jobs by Salary
-- This query retrieves the top 10 highest paying Data Scientist job postings.
-- It includes job title, salary, location, posted date, and schedule type.

SELECT
    job_title,                -- Job Title
    salary_year_avg,          -- Average Yearly Salary
    job_location,             -- Location of the job
    job_posted_date,          -- Date the job was posted
    job_schedule_type         -- Full-time, Part-time, etc.
FROM
    job_postings_fact
WHERE
    job_title ILIKE '%Data Scientist%'    -- Focus only on Data Scientist roles
    AND salary_year_avg IS NOT NULL        -- Only include jobs with salary data
    AND job_location IS NOT NULL           -- Only include jobs with location data
ORDER BY
    salary_year_avg DESC                  -- Sort by highest salary
LIMIT 10;                                  -- Limit to top 10 jobs

-- Example Output:
-- | Job Title                | Salary Year Avg | Job Location           | Posted Date | Schedule Type |
-- |--------------------------|-----------------|------------------------|-------------|---------------|
-- | Data Scientist           | 960000          | Madison, SD            | 2023-05-04  | Full-time     |
-- | Senior Data Scientist    | 890000          | Pretoria, South Africa | 2023-11-02  | Full-time     |
-- | Staff Data Scientist     | 550000          | Anywhere               | 2023-08-16  | Full-time     |
-- | Staff Data Scientist/BA  | 525000          | Anywhere               | 2023-09-01  | Full-time     |
