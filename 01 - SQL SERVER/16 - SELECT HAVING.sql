
SELECT COUNT(1)
      ,NM_Pessoa
FROM dbo.Pessoas
GROUP BY NM_Pessoa
HAVING COUNT(1) > 1