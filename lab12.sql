-- Lab week 12

--Inserts a new assignment with NULL due_date. 
--Running this will only create a new section. You have to run select to see changes
INSERT INTO assignments (course_id, title, status) 
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');

SELECT * FROM assignments
LIMIT 10; 

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

SELECT strftime('%Y', due_date) AS Year, * 

--problems
--concatanate 
SELECT concat ('course_name', '-' ,'semester');

--select courses with friday lab
SELECT course_name, course_id, lab_time
FROM courses
where lab_time like 'Fri%'

-- Due date after todays date
select * 
from assignments
where due_date like '2024-11-2%' 

--Count and group assignment by status
SELECT SUBSTRING(status, 1, 4) AS prefix, count(*)
FROM assignments
GROUP BY prefix;

--Longest course name
SELECT course_name, length(course_name)
FROM courses
order by length(course_name) DESC

--Upper case course name
SELECT upper(course_name)
from courses

--Assignments due in september
SELECT *
from assignments
where due_date like '2024-09%' 

--Assignemnt with NULL due date
SELECT *
from assignments
where due_date is NULL



