
-- SELECT EXISTS
-- APENAS RETORNARÁ SE O RESULTADO DA SUBQUERY FOR TRUE
-- OU SEJA, SE EXISTIR ALGUM FUNCIONÁRIO QUE TENHA ID_PESSOA

SELECT * FROM Pessoas
WHERE EXISTS (SELECT * FROM Funcionarios 
              WHERE Funcionarios.ID_Pessoa = Pessoas.ID_Pessoa)
