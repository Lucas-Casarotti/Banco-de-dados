
-- LEN, CHARINDEX, CONCAT, UPPER, LOWER, FORMAT, TRIM, LTRIM E RTRIM

--LEN = UTILIZADA PARA RETORNAR O TAMANHO DO CAMPO
SELECT LEN('Lucas');

--CHARINDEX = UTILIZADA PARA BUSCAR UM CARACTERES EM UMA SEQUENCIA

--BUSCANDO A LETRA 'A' DENTRO DA SEQUENCIA DE CARACTERES DA VARI�VEL
DECLARE @NM_Pessoa Varchar(80);
SET @NM_Pessoa = 'Lucas'
SELECT CHARINDEX('a',@NM_Pessoa); 
-- BUSCANDO A LETRA 'A' DENTRO DA SEQUENCIA DE CARACTERES DA VARI�VEL A PARTIR DA POSI��O 6
SELECT CHARINDEX('a', @NM_Pessoa, 6); 

--CONCAT = UTILIZADA PARA CONCATERNAR VALORES
SELECT CONCAT('Lucas', ' ', 'Matheus'); 
SELECT CONCAT('Lucas', 'Matheus');



 --UPPER = UTILIZADA PARA CONVERTER OS CARACTERES PARA MAISCULO
SELECT UPPER('Lucas Casarotti') as "NOME EM MAISCULO";

SELECT UPPER(NM_Pessoa) "NOME EM MAISCULO"
FROM Pessoas


--LOWER = UTILIZADA PARA CONVERTER OS CARACTERESPARA MINUSCULO
SELECT LOWER('Lucas Casarotti') as "NOME EM MINUSCULO";

SELECT LOWER(NM_Pessoa) "NOME EM MINUSCULO"
FROM Pessoas


-- FORMAT = UTILIZADA PARA FORMATAR O VALOR ESPECIFICADO NO FORMATO FORNECIDO
DECLARE @DT Datetime = GETDATE();	
SELECT FORMAT (@DT, 'd', 'en-US') as Americano,
	   FORMAT (@DT, 'D', 'en-US') as Americano,
	   FORMAT (@DT, 'd', 'pt-br') as Portugu�s,
	   FORMAT (@DT, 'D', 'pt-br') as Portugu�s;


-- TRIM = UTILIZADA PARA RETIRAR ESPA�OS A ESQUERDA E DIREITA
DECLARE @TEXTOTRIM Varchar(50);
SET @TEXTOTRIM  = '    Este � um texto para teste do LTRIM    ';

SELECT TRIM(@TEXTOTRIM);

--LTRIM = UTILIZADA PARA RETIRAR ESPA�OS A ESQUERDA
DECLARE @TEXTOLTRIM Varchar(50);
SET @TEXTOLTRIM = '    Este � um texto para teste do LTRIM    ';

SELECT LTRIM(@TEXTOLTRIM);;


--LTRIM = UTILIZADA PARA RETIRAR ESPA�OS A DIREITA
DECLARE @TEXTORTRIM Varchar(50);
SET @TEXTORTRIM = '    Este � um texto para teste do RTRIM    ';

SELECT RTRIM(@TEXTORTRIM);
