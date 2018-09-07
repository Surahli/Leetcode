delete p1
from Person p1, Person p2
where p1.Id>p2.Id
and p1.Email=p2.Email;


--Python solution
Person.drop_duplicates(subset=None, keep='first', inplace=False)