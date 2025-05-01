-- Most Optimal Skills for Data Scientist Jobs
-- This query identifies skills that are both highly demanded and offer high salaries.

SELECT
    sd.skills,                               -- Name of the skill
    ROUND(AVG(salary_year_avg), 0) AS average_salary,  -- Average salary for the skill
    COUNT(*) AS skills_demand                -- Number of times the skill appears
FROM job_postings_fact AS jpf
INNER JOIN skills_job_dim AS sjd ON jpf.job_id = sjd.job_id
INNER JOIN skills_dim AS sd ON sd.skill_id = sjd.skill_id
WHERE 
    job_title ILIKE '%Data Scientist%'       -- Focus only on Data Scientist jobs
    AND salary_year_avg IS NOT NULL           -- Only consider jobs with salary information
GROUP BY 
    sd.skills
ORDER BY 
    skills_demand DESC,                      -- First sort by demand
    average_salary DESC                     -- Then sort by salary if demand is equal
LIMIT 20 ;

-- Example Output:
-- | Skill           | Average Salary | Skills Demand |
-- |-----------------|----------------|---------------|
-- | Python          | 140245         | 4898          |
-- | SQL             | 141822         | 3567          |
-- | R               | 136375         | 2791          |
-- | Tableau         | 134620         | 1350          |
-- | SAS             | 122321         | 1300          |
-- | AWS             | 140183         | 1128          |
-- | Spark           | 147457         | 1103          |
