-- Most Demand Skills for Data Scientist Jobs
-- This query identifies the most frequently requested skills for Data Scientist positions.

SELECT
    sd.skills,                              -- Name of the skill
    COUNT(*) AS skills_demand                -- Number of times the skill appears in job postings
FROM job_postings_fact AS jpf
INNER JOIN skills_job_dim AS sjd ON jpf.job_id = sjd.job_id
INNER JOIN skills_dim AS sd ON sd.skill_id = sjd.skill_id
WHERE job_title ILIKE '%Data Scientist%'     -- Focus only on Data Scientist job titles
GROUP BY 
    sd.skills
ORDER BY 
    skills_demand DESC                      -- Sort by the most demanded skills
LIMIT 20;

-- Example Output:
-- | Skill           | Skills Demand |
-- |-----------------|---------------|
-- | Python          | 117607        |
-- | SQL             | 77680         |
-- | R               | 61253         |
-- | SAS             | 29346         |
-- | Tableau         | 28185         |
-- | AWS             | 27055         |
-- | Spark           | 25937         |
-- | Azure           | 31021672      |


