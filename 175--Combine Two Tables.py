#Python Solution
#Using Pandas
import pandas as pd
results=pd.merge(Person[['FirstName','LastName']],Address[['City','State']],
	             left_on='PersonId',right_on='PersonId',how=left)
print results