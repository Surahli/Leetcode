--sql solution, use three tables, use self-join
select distinct a.Num as ConsecutiveNums
from Logs a, Logs b, Logs c
where a.Id+1=b.Id and b.Id+1=c.Id
and a.Num=b.Num and b.Num=c.Num;

--python solutions
from itertools import groupby
grouped_L = [(k, sum(1 for i in g)) for k,g in groupby(L)]

--https://codereview.stackexchange.com/questions/132066/finding-consecutive-occurrences-of-a-value-in-an-array
result_list = []
current = source_list [0]
count = 0
for value in source_list:
	if value == current:
		count +=1
	else:
		result_list.append((current,count))
		current = value
		count = 1
result_list.append((current,count))


--find max length in a consecutive result_list
--https://stackoverflow.com/questions/36441521/find-maximum-length-of-consecutive-repeated-numbers-in-a-list-python
a = [1,1,1,1,1,2,2,2,2,2,1,1,1,3,3]
z = [(x[0], len(list(x[1]))) for x in itertools.groupby(a)]
max(z, key=lambda x:x[1])[1]