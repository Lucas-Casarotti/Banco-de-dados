

INSERT INTO dbo.Clientes (NM_Cliente, Endereco, Telefone, CPF_CNPJ_Cliente)
VALUES     ('Sicredi', 'Av. Brasil 133', '(18)998762463', '05.902.990/0002-58') 
          ,('Toyota', 'Av. Brasil 133', '(18)998762463', '05.902.990/0002-58') 
          ,('Mercadinho Santa Luiza', 'Av. Caiua 176', '(18)998762463', '05.902.990/0002-58') 


INSERT INTO dbo.Cargos(Cargo,Descricao_Cargo,VL_Salario) 
VALUES			( 'Vendedor', 'Realizar venda de produtos', '1800')
				   ,( 'Desenvolvedor Front End', 'Atuar no desenvolvimento fornt end.','2200')
				   ,( 'Desenvolvedor Beck End', 'Atuar no desenvolvimento beck end.','2200')
           ,( 'Tester', 'Realizar testes e validação de softwares.','2000')
           ,( 'Analista de Atendimento', 'Realizar atendimento e solução de problemas','2200')
           ,( 'Cordenador de Desenvolvimento', 'Liderar grupos de desenvolvimento. ','6000')
				   ,( 'Gerente de Projetos', 'Acompanhamento e supervisão de projetos','5000')


INSERT INTO dbo.Funcionarios(NM_Funcionario, Endereco, Telefone, CPF_CNPJ, DT_Admissao, ID_Cargo) 
VALUES     ('Lucas Casabroxa', 'fim do mundo','(18) 99765-9658', '465.133.569-69', '20-10-2021', 3)
			    ,('Mateus Batata', 'Zacarias-SP', '(18) 98122-9206', '461.103.638-39', '20-01-2022', 5)
			    ,('Aderbal Pereira', 'São Paulo-SP', '(11) 99655-9030', '445.205.695-48', '15-02-2020', 1)
			    ,('Robson da Silva', 'São Paulo-SP', '(11) 99785-4789', '461.103.638-39', '20-01-2022', 2)
          ,('Jose Antonio', 'São Paulo-SP', '(11) 99785-4789', '461.103.638-39', '20-01-2022', 2)

INSERT INTO dbo.Produtos (NM_Produto, Descricao_Produto, VL_Produto )
VALUES      ('Sistema de consórcio Web', 'Realização de consórcios', 7000.00)
           ,('Sistema de gestão financeira', 'Controle e organização do Dep. Financeiro', 6800.00)
           ,('Sistema de ERP', 'Gerenciador de vendas', 5000.00)


INSERT INTO dbo.Pagamentos (Forma_Pagamento)
VALUES      ('Cheque ávista')
           ,('Pix')
           ,('Dinheiro')
           ,('Parcelado no estabelecimento')
           ,('Cartão de crédito')
           ,('Cartão de débito')

INSERT INTO dbo.Status_Venda (Status_Venda, Descricao)
VALUES      ('A', 'Aberta')
           ,('E', 'Em andamento')
           ,('P', 'Pendente')
           ,('F', 'Finalizada')

INSERT INTO dbo.Vendas (DT_Venda, ID_Status_Venda, ID_Cliente, ID_Funcionario, ID_Produto, ID_Pagamento)
VALUES     ('20-01-2020', 2, 1, 3, 1, 3)




     