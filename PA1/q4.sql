use employees;
select emp_no as emp, mgr, from_date
from (select dept_no, emp_no, from_date
from dept_emp
where to_date='9999-01-01') currEmps
LEFT JOIN
(select dept_no as mdept_no, emp_no as mgr
from dept_manager
where to_date='9999-01-01') currMgrs
on currMgrs.mdept_no=currEmps.dept_no
order by currEmps.emp_no;