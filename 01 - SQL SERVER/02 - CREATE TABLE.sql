CREATE TABLE dbo.Pessoas(ID_Pessoa             Integer Identity(1,1)
                        ,NM_Pessoa             Varchar(200) NOT NULL 
                        ,CD_Inscricao_Nacional Varchar(14)  UNIQUE
                        ,NO_Documento          Varchar(30)
                        ,NM_Orgao_Emissor      Varchar(30)
                        ,Sexo				   Char(1)
                        ,DT_Nascimento		   Date
);
GO

CREATE TABLE dbo.Clientes(ID_Cliente Integer Identity(1,1) 
                         ,ID_Pessoa  Integer
);
GO

CREATE TABLE dbo.Cargos(ID_Cargo   Integer Identity(1,1) 
                       ,NM_Cargo   Varchar(30) 
                       ,Descricao  Varchar(50)
                       ,VL_Salario Numeric(6,2)
);
GO

CREATE TABLE dbo.Funcionarios(ID_Funcionario Integer Identity(1,1) 
                             ,DT_Admissao    Datetime         
                             ,DT_Demissao    Datetime
							 ,ID_Pessoa      Integer
                             ,ID_Cargo       Integer
                             
);
GO

CREATE TABLE dbo.Produtos(ID_Produto        Integer Identity(1,1) 
                         ,NM_Produto        Varchar(30) 
                         ,Descricao_Produto Varchar(50)
                         ,VL_Produto        Numeric(6,2)
);
GO

CREATE TABLE dbo.Pagamentos(ID_Pagamento    Integer Identity(1,1) 
                           ,Forma_Pagamento Varchar(30) 
);
GO

CREATE TABLE dbo.Status_Venda(ID_Status_Venda Integer Identity(1,1)
                             ,Status_Venda    Char(1)
                             ,Descricao       Varchar(20)
);
GO

CREATE TABLE dbo.Vendas(ID_Venda        Integer Identity(1,1)
                       ,DT_Venda        Datetime 
                       ,ID_Status_Venda Integer 
                       ,ID_Cliente      Integer 
                       ,ID_Funcionario  Integer 
                       ,ID_Produto      Integer 
                       ,ID_Pagamento    Integer 
);

GO
CREATE TABLE dbo.Vendas_Finalizadas(ID_Venda_Finalizada Integer Identity(1,1)
                                   ,ID_Venda            Integer
);


