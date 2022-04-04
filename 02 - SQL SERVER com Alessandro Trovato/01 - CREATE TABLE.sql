CREATE TABLE Alunos(
	 ID_Aluno        Int Primary key identity(1,1) NOT NULL
	,Nome            Varchar(200) NOT NULL
	,Data_Nascimento Date NOT NULL 
	,Sexo            Char(1) NOT NULL --M para masculino ou F para feminino
	,Data_Cadastro   Datetime NOT NULL 
	,Login_Cadastro  Varchar(15) NOT NULL
);

CREATE TABLE Cursos(
	 ID_Curso       Int Primary key identity(1,1) NOT NULL 
	,Nome_Curso     Varchar (200) NOT NULL
	,Data_Cadastro  Datetime NOT NULL
	,Login_Cadastro Varchar(15) NOT NULL
);

CREATE TABLE Turmas(
	 ID_Turma       Int Primary key identity(1,1) NOT NULL 
	--,ID_Aluno       Int NOT NULL
	,ID_Curso       Int NOT NULL
	--,Valor_Turma    Numeric(15,2)
	--,Desconto       Numeric(3,2)NOT NULL
	,Data_Inicio    Date NOT NULL
	,Data_Termino   Date
	,Data_Cadastro  Datetime NOT NULL
	,Login_Cadastro Varchar(15) NOT NULL 
);

CREATE TABLE Situacao(
	 ID_Situacao Int Primary key identity(1,1) NOT NULL
	,Situacao Varchar (25) NOT NULL
	,Data_Cadastro Datetime
	,Login_Cadastro Varchar(15)
);

CREATE TABLE Registro_Presenca(
	 ID_Turma Int NOT NULL 
	,ID_Aluno Int NOT NULL
	,ID_Situacao Int NOT NULL
	,Data_Presenca Date NOT NULL
	,Data_Cadastro Date NOT NULL
	,Login_Cadastro Varchar(15) NOT NULL
);

CREATE TABLE AlunosXTurmas(
  ID_Turma       Int NOT NULL
 ,ID_Aluno       Int NOT NULL
 ,Valor          Numeric(13,2) NOT NULL
 ,Valor_Desconto Numeric(3,2)
 ,Data_Cadastro  Datetime NOT NULL
 ,Login_Cadastro Varchar(15) NOT NULL
);



-- ADICIONANDO AS CHAVES ESTRANGEIRAS NA TABELA TURMAS
--ALTER TABLE Turmas
--      ADD CONSTRAINT fk_Alunos FOREIGN KEY (ID_Aluno) REFERENCES Alunos (ID_Aluno);

ALTER TABLE Turmas
      ADD CONSTRAINT fk_Cursos FOREIGN KEY (ID_Curso) REFERENCES Cursos (ID_Curso);

-- ADICIONANDO AS CHAVES ESTRAGEIRAS NA TABELA REGISTRO
ALTER TABLE Registro_Presenca
      ADD CONSTRAINT fk_TurmasRP FOREIGN KEY (ID_Turma) REFERENCES Turmas (ID_Turma)

ALTER TABLE Registro_Presenca
      ADD CONSTRAINT fk_AlunosRP FOREIGN KEY (ID_Aluno) REFERENCES Alunos (ID_Aluno)

ALTER TABLE Registro_Presenca
      ADD CONSTRAINT fk_SituacaoRP FOREIGN KEY (ID_Situacao) REFERENCES Situacao (ID_Situacao)

-- ADICIONANDO AS CHAVES ESTRAGEIRAS NA TABELA ALUNOS X TURMAS
ALTER TABLE AlunosXTurmas 
      ADD CONSTRAINT fk_Turma FOREIGN KEY (ID_Turma) REFERENCES Turmas (ID_Turma)

ALTER TABLE AlunosXTurmas
      ADD CONSTRAINT fk_Aluno FOREIGN KEY (ID_Aluno) REFERENCES Alunos (ID_Aluno)