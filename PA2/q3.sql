select dm1.emp_no, d.dept_name
from dept_manager dm1, departments d
where not exists (select * from dept_manager dm2 where datediff(dm2.to_date, dm2.from_date) < DATEDIFF(dm1.to_date, dm1.from_date) and
dm1.dept_no=dm2.dept_no and
dm1.emp_no<>dm2.emp_no
) 
and d.dept_no=dm1.dept_no
order by dm1.emp_no;