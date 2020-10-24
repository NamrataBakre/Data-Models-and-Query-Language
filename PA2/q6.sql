select join1.emp_no as emp_no, 100*(gVal-1)/(total-1) as percentile
from ( select emp_no, s3.salary, salary_count, (select count(distinct emp_no) from salaries s0 where s0.emp_no<20000 and s0.to_date='9999-01-01' 
) as total
from salaries s3
join
(select s2.salary, count(*) as salary_count
from salaries s2
where s2.emp_no<20000 and s2.to_date='9999-01-01' 
group by s2.salary) s4
on s3.salary=s4.salary
where s3.emp_no<20000 and s3.to_date='9999-01-01'
order by s3.salary
) join1
inner join
(select s2.emp_no as s2_emp_no, count(s2.emp_no) as gVal from salaries s1
inner join
salaries s2
on s1.salary <= s2.salary
where s1.to_date='9999-01-01'
and s2.to_date='9999-01-01'
and s1.emp_no<20000
and s2.emp_no<20000
group by s2.emp_no
order by s2.emp_no) as join2
on join1.emp_no=join2.s2_emp_no