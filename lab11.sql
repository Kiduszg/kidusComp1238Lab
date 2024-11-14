-- Some comment that is ignored by the DB

-- Exercise Question
-- 1: Assignments for a Specific Course
SELECT title, due_date
FROM assignments
WHERE course_code = 'COMP1234';

-- 2: Earliest Assignment Due Date
SELECT MIN(due_date) AS earliest_due_date
FROM assignments;

-- 3: Latest Assignment Due Date
SELECT MAX(due_date) AS latest_due_date
FROM assignments;

-- 4: Assignments Due on a Specific Date
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';

-- 5: Find All Assignments Due in October
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

-- 6: Find the Most Recent Completed Assignment
SELECT MAX(due_date) AS most_recent_completed_due_date
FROM assignments
WHERE status = 'Completed';
