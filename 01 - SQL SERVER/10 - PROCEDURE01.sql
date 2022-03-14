-- PROCEDURE DE SELECT, UTILIZANDO APENAS O ID_Venda COMO PARAMETRO DE ENTRADA
CREATE OR ALTER PROCEDURE dbo.Vendas_Status(@ID_Venda Integer)   

AS
 BEGIN

  SELECT V.DT_Venda
        ,ST.Status_Venda
        ,ST.Descricao
        ,C.NM_Cliente     
        ,F.NM_Funcionario
        ,P.NM_Produto    
        ,PG.Forma_Pagamento   
  FROM dbo.Vendas V WITH (NOLOCK)
       INNER JOIN dbo.Status_Venda ST
       ON ST.ID_Status_Venda = V.ID_Status_Venda
       INNER JOIN dbo.Clientes C
       ON C.ID_Cliente = V.ID_Cliente
       INNER JOIN dbo.Funcionarios F
       ON F.ID_Funcionario = V.ID_Funcionario
       INNER JOIN dbo.Produtos P
       ON P.ID_Produto = V.ID_Produto
       INNER JOIN dbo.Pagamentos PG
       ON PG.ID_Pagamento = V.ID_Pagamento
  WHERE V.ID_Venda = @ID_Venda;
 
END
       

EXEC dbo.Vendas_Status 1