

INSERT INTO dbo.Alunos (Nome, Data_Nascimento, Sexo, Data_Cadastro, Login_Cadastro)
VALUES
('Lucas Matheus', '31/05/1999', 'M', '31/03/2022 15:00:00', 'Login0101'),
('João Pedro Fernandes', '20/02/2000', 'M', '31/03/2022 15:00:00', 'Login0101'),
('Brenno Segolim', '07/03/1999', 'M', '31/03/2022 15:00:00', 'Login0101'),
('Rodrigo Junior', '28/02/1997', 'M', '31/03/2022 15:00:00', 'Login0101');


INSERT INTO dbo.Cursos (Nome_Curso, Data_Cadastro, Login_Cadastro)
VALUES
('VBA I', '31/03/2022 15:00:00', 'Login0101'),
('VBA II', '31/03/2022 15:00:00', 'Login0101'),
('VBA III', '31/03/2022 15:00:00', 'Login0101'),
('Execel Básico', '31/03/2022 15:00:00', 'Login0101'),
('Photoshop CS6', '31/03/2022 15:00:00', 'Login0101'),
('Lógica de programação', '31/03/2022 15:00:00', 'Login0101'),
('Desenvolvimento Web completo', '31/03/2022 15:00:00', 'Login0101');

INSERT INTO dbo.Situacao (Situacao, Data_Cadastro, Login_Cadastro)
VALUES
('Presença confirmada', '31/03/2022 15:00:00', 'Login0101'),
('Ausente sem justificativa', '31/03/2022 15:00:00', 'Login0101'),
('Ausente com justificativa', '31/03/2022 15:00:00', 'Login0101');


INSERT INTO dbo.Turmas (ID_Curso, Data_Inicio, Data_Termino, Data_Cadastro, Login_Cadastro)
VALUES 
(1, '01/04/2022', '01/04/2023', GETDATE(), 'casarotti'),
(2, '02/06/2022', '02/06/2023', GETDATE(), 'casarotti'),
(3, '01/07/2022', '01/10/2023', GETDATE(), 'casarotti'),
(5, '01/07/2022', '01/10/2023', GETDATE(), 'casarotti'),
(4, '01/07/2022', '01/10/2023', GETDATE(), 'casarotti'),
(6, '01/07/2022', '01/10/2023', GETDATE(), 'casarotti');

INSERT INTO dbo.AlunosXTurmas (ID_Turma, ID_Aluno, Valor, Valor_Desconto, Data_Cadastro, Login_Cadastro)
VALUES
(1,1, 1000, 0.1, GETDATE(), 'casarotti'),
(2,8, 1100, 0.1, GETDATE(), 'casarotti'),
(3,9, 1200, 0.1, GETDATE(), 'casarotti'),
(6,10, 1200, 0.1, GETDATE(), 'casarotti');