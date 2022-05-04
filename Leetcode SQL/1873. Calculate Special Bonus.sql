# Write your MySQL query statement below
select employee_id,
case when (employee_id mod 2 = 1) and substr(name,1,1) != 'M' then salary else 0
end as bonus
from employees;