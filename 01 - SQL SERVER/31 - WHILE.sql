
-- ESTRUTURA DE REPETI��O 

-- VAI REPETIR DE ACORDO COM A CONDI��O, NESTE CASO ENQUANTO O @CONTADOR 
-- FOR MENOR OU IGUAL 10 VAI IMPRIMIR O VALOR DO CONTADOR NA TELA.
-- LEMBRANDO QUE SEMPRE QUE ENTRAR NO WHILE PRECISAMOS ACRESCENTAR  + 1 NO @CONTADOR, 
-- CASO CONTRARIO FICARA EM UM LOOP INFINITO
DECLARE @CONTADOR INT = 1;
WHILE @CONTADOR <= 10
BEGIN
  PRINT 'Valor: ' + CONVERT(VARCHAR, @CONTADOR)
  SET @CONTADOR = @CONTADOR + 1;
END

-- LOOP INFINITO
DECLARE @CONTADOR2 INT = 1;
WHILE @CONTADOR2 <= 10
BEGIN
  PRINT 'Valor: ' + CONVERT(VARCHAR, @CONTADOR2)
END