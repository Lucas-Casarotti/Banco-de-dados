
-- ALTERANDO A TABELA PESSOA ADICIONANDO A COLUNA "IDADE" NA TABELA PESSOAS
ALTER TABLE dbo.Pessoas ADD Idade Integer
-- ALTERANDO O TIPO DA COLUNA "SEXO" NA TABELA PESSOAS
ALTER TABLE dbo.Pessoas ALTER COLUMN Sexo Char(10)