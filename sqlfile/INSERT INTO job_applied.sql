INSERT INTO job_applied
    (
        job_id,
        application_sent_date,
        custom_resume,
        resume_file_name,
        cover_letter_sent,
        cover_letter_file_name,
        status
    )
VALUES
    (
        1,
        '2024-02-01',
        true,
        'resume_02.pdf',
        true,
        'cover_letter_01.pdf',
        'submitted'
    ),
    (
        2,
        '2025-02-01',
        true,
        'resume_03.pdf',
        true,
        'cover_letter_04.pdf',
        'submitted'
    ),
    (
        3,
        '2024-02-01',
        true,
        'resume_05.pdf',
        true,
        'cover_letter_03.pdf',
        'submitted'
    ),
    (
        4,
        '2024-02-01',
        true,
        'resume_06.pdf',
        true,
        'cover_letter_01.pdf',
        'submitted'
    ),
    (
        5,
        '2022-02-01',
        true,
        'resume_04.pdf',
        true,
        'cover_letter_01.pdf',
        'submitted'
    );

SELECT *
FROM job_applied;