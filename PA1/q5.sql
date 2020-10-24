use employees;
select dept_name, count(emp_no) as noe
from dept_emp e, departments d
where e.dept_no=d.dept_no and to_date > NOW()
group by dept_name
having count(emp_no) > 20000
order by dept_name;
