
-- ESTRUTURA DE CONDIÇÃO 
--SE 10 FOR MAIOR QUE 20
--ENTAO ESCREVA
--SE 10 NAO FOR MAIS QUE 20
--ENTAO ESCREVA

DECLARE @N1 Integer = 10
       ,@N2 Integer = 11

IF @N1  > @N2                     
	SELECT 'N1 É MAIOR';
ELSE                            
	SELECT 'N2 É MAIOR';


