
-- BUSCANDO PESSOAS UTILIZANDO AS CONDI��ES IN E NOT IN

-- IN = VAI BUSCAR OS REGISTROS DENTRO DOS PARAMETROS
SELECT ID_Pessoa
FROM dbo.Pessoas
WHERE ID_Pessoa IN (1,3)

-- NOT IN = VAI BUSCAR TODOS OS REGISTROS QUE N�O EST� NOS PARAMETROS 
SELECT ID_Pessoa
FROM dbo.Pessoas
WHERE ID_Pessoa NOT IN (1,3)


SELECT * FROM Pessoas