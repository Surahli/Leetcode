--Using Oracle SQL
--Using Windows Function
CREATE FUNCTION getNthHighestSalary(N IN NUMBER) RETURN NUMBER IS
result NUMBER;
BEGIN
    SELECT salary into result
        from (select distinct salary, 
        DENSE_RANK() OVER ( ORDER BY salary DESC NULLS LAST) DENSE_RANK
        FROM employee)
        where DENSE_RANK = n ;
    RETURN result;
END;


---Not using Windows FunctionCREATE FUNCTION getNthHighestSalary(N IN NUMBER) RETURN NUMBER IS
CREATE FUNCTION getNthHighestSalary(N IN NUMBER) RETURN NUMBER IS
result NUMBER;
BEGIN
    select salary into result from (
        select salary,rownum r1 from
            (select distinct salary from Employee order by salary desc)
        )
    where r1 = n;
    RETURN result;
END;


--Python solution
def getNthHighestSalary (n):

	return Employee.Salary.nlargest(N).iloc[-1]

def getNthHighestSalary (n):

	return Employee.sort_values(by='Salary',ascending=False).iloc[[n]]



