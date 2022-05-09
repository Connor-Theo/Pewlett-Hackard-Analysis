--create table employees(
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
primary key(emp_no)
);

select * from employees;

select first_name, last_name, emp_no
from employees;

select title, from_date, to_date
from Titles;

select e.emp_no, 
	e.first_name,
	e.last_name, 
	t.title, 
	t.from_date,
	t.to_date
	into retirement_titles
	from Titles as t
	inner join employees as e
	on e.emp_no = t.emp_no
	where (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');
	
select * from retirement_titles;

--drop table Unique_Titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO Unique_Titles
FROM Retirement_Titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;

select * from Unique_Titles;

--drop table retiring_title;

select count(title), title

into retiring_title
from Unique_Titles
group by title
order by count(title) desc;

select * from retiring_title;

select emp_no, first_name, last_name, birth_date
from employees;

select from_date, to_date
from dept_emp;

select title
from titles;

drop table emp_table;

select e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date
into emp_table
from dept_emp as de
inner join employees as e
on e.emp_no = de.emp_no
where (e.birth_date between '1965 01-01' and '1965-12-31')
order by e.emp_no;

select * from emp_table;

drop table mentorship_eligibility;

select distinct on(emp_no) et.emp_no,
et.first_name,
et.last_name,
et.birth_date,
et.from_date,
et.to_date,
t.title
into mentorship_eligibility 
from emp_table as et
left join titles as t
on t.emp_no = et.emp_no
order by emp_no;

select * from mentorship_eligibility;

