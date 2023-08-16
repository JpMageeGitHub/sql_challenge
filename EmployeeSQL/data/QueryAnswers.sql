

--Question1
Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
INNER JOIN salary as s ON
e.emp_no = s.emp_no
;


--Question2
Select employees.emp_no, employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE employees.hire_date BETWEEN '1986-01-01' AND '1986-12-31'
;

--Question3
Select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from departments as d
INNER JOIN dept_manager as dm
on d.dept_no = dm.dept_no
INNER JOIN employees as e
on e.emp_no = dm.emp_no
;

--Question4
Select dm.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from departments as d
INNER JOIN dept_manager as dm
on d.dept_no = dm.dept_no
INNER JOIN employees as e
on e.emp_no = dm.emp_no
;

--Question5
Select e.last_name, e.first_name, e.sex
from employees as e
where e.first_name = 'Hercules'
and e.last_name like 'B%'
;


--Question6
Select de.dept_no, e.emp_no, e.last_name, e.first_name
from dept_emp as de
INNER JOIN employees as e
on e.emp_no = de.emp_no
where dept_no = 'd007'
;


--Question7
Select d.dept_name, de.dept_no, e.emp_no, e.last_name, e.first_name
from departments as d
INNER JOIN dept_emp as de
on d.dept_no = de.dept_no
INNER Join employees as e
on e.emp_no = de.emp_no
where de.dept_no = 'd007' or de.dept_no = 'd005' 
;


--Question8
--https://stackoverflow.com/questions/1217244/select-top-distinct-results-ordered-by-frequency
select e.last_name, count(*) as frequency
from employees as e
group by last_name
order by count(*) desc
;