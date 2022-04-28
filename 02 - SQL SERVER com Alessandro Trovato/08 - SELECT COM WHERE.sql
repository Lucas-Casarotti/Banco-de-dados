
-- BUSCANDO REGISTRO UTILIZANDO A CLÁUSULA WHERE
SELECT * 
FROM dbo.Alunos
WHERE ID_Aluno = 1

SELECT * 
FROM dbo.Alunos
WHERE Nome = 'Lucas Casarotti'

SELECT ID_Aluno 
      ,Nome
      ,Data_Nascimento
      ,Sexo
FROM dbo.Alunos
WHERE Nome = 'Lucas Casarotti'

-- BUSCANDO REGISTROS UTILIZANDO A CLÁUSULA WHERE
-- PODE UTILIZAR
-- > MAIOR
-- < MENOR
-- >= MAIOR OU IGUAL
-- <= MENOR OU IGUAL
-- <> DIFERENTE
-- = IGUAL
SELECT ID_Aluno 
      ,Nome
      ,Data_Nascimento
      ,Sexo
FROM dbo.Alunos
WHERE Nome <> 'Lucas Casarotti'

-- BUSCANDO REGISTROS UTILIZANDO A CLÁUSULA WHERE COM MAIS DE UMA CONDIÇÃO
SELECT ID_Aluno 
      ,Nome
      ,Data_Nascimento
      ,Sexo
FROM dbo.Alunos
WHERE Sexo = 'M'
  AND Data_Nascimento >= '31/05/1999'
  AND ID_Aluno <10

-- BUSCANDO REGISTRO UTILIZANDO FUNÇÃO COM A CLAÚSULA WHERE
-- FUNÇÃO DAY EXIBE APENAS O DIA
SELECT ID_Aluno 
      ,Nome
      ,day (Data_Nascimento) AS Dia
      ,Sexo
FROM dbo.Alunos
WHERE Data_Nascimento <> '31/05/1999'

-- FUNÇÃO MONTH EXIBE APENAS O MÊS
SELECT ID_Aluno 
      ,Nome
      ,Month (Data_Nascimento) AS Mês
      ,Sexo
FROM dbo.Alunos
WHERE Data_Nascimento <> '31/05/1999'

-- FUNÇÃO YEAR EXIBE APENAS O ANO
SELECT ID_Aluno 
      ,Nome
      ,year (Data_Nascimento) AS Ano
      ,Sexo
FROM dbo.Alunos
WHERE Data_Nascimento <> '31/05/1999'

SELECT ID_Aluno 
      ,Nome
      ,year (Data_Nascimento) AS Ano
      ,Sexo
FROM dbo.Alunos
WHERE year (Data_Nascimento) <> '1999'




