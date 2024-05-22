USE people;

SELECT MAX(marks) FROM StudentMarks;

-- Smart Hack
SELECT MAX(marks) FROM (SELECT * FROM StudentMarks) as f;

-- Q1. Six marks were reduced from the paper of Highest marks student in re-correction
-- Syntax of UPDATE Statement 
UPDATE StudentMarks
SET marks = marks - 6
WHERE marks = (SELECT MAX(marks) FROM (SELECT * FROM StudentMarks) as f);

SELECT * FROM StudentMarks;

-- Challenge : Teacher also revealed that in re-correction the student who got the least marks added 10 marks to his total

UPDATE StudentMarks 
SET marks = marks + 10
WHERE marks = (SELECT MIN(marks) FROM (SELECT * FROM StudentMarks) as f);

SELECT * FROM StudentMarks;

-- DELETE Using Subqueries
-- As 'arjun' is done with his 10th class , he is leaving the school . 
-- Now we need to delete his record from the StudentMarks table .
/*
DELETE FROM StudentMarks
WHERE class = 10 AND roll_no = 1;
*/ 

SELECT class , roll_no
FROM StudentDetails
WHERE name = 'arjun';

DELETE FROM StudentMarks
WHERE (class , roll_no) = (SELECT class, roll_no
							FROM StudentDetails
							WHERE name = 'arjun');

SELECT * FROM StudentMarks;