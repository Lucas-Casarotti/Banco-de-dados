

-- EXCLUINDO APENAS UM REGISTRO UTILIZANDO A CLAUSULA WHERE
DELETE FROM dbo.Alunos WHERE ID_Aluno = 2

-- PODEMOS UTILIZAR A CLAUSE WHERE PARA TODAS AS COLUNAS DO BANCO
-- POREM SERA EXCLUIDO TODOS OS DADOS QUE TIVEREM A MESMA CONDI??O DA CLAUSULA WHERE
-- EXCLUINDO TODOS OS REGISTRO QUE TIVEREM O NOME IGUAL
DELETE dbo.Alunos WHERE Nome = 'Rodrigo Junior';

-- EXCLUINDO TODOS OS REGISTRO
DELETE FROM dbo.Alunos
