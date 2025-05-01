-- Top 10 Data Scientist Jobs and Their Associated Skills
-- This query retrieves the top 10 highest paying Data Scientist jobs
-- and lists the associated skills for each job.

WITH top_data_science_jobs AS (
    SELECT
        job_title,            -- Job Title
        salary_year_avg,      -- Average Yearly Salary
        job_id                -- Job ID (used to link skills)
    FROM
        job_postings_fact
    WHERE
        job_title ILIKE '%Data Scientist%'  -- Focus only on Data Scientist roles
        AND salary_year_avg IS NOT NULL      -- Only consider jobs with salary info
        AND job_location IS NOT NULL         -- Only consider jobs with location
    ORDER BY
        salary_year_avg DESC
    LIMIT 10                                -- Top 10 highest paying jobs
)

SELECT 
    top_data_science_jobs.*,   -- All fields from top jobs
    skills_dim.skills          -- Skill associated with the job
FROM   
    top_data_science_jobs 
INNER JOIN  
    skills_job_dim ON top_data_science_jobs.job_id = skills_job_dim.job_id
INNER JOIN  
    skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY 
    salary_year_avg DESC;      -- Sort again by salary just to keep order

-- Example Output:
-- | Job Title             | Salary Year Avg | Skill         |
-- |-----------------------|-----------------|---------------|
-- | Data Scientist        | 960000          | Python        |
-- | Data Scientist        | 960000          | Java          |
-- | Data Scientist        | 960000          | R             |
-- | Data Scientist        | 960000          | C++           |
-- | Senior Data Scientist | 890000          | SQL           |
-- | Senior Data Scientist | 890000          | Python        |
