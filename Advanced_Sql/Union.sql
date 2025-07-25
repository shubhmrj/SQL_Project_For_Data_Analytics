-- Here merge jan ,feb and march table

SELECT 
    company_id,
    job_location
FROM
    january_jobs

UNION

SELECT 
    company_id,
    job_location
FROM
    february_jobs

UNION
SELECT 
    company_id,
    job_location
FROM
    march_jobs

