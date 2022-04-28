-- BUSCANDO COM INNER JOIN O TOTAL DE TURMAS POR CURSO UTILIZANDO A FUN��O COUNT
SELECT C.Nome_Curso
      ,T.Data_Inicio
      ,T.Data_Termino
      ,COUNT(T.ID_Turma) AS 'TOTAL DE TURMAS'
FROM dbo.Turmas AS T WITH (NOLOCK)
     INNER JOIN dbo.Cursos AS C WITH (NOLOCK)
     ON C.ID_Curso = T.ID_Curso
GROUP BY C.Nome_Curso, T.Data_Inicio, T.Data_Termino
     
-- BUSCANDO TODOS OS CURSOS INDEPENTENDE SE TEM TURMA OU N�O
SELECT C.Nome_Curso
      ,T.Data_Inicio
      ,T.Data_Termino
      ,COUNT(T.ID_Turma) AS 'TOTAL DE TURMAS'
FROM dbo.Turmas AS T WITH (NOLOCK)
     RIGHT JOIN dbo.Cursos AS C WITH (NOLOCK)
     ON C.ID_Curso = T.ID_Curso
GROUP BY C.Nome_Curso, T.Data_Inicio, T.Data_Termino


-- BUSCANDO COM INNER JOIN, TODOS OS CURSOS E TURMAS QUE TEM LIGA��O
SELECT *
FROM dbo.Turmas AS T WITH (NOLOCK)
     INNER JOIN dbo.Cursos AS C WITH (NOLOCK)
     ON C.ID_Curso = T.ID_Curso


-- INNER JOIN COM MAIS DE DUAS TABELAS BUSCANDO LISTA COMPLETA DE ALUNOS
SELECT *
FROM dbo.AlunosXTurmas AT WITH (NOLOCK)
     INNER JOIN dbo.Turmas T WITH (NOLOCK)
     ON T.ID_Turma = AT.ID_Turma
     INNER JOIN dbo.Cursos C WITH (NOLOCK)
     ON C.ID_Curso = T.ID_Curso
     RIGHT JOIN dbo.Alunos A WITH (NOLOCK)
     ON A.ID_Aluno = AT.ID_Aluno



-- FILTRANDO APENAS OS CAMPOS DESEJADOS
SELECT T.ID_Turma AS 'C�digo da turma'
      ,C.ID_Curso AS 'C�digo do curso'
      ,C.Nome_Curso AS 'Nome do curso'
      ,T.Data_Inicio AS 'In�cio do curso'
      ,T.Data_Termino AS 'T�rmino do curso'
FROM dbo.Turmas AS T WITH (NOLOCK)
     INNER JOIN dbo.Cursos AS C WITH (NOLOCK)
     ON C.ID_Curso = T.ID_Curso


-- BUSCANDO COM LEFT JOIN, TODOS OS CAMPOS DA TABELA A (dbo.Turmas) E OS CAMPOS DA TABELA B (dbo.Cursos) QUE TENHAM LIGA��O ENTRE ELAS
SELECT T.ID_Turma AS 'C�digo da turma'
      ,C.ID_Curso AS 'C�digo do curso'
      ,C.Nome_Curso AS 'Nome do curso'
      ,T.Data_Inicio AS 'In�cio do curso'
      ,T.Data_Termino AS 'T�rmino do curso'
FROM dbo.Turmas AS T WITH(NOLOCK)
     LEFT JOIN dbo.Cursos AS C WITH (NOLOCK) 
     ON C.ID_Curso = T.ID_Curso


-- BUSCANDO COM RIGHT JOIN, TODOS OS CAMPOS DA TABELA B (dbo.Cursos) E OS CAMPOS DA TABELA A (dbo.Turmas) QUE TENHAM LIGA��O ENTRE ELAS
SELECT T.ID_Turma AS 'C�digo da turma'
      ,C.ID_Curso AS 'C�digo do curso'
      ,C.Nome_Curso AS 'Nome do curso'
      ,T.Data_Inicio AS 'In�cio do curso'
      ,T.Data_Termino AS 'T�rmino do curso' 
FROM dbo.Turmas AS T WITH (NOLOCK)
     RIGHT JOIN dbo.Cursos AS C WITH (NOLOCK) 
     ON C.ID_Curso = T.ID_Curso






