

-- BUSCANDO TODOS OS PESSOAS
SELECT * FROM dbo.Pessoas

-- BUSCANDO COLUNAS ESPECIFICAS DA TABELA PESSOAS
SELECT NM_Pessoa
      ,DT_Nascimento 
FROM dbo.Pessoas

-- BUSCANDO PESSOAS UTILIZANDO A CLÁUSULA WHERE 
SELECT NM_Pessoa
      ,DT_Nascimento 
FROM dbo.Pessoas
WHERE NM_Pessoa = 'Lucas Casarotti'



   
