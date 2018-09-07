--Using temporary table
select Email from
(
  select Email, count(Email) as num
  from Person
  group by Email
) as statistic
where num > 1
;

--using having
select Email
from Person
group by Email
having count(Email) > 1;

--using Python Pandas
--g for (placeholder, g) in df.groupby('bla') if 'bla'; 
--the underscore is a typical symbol for placeholder of an inevitable argument where we don't want to use it for anything in a lambda-like expression
pd.concat(g for _, g in Email.groupby("Email") if len(g) > 1)