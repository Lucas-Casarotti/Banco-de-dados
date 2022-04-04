

CREATE TABLE dbo.Clientes (
   ID_Cliente       Integer Primary key identity(1,1) NOT NULL
  ,NM_Cliente       Varchar(30) NOT NULL
  ,Endereco         Varchar(20) NOT NULL
  ,Telefone         Varchar(16) NOT NULL
  ,CPF_CNPJ_Cliente Varchar(18) NOT NULL
);
GO

CREATE TABLE dbo.Cargos (
   ID_Cargo        Integer Primary key identity(1,1) NOT NULL
  ,Cargo           Varchar(30) NOT NULL
  ,Descricao_Cargo Varchar(50)
  ,VL_Salario      Numeric(6,2)
);

GO
CREATE TABLE dbo.Funcionarios (
   ID_Funcionario   Integer Primary key identity(1,1) NOT NULL
  ,NM_Funcionario   Varchar(30) NOT NULL
  ,Endereco         Varchar(20) NOT NULL
  ,Telefone         Varchar(16) NOT NULL
  ,CPF_CNPJ         Varchar(18) NOT NULL
  ,DT_Admissao      Date        NOT NULL
  ,DT_Demissao      Date
  ,ID_Cargo         Integer Foreign key references dbo.Cargos(ID_Cargo) NOT NULL
);

GO
CREATE TABLE dbo.Produtos (
   ID_Produto        Integer Primary key identity(1,1) NOT NULL
  ,NM_Produto        Varchar(30) NOT NULL
  ,Descricao_Produto Varchar(50)
  ,VL_Produto        Numeric(6,2)
);

GO
CREATE TABLE dbo.Pagamentos (
   ID_Pagamento      Integer Primary key identity(1,1) NOT NULL
  ,Forma_Pagamento   Varchar(30) NOT NULL
);
GO
CREATE TABLE dbo.Status_Venda(
   ID_Status_Venda Integer Primary key identity(1,1) NOT NULL
  ,Status_Venda    Char(1)
  ,Descricao       Varchar(20)
);
GO
CREATE TABLE dbo.Vendas (
   ID_Venda           Integer Primary key identity(1,1) NOT NULL
  ,DT_Venda           Date 
  ,ID_Status_Venda    Integer Foreign key references dbo.Status_Venda  (ID_Status_Venda)  NOT NULL
  ,ID_Cliente         Integer Foreign key references dbo.Clientes      (ID_Cliente)       NOT NULL
  ,ID_Funcionario     Integer Foreign key references dbo.Funcionarios  (ID_Funcionario)   NOT NULL
  ,ID_Produto         Integer Foreign key references dbo.Produtos      (ID_Produto)       NOT NULL
  ,ID_Pagamento       Integer Foreign key references dbo.Pagamentos    (ID_Pagamento)     NOT NULL
);

CREATE TABLE dbo.Vendas_Finalizadas (
   ID_Venda_Finalizada      Integer Primary key identity(1,1) NOT NULL
  ,ID_Venda                 Integer Foreign key references dbo.Vendas (ID_Venda)
);


