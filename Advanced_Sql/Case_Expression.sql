SELECT
    COUNT(job_id) AS no_of_jobs,
    -- job_title_short,
    -- job_location,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Online'
        WHEN job_location = 'New York, NY' THEN 'Remote'
        ELSE 'onsite'
    END AS job_type
FROM
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    job_type;
    -- job_title_short,
    -- job_location;