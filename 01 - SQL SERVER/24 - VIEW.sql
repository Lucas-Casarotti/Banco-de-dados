-- CRIANDO UMA VIEW PARA BUSCAR TODAS AS VENDAS
CREATE VIEW vw_Vendas_Em_andamento
AS
 SELECT Vendas.DT_Venda        AS 'DATA DA VENDA'
       ,ClienteX.NM_Pessoa	   AS 'CLIENTE'
       ,FuncionarioX.NM_Pessoa AS 'FUNCIONARIO'
       ,Produtos.NM_Produto	   AS 'PRODUTO'
       ,Status_Venda.Descricao AS 'DESCRIÇÃO DA VENDA'
 FROM dbo.Vendas 			   
      INNER JOIN dbo.Clientes    
      ON Clientes.ID_Cliente = Vendas.ID_Cliente
      INNER JOIN dbo.Funcionarios
      ON Funcionarios.ID_Funcionario = Vendas.ID_Funcionario
	  INNER JOIN dbo.Pessoas ClienteX
	  ON ClienteX.ID_Pessoa = Clientes.ID_Pessoa
	  INNER JOIN dbo.Pessoas FuncionarioX
	  ON FuncionarioX.ID_Pessoa = Funcionarios.ID_Pessoa
      INNER JOIN dbo.Produtos
      ON Produtos.ID_Produto = Vendas.ID_Produto
      INNER JOIN dbo.Status_Venda
      ON Status_Venda.ID_Status_Venda = Vendas.ID_Status_Venda



-- EXECUTANDO A VIEW
SELECT * FROM vw_Vendas_Em_andamento
