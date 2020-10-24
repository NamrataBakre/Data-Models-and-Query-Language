use employees;
select distinct t1.emp_no,s2.from_date as on_date,t1.title as o_title, t2.title as n_title, s1.salary as o_salary,s2.salary as n_salary 
from titles t1, titles t2, salaries s1, salaries s2
where s1.emp_no=s2.emp_no and
s1.to_date = s2.from_date and
s2.salary<s1.salary and
t2.from_date > t1.from_date
and t1.emp_no = t2.emp_no
and t1.emp_no = s1.emp_no
and s2.from_date = t2.from_date
order by s1.emp_no;