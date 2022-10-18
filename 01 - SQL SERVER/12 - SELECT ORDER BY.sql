
-- BUSCANDO AS COLUNAS DA TABELA PESSOAS E ORDENANDO PELO NOME
-- ASC  = CRESCENTE
-- DESC = DECRESCENTE 
SELECT ID_Pessoa
      ,NM_Pessoa
	  ,CD_Inscricao_Nacional
FROM dbo.Pessoas
ORDER BY NM_Pessoa ASC;

SELECT ID_Pessoa
      ,NM_Pessoa
	  ,CD_Inscricao_Nacional
FROM dbo.Pessoas
ORDER BY NM_Pessoa DESC;