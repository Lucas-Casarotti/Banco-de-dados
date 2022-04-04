
---------------------------------------------------------------------------
-- INNER JOIN COM MAIS DE DUAS TABELAS
SELECT V.DT_Venda       AS 'Data da venda'
      ,P.NM_Produto     AS 'Produto'
      ,F.NM_Funcionario AS 'Funcionário responsável pela venda'
      ,C.NM_Cliente     AS 'Cliente '
FROM dbo.Vendas V WITH (NOLOCK)
     INNER JOIN dbo.Funcionarios F
     ON F.ID_Funcionario = V.ID_Funcionario
     INNER JOIN dbo.Clientes C
     ON C.ID_Cliente = V.ID_Cliente
     INNER JOIN dbo.Produtos P
     ON P.ID_Produto = V.ID_Produto

---------------------------------------------------------------------------
-- LEFT JOIN COM MAIS DE DUAS TABELAS
SELECT V.DT_Venda       AS 'Data da venda'
      ,P.NM_Produto     AS 'Produto'
      ,F.NM_Funcionario AS 'Funcionário responsável pela venda'
      ,C.NM_Cliente     AS 'Cliente '
FROM dbo.Vendas V WITH (NOLOCK)
     LEFT JOIN dbo.Funcionarios F
     ON F.ID_Funcionario = V.ID_Funcionario
     LEFT JOIN dbo.Clientes C
     ON C.ID_Cliente = V.ID_Cliente
     LEFT JOIN dbo.Produtos P
     ON P.ID_Produto = V.ID_Produto 

---------------------------------------------------------------------------
-- RIGHT JOIN COM MAIS DE DUAS TABELAS
SELECT V.DT_Venda       AS 'Data da venda'
      ,P.NM_Produto     AS 'Produto'
      ,F.NM_Funcionario AS 'Funcionário responsável pela venda'
      ,C.NM_Cliente     AS 'Cliente '
FROM dbo.Vendas V WITH (NOLOCK)
     RIGHT JOIN dbo.Funcionarios F
     ON F.ID_Funcionario = V.ID_Funcionario
     RIGHT JOIN dbo.Clientes C
     ON C.ID_Cliente = V.ID_Cliente
     RIGHT JOIN dbo.Produtos P
     ON P.ID_Produto = V.ID_Produto  

