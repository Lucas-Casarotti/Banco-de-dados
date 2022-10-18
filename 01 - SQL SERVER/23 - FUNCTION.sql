-- FUNCTION PARA RETORNAR OS FUNCIONÁRIOS CONTRATADOS APÓS UMA DATA ESPECÍFICA 
CREATE FUNCTION FuncionariosContratados(@DT_Admissao DATE)
RETURNS @Tpm TABLE(ID_Funcionario Integer
                  ,DT_Amissao     Datetime
                  ,DT_Demissao    Datetime  
                  ,NM_Funcionario Varchar(80) 
				  ,NM_Cargo       Varchar(80)
				  ,VL_Salario     Numeric(18,2))
AS
BEGIN 
  INSERT INTO @Tpm (ID_Funcionario                                                   
                   ,DT_Amissao
                   ,DT_Demissao
                   ,NM_Funcionario
                   ,NM_Cargo
                   ,VL_Salario)
  SELECT DISTINCT 
         Funcionarios.ID_Funcionario
        ,Funcionarios.DT_Admissao
        ,Funcionarios.DT_Demissao
        ,Pessoas.NM_Pessoa
        ,Cargos.NM_Cargo
        ,Cargos.VL_Salario
  FROM dbo.Funcionarios
       INNER JOIN dbo.Pessoas
       ON Pessoas.ID_Pessoa = Funcionarios.ID_Pessoa
       INNER JOIN dbo.Cargos
       ON Cargos.ID_Cargo = Funcionarios.ID_Cargo
  WHERE Funcionarios.DT_Admissao >= @DT_Admissao

  RETURN;                    
END  




-- EXECUTANDO A FUNCTION
SELECT * FROM dbo.FuncionariosContratados ('2022-01-20')