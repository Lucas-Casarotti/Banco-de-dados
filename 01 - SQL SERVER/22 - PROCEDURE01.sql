-- PROCEDURE DE SELECT, UTILIZANDO APENAS O ID_Venda COMO PARAMETRO DE ENTRADA
CREATE PROCEDURE dbo.Vendas_Status(@ID_Venda Integer)   

AS
 BEGIN

  SELECT Vendas.DT_Venda            AS 'DATA DA VENDA'
        ,Status_Venda.Status_Venda  AS 'STATUS DA VENDA'
        ,Status_Venda.Descricao     AS 'DESCRICAO DA VENDA'
        ,ClienteX.NM_Pessoa         AS 'CLIENTE'
        ,FuncionarioX.NM_Pessoa     AS 'FUNCIONARIO'
        ,Produtos.NM_Produto        AS 'PRODUTO'
        ,Pagamentos.Forma_Pagamento AS 'FORMA PAGAMENTO'   
  FROM dbo.Vendas
       INNER JOIN dbo.Status_Venda
       ON Status_Venda.ID_Status_Venda = Vendas.ID_Status_Venda
       INNER JOIN dbo.Clientes
       ON Clientes.ID_Cliente = Vendas.ID_Cliente
       INNER JOIN dbo.Funcionarios
       ON Funcionarios.ID_Funcionario = Vendas.ID_Funcionario
	   INNER JOIN dbo.Pessoas ClienteX
	   ON ClienteX.ID_Pessoa = ClienteS.ID_Pessoa
	   INNER JOIN dbo.Pessoas FuncionarioX
	   ON FuncionarioX.ID_Pessoa = Funcionarios.ID_Pessoa
       INNER JOIN dbo.Produtos
       ON Produtos.ID_Produto = Vendas.ID_Produto
       INNER JOIN dbo.Pagamentos
       ON Pagamentos.ID_Pagamento = Vendas.ID_Pagamento
  WHERE Vendas.ID_Venda = @ID_Venda;
 
END
       

EXEC dbo.Vendas_Status 1