-- DELIVERABLE 1.

--Getting the retirement titles
SELECT e.emp_no,
       e.first_name,
       e.last_name,
       t.title,
       t.from_date,
       t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by e.emp_no;

SELECT * FROM retirement_titles

-- Using DISTINCT ON to remove duplicate rows
SELECT DISTINCT ON 	(rt.emp_no) rt.emp_no,
					rt.first_name,
					rt.last_name,
					rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE rt.to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;


SELECT * FROM  unique_titles

-- Counting the retirees by most recent title
SELECT COUNT(ut.emp_no),
ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title 
ORDER BY COUNT(title) DESC;

SELECT * FROM  retiring_titles



-- DELIVERABLE 2.

--Getting the employees eligible for the mentorship program.
SELECT DISTINCT ON(e.emp_no)e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
--DISTINCT ON(emp_no)
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no;

SELECT * FROM  mentorship_eligibility


-- DELIVERABLE 3.

--getting the number of retirees on the first year 
SELECT DISTINCT ON(e.emp_no)e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	de.dept_no
--DISTINCT ON(emp_no)
INTO first_year
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1952-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no;

--getting the dept of the retirees on the first year
SELECT COUNT(f.emp_no),
f.dept_no
INTO first_year_dep
FROM first_year as f
GROUP BY dept_no
ORDER BY dept_no;

SELECT * FROM  first_year_dep


--Getting the depts of the employees eligible for the mentorship program.
SELECT DISTINCT ON(e.emp_no)e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	de.dept_no
--DISTINCT ON(emp_no)
INTO mentorship_eligibility1
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no;

SELECT COUNT(me.emp_no),
me.dept_no
INTO mentor_dep
FROM mentorship_eligibility1 as me
GROUP BY dept_no
ORDER BY dept_no;

SELECT * FROM mentor_dep