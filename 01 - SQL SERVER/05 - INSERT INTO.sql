INSERT INTO dbo.Pessoas(NM_Pessoa, CD_Inscricao_Nacional, NO_Documento, NM_Orgao_Emissor, Sexo, DT_Nascimento)
VALUES ('Lucas Casarotti', '465.341.224-22', '57.469.654-X', 'SSP', 'M', '31/05/1999') 
      ,('Teste02', '465.341.214-21', '57.469.624-X', 'SSP', 'M', '31/03/2022') 

INSERT INTO dbo.Clientes (ID_Pessoa)
VALUES (2) 

INSERT INTO dbo.Cargos(NM_Cargo,Descricao,VL_Salario) 
VALUES ('Vendedor', 'Realizar venda de produtos', '1800')
	  ,('Desenvolvedor Front End', 'Atuar no desenvolvimento fornt end.','2200')
	  ,('Desenvolvedor Beck End', 'Atuar no desenvolvimento beck end.','2200')



INSERT INTO dbo.Funcionarios(DT_Admissao, ID_Pessoa, ID_Cargo) 
VALUES     ('13/10/22 15:00:00', 1, 3)


INSERT INTO dbo.Produtos(NM_Produto, Descricao_Produto, VL_Produto )
VALUES ('Sistema de consórcio Web', 'Realização de consórcios', 7000.00)
      ,('Sistema de gestão financeira', 'Controle e organização do Dep. Financeiro', 6800.00)
      ,('Sistema de ERP', 'Gerenciador de vendas', 5000.00)


INSERT INTO dbo.Pagamentos (Forma_Pagamento)
VALUES  ('Cheque ávista')
       ,('Pix')
       ,('Dinheiro')
       ,('Parcelado no estabelecimento')
       ,('Cartão de crédito')
       ,('Cartão de débito')

INSERT INTO dbo.Status_Venda (Status_Venda, Descricao)
VALUES ('A', 'Aberta')
      ,('E', 'Em andamento')
      ,('P', 'Pendente')
      ,('F', 'Finalizada')

INSERT INTO dbo.Vendas (DT_Venda, ID_Status_Venda, ID_Cliente, ID_Funcionario, ID_Produto, ID_Pagamento)
VALUES ('13/10/2022', 2, 1, 1, 1, 3)




     