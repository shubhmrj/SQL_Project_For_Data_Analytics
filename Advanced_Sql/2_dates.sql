-- SELECT 
--     job_title_short AS title,
--     job_location AS location, 
--     job_posted_date::DATE AS date
-- FROM job_postings_fact


-- Timestamp format 
-- SELECT 
--     job_title_short AS title,
--     job_location AS location, 
--     job_posted_date AS date_time
-- FROM job_postings_fact


-- convert timezone utc to est

-- SELECT 
--     job_title_short AS title,
--     job_location AS location, 
--     job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST'
-- FROM job_postings_fact


-- EXTRACT 

SELECT 
    job_title_short AS title,
    job_location AS location, 
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST',
    EXTRACT (YEAR FROM job_posted_date) AS YEAR,
    EXTRACT (MONTH FROM job_posted_date) AS MONTH
FROM 
    job_postings_fact
LIMIT 10;


-- COUNT NO OF JOB ID OF DATA ANALYST ON MONTH WISE

SELECT 
    EXTRACT (MONTH FROM job_posted_date) AS MONTH,
    COUNT (job_id) AS NO_OF_JOBS
FROM 
    job_postings_fact
WHERE 
    job_title_short = 'Data Analyst'
    
GROUP BY 
    MONTH
ORDER BY 
    MONTH;
