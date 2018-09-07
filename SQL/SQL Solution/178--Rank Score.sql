---Using no window function
SELECT s1.Score, (SELECT COUNT(DISTINCT s2.Score) 
                    FROM Scores AS s2
                    WHERE s2.Score >= s1.Score 
                 ) AS Rank
    FROM Scores AS s1
    ORDER BY s1.Score DESC;
 ---Other solution is to use dense_rank()



 ---Python solution
--http://www.datasciencemadesimple.com/rank-dataframe-python-pandas-min-max-dense-rank-group/
--http://cmdlinetips.com/2018/02/how-to-sort-pandas-dataframe-by-columns-and-row/
Score['Rank'] = Score['Score'].rank(ascending=0，method='dense')
Score=Score.sort_values(by='Score',ascending=False)
print Score

