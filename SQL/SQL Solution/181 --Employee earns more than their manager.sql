--Use self-join, because left join will remain all of the results in the left table
select a.Name as Employee
from Employee a
join Employee b
on a.ManagerId=b.Id
and a.Salary > b.Salary;


--python solution
df =pd.merge(Employee,Employee, left_on='ManagerId', right_on='Id')
df = df[(df.Salary_a>df.Salar_b)]
print df[['Employee_a']]