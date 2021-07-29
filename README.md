# Pewlett-Hackard-Analysis
# Pewlett-Hackard-Analysis

Using  SQL- relational databases


PURPOSE

Purpose of our project;

The purpose of our project is to determine the number of retiring employees by using the title column in identifying which employees are eligible to participate in the mentorship program. Our data on the retiring employees using the title information also show the titles of all employees born between January, 1 1952 and December, 31 1955. We then created a query in retrieving the emp_no, first_name and last_name columns from the employees table and retrieved the title,from_date and to_date columns of the titles table in our pewlett-hackard query. We joined both of these table on the primary key,filtered the data by birth_date and put the information into a new table. For the next two parts of deliverable 1 we created a unique_titles table to find the first occurance of the emp_no in our new table by using the DISTINCT ON function and for the last part of the deliverable we did ORDER BY COUNT to show us the total number of each title from our unique_titles table that we created. The second deliverable we wrote a query that retrieved columns from our employees and dept_emp table, filtered data on current employees born in 1965 then ordered the table by emp_no.

The Results;

With the retirment_titles table we are able to see every eligible for retirement employee and how long they have worked at each position over the course of their career.

The unique titles table that we created is showing the most recent title for employees of retirment age.

Our retiring_titles shows us the a majority of the employees of retirment age have senior titles.



Summary;

Number of individuals retiring: There are 33118 current employees which are retiring as per the above criterion.

Number of individuals being hired: The number of individuals being hired should be ideally equal to the number of retirees (i.e.33118). But there should also be some criterion for hiring as well.

Number of individuals available for mentorship role: There are 1549 employees who are eligible for mentorship role.The mentorship criterion was that the employee should be born in year 1965.

Recommendation for further analysis on this data set: There should be some criterion for hiring individuals as well. Because with the change of time and the technology enhancement or automation the company requirement changes. Also the current salary should be updated in the database after the employees's promotion.
