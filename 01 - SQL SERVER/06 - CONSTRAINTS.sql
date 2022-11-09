-- TABELA PESSOAS
ALTER TABLE dbo.Pessoas 
    ADD CONSTRAINT PK_Pessoa PRIMARY KEY (ID_Pessoa);
GO

-- TABELA CLIENTES
ALTER TABLE dbo.Clientes 
	ADD CONSTRAINT PK_Cliente PRIMARY KEY (ID_Cliente);
GO

ALTER TABLE dbo.Clientes 
	ADD CONSTRAINT FK_Pessoa_Cliente FOREIGN KEY (ID_Pessoa) REFERENCES dbo.Pessoas (ID_Pessoa);
GO

-- TABELA CARGOS
ALTER TABLE dbo.Cargos 
	ADD CONSTRAINT PK_Cargo PRIMARY KEY (ID_Cargo);
GO

-- TABELA FUNCIONÁRIOS
ALTER TABLE dbo.Funcionarios 
	ADD CONSTRAINT PK_Funcionario PRIMARY KEY (ID_Funcionario);
GO
ALTER TABLE dbo.Funcionarios 
	ADD CONSTRAINT FK_Pessoa_Funcionario FOREIGN KEY (ID_Pessoa) REFERENCES dbo.Pessoas (ID_Pessoa);
GO

ALTER TABLE dbo.Funcionarios 
	ADD CONSTRAINT FK_Cargo_Funcionario FOREIGN KEY (ID_Cargo) REFERENCES dbo.Cargos (ID_Cargo);
GO

-- TABELA PRODUTOS
ALTER TABLE dbo.Produtos 
	ADD CONSTRAINT PK_Produto PRIMARY KEY (ID_Produto);
GO

-- TABELA PAGAMENTOS
ALTER TABLE dbo.Pagamentos 
	ADD CONSTRAINT PK_Pagamento PRIMARY KEY (ID_Pagamento);
GO

-- TABELA STATUS VENDA
ALTER TABLE dbo.Status_Venda 
	ADD CONSTRAINT PK_Status_Venda PRIMARY KEY (ID_Status_Venda);
GO


-- TABELA VENDAS
ALTER TABLE dbo.Vendas
	ADD CONSTRAINT PK_Venda PRIMARY KEY (ID_Venda);
GO

ALTER TABLE dbo.Vendas
	ADD CONSTRAINT FK_Status_Venda_Venda FOREIGN KEY (ID_Status_Venda) REFERENCES dbo.Status_Venda (ID_Status_Venda);
GO

ALTER TABLE dbo.Vendas
	ADD CONSTRAINT FK_Cliente_Venda FOREIGN KEY (ID_Cliente) REFERENCES dbo.Clientes (ID_Cliente);
GO

ALTER TABLE dbo.Vendas
	ADD CONSTRAINT FK_Funcionario_Venda FOREIGN KEY (ID_Funcionario) REFERENCES dbo.Funcionarios (ID_Funcionario);
GO

ALTER TABLE dbo.Vendas
	ADD CONSTRAINT FK_Produto_Venda FOREIGN KEY (ID_Produto) REFERENCES dbo.Produtos (ID_Produto);
GO

ALTER TABLE dbo.Vendas
	ADD CONSTRAINT FK_Pagamento_Venda FOREIGN KEY (ID_Pagamento) REFERENCES dbo.Pagamentos (ID_Pagamento);
GO

-- TABELA VENDAS FINALIZADAS
ALTER TABLE dbo.Vendas_Finalizadas
	ADD CONSTRAINT PK_Venda_Finalizada PRIMARY KEY (ID_Venda_Finalizada);
GO

ALTER TABLE dbo.Vendas_Finalizadas
	ADD CONSTRAINT FK_Venda_Venda_Finalizada FOREIGN KEY (ID_Venda) REFERENCES dbo.Vendas (ID_Venda);
GO