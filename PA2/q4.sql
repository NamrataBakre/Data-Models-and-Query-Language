use employees;
select dept_name, count(emp_no)-1 as cnt
from dept_manager dm, departments d
where dm.dept_no = d.dept_no 
group by dept_name
order by cnt desc, dept_name
limit 3;