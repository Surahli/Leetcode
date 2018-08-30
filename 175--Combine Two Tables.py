#Python Solution
#Using Pandas
import pandas as pd
results=pd.merge(Person,Address,
	             left_on='PersonId',right_on='PersonId',how=left)
results=results[['FirstName','LastName','City','State']]
results.head()