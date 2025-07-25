ALTER TABLE job_applied
RENAME COLUMN contact TO Contact_Name;

ALTER TABLE job_applied
ALTER COLUMN Contact_Name TYPE TEXT;

ALTER TABLE job_applied
DROP COLUMN Contact_Name;


DROP TABLE job_applied;

SELECT *
FROM job_applied;