--Use Not in 
--Each Id is unique, there might be duplications for same names but different people
# Write your MySQL query statement below
select Name as Customers
from Customers
where Id not in (select CustomerId from Orders);

--Use left join
--if we do b.CustomerId is null in the left join, then it will return all Names in Customer Table
select Name as Customers
from Customers a
left join Orders b
on a.Id=b.CustomerId
where b.CustomerId is null;

--python solution
Customers = Customers[~Customers['ID'].isin(Orders['CustomerId'])]
print Customers[['Name']]
