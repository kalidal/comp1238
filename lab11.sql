-- List of queries run successfully 

-- Selects everything from courses
select * 
FROM courses

-- Selects the first ten rows of everything in assignments 
select * 
FROM assignments
LIMIT 10

--Counts the number of courses
SELECT count(*) 
FROM courses;

-- Filters the assignments table by due date and shows the lowest value of the due dates
SELECT min(due_date) 
FROM assignments;

--Filters the course names by the courses that begin with the word 'Intro'-something
SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

--Filters all the assignmnets that are not completed and orders it by the due date 
SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

-- Select course id, title, status and due date of incomplete assignments that start with 'COMM' and are due before the last day of december
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

--Step 4 from lab

--Assignmnets for comp1234
SELECT title,due_date
from assignments
WHERE course_id like 'COMP1234'

--Select earliest assignment due date
SELECT min(due_date)
from assignments

--Select latest assignment due dat
SELECT max(due_date)
from assignments

--Select assignment due on a specific due date
SELECT title, course_id
from assignments
where due_date LIKE '2024-10-08'

--Select assignments due on october
SELECT title, due_date
from assignments
where due_date LIKE '2024-10%'

--Find the most recent completed assignment 
SELECT min(due_date)
from assignments
where status LIKE 'Completed' 

--optional 

--Count of "Not Started" Assignments
select count(*)
from assignments
where status like 'Not Started'

--courses with labs on tuesdays
select course_id, course_name
from courses
where lab_time LIKE	'Tue%'

--
