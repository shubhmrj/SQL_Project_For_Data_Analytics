SELECT 
    company_id,
    -- count(*)
FROM
    job_postings_fact
GROUP BY
    company_id


-- use CTE

WITH company_job_count AS (
    SELECT 
        company_id,
        count(*)
    FROM
        job_postings_fact
    GROUP BY
        company_id  
) 

SELECT *
FROM company_job_count


-- Find the companies that have most job openings.
-- get the total number of job postings per company id(job_posting fact).
-- return the total number of jobs with the comapny name (company_dim)

WITH company_job_count AS (
    SELECT 
        company_id,
        count(*) AS total_jobs
    FROM
        job_postings_fact
    GROUP BY
        company_id  
) 

SELECT 
    company_dim.name,
    company_job_count.total_jobs
FROM 
    company_dim
LEFT JOIN company_job_count ON company_job_count.company_id=company_dim.company_id

