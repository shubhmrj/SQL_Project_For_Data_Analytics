SELECT job_id
FROM ( --subqueries start here
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1
)AS january_jobs;
-- subqueries end here


-- Simple method

SELECT
    company_id,
    job_no_degree_mention
FROM
    job_postings_fact
WHERE
    job_no_degree_mention=true;

-- get company name 

SELECT 
    Company_id,
    name AS Name
FROM company_dim
WHERE company_id IN (
    SELECT
        company_id
    FROM
        job_postings_fact
    WHERE
        job_no_degree_mention=true
    )

SELECT *
FROM company_dim