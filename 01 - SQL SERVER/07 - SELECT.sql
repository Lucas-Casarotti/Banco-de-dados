

-- BUSCANDO TODOS OS CLIENTES
SELECT * FROM dbo.Clientes

-- BUSCANDO COLUNAS ESPECIFICAS DA TABELA CLIENTES
SELECT NM_Cliente, Endereco FROM dbo.Clientes

-- BUSCANDO CLIENTES UTILIZANDO A CL�USULA WHERE 
SELECT NM_Cliente FROM dbo.Clientes WHERE NM_Cliente = 'Sicredi'
SELECT * FROM dbo.Clientes WHERE NM_Cliente = 'Sicredi'
SELECT * FROM dbo.Clientes WHERE ID_Cliente = 1

-- BUSCANDO CLIENTES E ORDENANDO O CAMPO DESEJADO PELA CLA�SULA ORDER BY
SELECT NM_Cliente FROM dbo.Clientes ORDER BY NM_Cliente