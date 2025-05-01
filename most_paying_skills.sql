-- Top Paying Skills for Data Scientist Jobs
-- This query identifies the skills associated with the highest average salaries.

SELECT
    sd.skills,                               -- Name of the skill
    ROUND(AVG(salary_year_avg), 0) AS average_salary  -- Average salary for the skill
FROM job_postings_fact AS jpf
INNER JOIN skills_job_dim AS sjd ON jpf.job_id = sjd.job_id
INNER JOIN skills_dim AS sd ON sd.skill_id = sjd.skill_id
WHERE 
    job_title ILIKE '%Data Scientist%'       -- Focus only on Data Scientist roles
    AND salary_year_avg IS NOT NULL           -- Only consider postings with salary information
GROUP BY 
    sd.skills
ORDER BY 
    average_salary DESC                      -- Sort by highest average salary
LIMIT 20;                                    -- Show top 20 highest paying skills

-- Example Output:
-- | Skill        | Average Salary |
-- |--------------|----------------|
-- | Asana        | 227417         |
-- | RedHat       | 189500         |
-- | Watson       | 189049         |
-- | AirTable     | 186750         |
-- | Neo4j        | 171524         |
-- | Elixir       | 170824         |