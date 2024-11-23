-- Exercise Questions
  
-- 1) Concatenate Course Name and Semester:
SELECT 
    CONCAT(course_name, ' - ', semester) AS course_info
FROM 
    courses;

-- 2) Find Courses with Labs on Fridays:
SELECT 
    course_id, 
    course_name, 
    lab_time
FROM 
    courses
WHERE 
    lab_time = 'Friday';

--3) Upcoming Assignments:
SELECT 
    id, 
    title, 
    due_date
FROM 
    assignments
WHERE 
    due_date > CURRENT_DATE;

-- 4) Count Assignments by Status:
SELECT 
    status, 
    COUNT(*) AS assignment_count
FROM 
    assignments
GROUP BY 
    status;

-- 5) Longest Course Name:
SELECT 
    course_id, 
    course_name, 
    LENGTH(course_name) AS name_length
FROM 
    courses
ORDER BY 
    name_length DESC
LIMIT 1;

-- 6) Uppercase Course Names:
SELECT 
    UPPER(course_name) AS course_name_uppercase
FROM 
    courses;

-- 7) Assignments Due in September:
SELECT 
    title
FROM 
    assignments
WHERE 
    due_date LIKE '%-09-%';

-- Name: Kidus Gashaw
-- ID: 101562914 Most challenging part of all queries
-- 8) Assignments with Missing Due Dates:
-- Insert a new assignment with a NULL due_date and a valid course_id and status
INSERT INTO assignments (id, title, course_id, status, due_date)
VALUES (101, 'Extra Credit Assignment', 1, 'Not Started', NULL);  -- 'Not Started' as a status value

-- Query to find all assignments with a NULL due_date
SELECT 
    id, 
    title
FROM 
    assignments
WHERE 
    due_date IS NULL;
