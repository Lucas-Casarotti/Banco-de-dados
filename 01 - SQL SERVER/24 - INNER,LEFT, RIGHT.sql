----------------------------------------------------------------------------------------------------------------------------------------------
-- BUSCANDO COM INNER JOIN, ONDE AS DUAS TABELAS QUE TEM LIGA��O
SELECT *
FROM dbo.Funcionarios F WITH (NOLOCK)
     INNER JOIN dbo.Cargos C 
     ON F.ID_Cargo = C.ID_Cargo

-- BUSCANDO COM INNER JOIN, OS CARGOS E O TOTAL FUNCION�RIOS REFERENTES AO CARGO, QUE TENHAM LIGA��O ENTRE TABELA A E TABELA B
SELECT C.NM_Cargo, count(F.ID_Funcionario) Total_Funcionarios 
FROM dbo.Funcionarios F
     INNER JOIN dbo.Cargos C
     ON C.ID_Cargo = F.ID_Cargo
GROUP BY C.NM_Cargo;

----------------------------------------------------------------------------------------------------------------------------------------------
-- BUSCANDO COM LEFT JOIN, TODOS OS CAMPOS DA TABELA A (dbo.Funcionarios) E OS CAMPOS DA TABELA B (dbo.Cargos) QUE TENHAM LIGA��O ENTRE ELAS
SELECT *
FROM dbo.Funcionarios F WITH (NOLOCK)
     LEFT JOIN dbo.Cargos C 
     ON F.ID_Cargo = C.ID_Cargo

-- BUSCANDO COM LEFT JOIN, O TOTAL DE FUNCION�RIOS DA TABELA A E OS CARGOS B QUE TENHAM LIGA��O
SELECT C.NM_Cargo, count(F.ID_Funcionario) Total_Funcionarios 
FROM dbo.Funcionarios F
     LEFT JOIN dbo.Cargos C
     ON C.ID_Cargo = F.ID_Cargo
GROUP BY C.NM_Cargo;

----------------------------------------------------------------------------------------------------------------------------------------------
-- BUSCANDO COM RIGHT JOIN, TODOS OS CAMPOS DA TABELA B (dbo.Cargos) E OS CAMPOS DA TABELA A (dbo.Funcionarios) QUE TENHAM LIGA��O ENTRE ELAS
SELECT *
FROM dbo.Funcionarios F WITH (NOLOCK)
     RIGHT JOIN dbo.Cargos C 
     ON F.ID_Cargo = C.ID_Cargo

-- BUSCANDO COM RIGHT JOIN, TODOS OS CARGOS E O TOTAL FUNCION�RIOS DA TABELA B INDEPENDENTE QUE TENHAM LIGA��O ENTRE TABELA A 
SELECT C.NM_Cargo, count(F.ID_Funcionario) Total_Funcionarios 
FROM dbo.Funcionarios F
     RIGHT JOIN dbo.Cargos C
     ON C.ID_Cargo = F.ID_Cargo
GROUP BY C.NM_Cargo;



