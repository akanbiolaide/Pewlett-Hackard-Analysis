# Pewlett-Hackard-Analysis
-- deliverable 1 part 1

--PART 1

SELECT e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_titles
FROM employee as e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;




-- Use Dictinct with Orderby to remove duplicate rows for part 2/Deliverable 1
SELECT DISTINCT ON (emp_no) emp_no,first_name,last_name, title
INTO unique_titles
FROM retirement_titles AS rt
ORDER BY emp_no ASC, to_date DESC;




--part 3SELECT 
SELECT COUNT(emp_no) emp_no, title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title 
ORDER BY COUNT(title) DESC;

SELECT * FROM retiring_titles

--Deliverable part 2

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);


SELECT ce.emp_no,
 ce.first_name,
 ce.last_name,
 ti.title,
 ti.from_date,
 ti.to_date
INTO ret_titles
FROM employee AS ce
 INNER JOIN titles AS ti
   ON (ce.emp_no = ti.emp_no)
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY ce.emp_no;



SELECT DISTINCT ON (e.emp_no) e.emp_no,
 e.first_name,
 e.last_name,
 e.birth_date,
 de.from_date,
 de.to_date,
 ti.title
INTO mentorship
FROM employee as e
INNER JOIN dept_emp as de
 ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
 ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;


