
-- FUN��O ISNULL E COALESCE

-- ISNULL = CASO O VL_SALARIO SEJA NULL, VAI SER SUBSTITUIDO POR 0
SELECT ISNULL(VL_Salario, 0)
FROM dbo.Cargos
WHERE ID_Cargo = 1

-- COALESCE = SE VL_SALARIO FOR NULL ELE VAI PEGAR O PR�XIMO VALOR E ASSIM SUCESSIVAMENTE...
DECLARE @Valor2 INT

SELECT COALESCE(VL_Salario, @Valor2 , 20)
FROM dbo.Cargos
WHERE ID_Cargo = 1