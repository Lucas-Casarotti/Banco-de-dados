-- FUNCTION PARA RETORNAR OS FUNCION�RIOS CONTRATADOS AP�S UMA DATA ESPEC�FICA 
CREATE FUNCTION FuncionariosContratados(@DT_Admissao date)
RETURNS TABLE 
AS
RETURN (SELECT *
        FROM dbo.Funcionarios
        WHERE DT_Admissao >= @DT_Admissao)


-- EXECUTANDO A FUNCTION
SELECT * FROM FuncionariosContratados('2022-01-20')
