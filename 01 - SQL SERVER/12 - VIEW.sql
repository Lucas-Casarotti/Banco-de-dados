-- CRIANDO UMA VIEW PARA BUSCAR TODAS AS VENDAS FINALIZADAS
CREATE VIEW vw_Vendas_Em_andamento
AS
 SELECT
     V.DT_Venda
    ,C.NM_Cliente
    ,F.NM_Funcionario
    ,P.NM_Produto
    ,ST.Descricao
  FROM dbo.Vendas V WITH (NOLOCK)
  INNER JOIN dbo.Clientes C
  ON C.ID_Cliente = V.ID_Cliente
  INNER JOIN dbo.Funcionarios F
  ON F.ID_Funcionario = V.ID_Funcionario
  INNER JOIN dbo.Produtos P
  ON P.ID_Produto = V.ID_Produto
  INNER JOIN dbo.Status_Venda ST
  ON ST.ID_Status_Venda = V.ID_Status_Venda
  WHERE V.ID_Status_Venda = 2


-- EXECUTANDO A VIEW
SELECT * FROM vw_Vendas_Em_andamento



     