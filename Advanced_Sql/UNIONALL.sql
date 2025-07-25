-- Here merge jan ,feb and march table

SELECT 
    company_id,
    job_location
FROM
    january_jobs

UNION ALL

SELECT 
    company_id,
    job_location
FROM
    february_jobs

UNION ALL

SELECT 
    company_id,
    job_location
FROM
    march_jobs

