
-- CONTROLE DE FLUXO BEGIN END
DECLARE @N1 Integer = 10
       ,@N2 Integer = 11

IF @N1  > @N2 
   BEGIN
	 SELECT 'N1 É MAIOR';
   END
ELSE  
   BEGIN
	 SELECT 'N2 É MAIOR';
   END
	

