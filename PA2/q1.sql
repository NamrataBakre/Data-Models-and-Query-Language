with emp as(
select e.emp_no, birth_date, salary, dept_no
from employees e
join salaries s
on e.emp_no = s.emp_no
join dept_emp d
on e.emp_no=d.emp_no
where s.to_date='9999-01-01' and
d.to_date='9999-01-01' and
d.dept_no='d002' and
e.emp_no<100000 and
e.birth_date<='1956-12-31' and
e.birth_date>='1956-01-01' 
)

select e1.emp_no as e1, e2.emp_no as e2
from emp e1, emp e2
where e2.emp_no < e1.emp_no
and e2.salary > e1.salary
order by e1.emp_no, e2.emp_no