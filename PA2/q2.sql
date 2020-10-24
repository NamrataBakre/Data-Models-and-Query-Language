use employees;
select dept_name, title, count(de.emp_no) as cnt
from dept_emp de, departments d, titles t
where d.dept_no = de.dept_no and
t.emp_no = de.emp_no and 
de.to_date > '2020-10-02' and t.to_date > '2020-10-02'
group by title,dept_name
order by dept_name, title;