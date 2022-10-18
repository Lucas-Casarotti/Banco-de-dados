
---------------------------------------------------------------------------
-- INNER JOIN COM MAIS DE DUAS TABELAS
SELECT Vendas.DT_Venda         AS 'Data da venda'
      ,Produtos.NM_Produto     AS 'Produto'
      ,ClientesX.NM_Pessoa     AS 'Cliente ' 
      ,FuncionariosX.NM_Pessoa AS 'Funcionário responsável pela venda'
FROM dbo.Vendas WITH (NOLOCK)
     INNER JOIN dbo.Produtos
     ON Produtos.ID_Produto = Vendas.ID_Produto
     INNER JOIN dbo.Funcionarios 
     ON Funcionarios.ID_Funcionario = Vendas.ID_Funcionario
	 INNER JOIN dbo.Clientes
     ON Clientes.ID_Cliente = Vendas.ID_Cliente
	 INNER JOIN dbo.Pessoas ClientesX
	 ON ClientesX.ID_Pessoa = Clientes.ID_Pessoa 
	 INNER JOIN dbo.Pessoas FuncionariosX 
     ON FuncionariosX.ID_Pessoa = Funcionarios.ID_Pessoa

---------------------------------------------------------------------------
-- LEFT JOIN COM MAIS DE DUAS TABELAS
SELECT Vendas.DT_Venda         AS 'Data da venda'
      ,Produtos.NM_Produto     AS 'Produto'
      ,ClientesX.NM_Pessoa     AS 'Cliente ' 
      ,FuncionariosX.NM_Pessoa AS 'Funcionário responsável pela venda'
FROM dbo.Vendas WITH (NOLOCK)
     LEFT JOIN dbo.Produtos
     ON Produtos.ID_Produto = Vendas.ID_Produto
     LEFT JOIN dbo.Funcionarios 
     ON Funcionarios.ID_Funcionario = Vendas.ID_Funcionario
	 LEFT JOIN dbo.Clientes
     ON Clientes.ID_Cliente = Vendas.ID_Cliente
	 LEFT JOIN dbo.Pessoas ClientesX
	 ON ClientesX.ID_Pessoa = Clientes.ID_Pessoa 
	 LEFT JOIN dbo.Pessoas FuncionariosX 
     ON FuncionariosX.ID_Pessoa = Funcionarios.ID_Pessoa

---------------------------------------------------------------------------
-- RIGHT JOIN COM MAIS DE DUAS TABELAS
SELECT Vendas.DT_Venda         AS 'Data da venda'
      ,Produtos.NM_Produto     AS 'Produto'
      ,ClientesX.NM_Pessoa     AS 'Cliente ' 
      ,FuncionariosX.NM_Pessoa AS 'Funcionário responsável pela venda'
FROM dbo.Vendas WITH (NOLOCK)
     RIGHT JOIN dbo.Produtos
     ON Produtos.ID_Produto = Vendas.ID_Produto
     RIGHT JOIN dbo.Funcionarios 
     ON Funcionarios.ID_Funcionario = Vendas.ID_Funcionario
	 RIGHT JOIN dbo.Clientes
     ON Clientes.ID_Cliente = Vendas.ID_Cliente
	 RIGHT JOIN dbo.Pessoas ClientesX
	 ON ClientesX.ID_Pessoa = Clientes.ID_Pessoa 
	 RIGHT JOIN dbo.Pessoas FuncionariosX 
     ON FuncionariosX.ID_Pessoa = Funcionarios.ID_Pessoa

