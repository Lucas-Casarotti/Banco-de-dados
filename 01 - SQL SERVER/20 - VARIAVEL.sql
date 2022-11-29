
-- VARIÁVEL
DECLARE @NM_Pessoa Varchar(80);
SET @NM_Pessoa = 'Lucas'
SELECT @NM_Pessoa

SELECT NM_Pessoa
      ,DT_Nascimento
FROM dbo.Pessoas
WHERE Pessoas.NM_Pessoa = @NM_Pessoa