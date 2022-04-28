
-- BUSCANDO TODOS OS REGISTRO DA TABELA
SELECT * 
FROM dbo.Turmas

SELECT * 
FROM dbo.Alunos

SELECT * 
FROM dbo.AlunosXTurmas

SELECT * 
FROM Cursos

SELECT *
FROM Situacao

-- BUSCANDO APENAS ALGUNS CAMPOS DA TABELA
SELECT ID_Curso, Data_Inicio, Data_Termino
FROM dbo.Turmas

-- UTILIZANDO NOMES PERSONALIZADOS PARA NOSSOS CAMPOS
SELECT 
  ID_Aluno AS "Código Aluno"
 ,Nome AS "Nome Aluno"
 ,Data_Nascimento AS "Data de nascimento"
FROM dbo.Alunos
