
-- TRATAMENTO DE ERROS COM TRY CATCH
-- SE EXECUTARMOS O COMANDO E OCORRER ERRO DENTRO DO BLOCO TRY, ESSE ERRO SER� TRATADO PELO BLOCO DO CATCH
-- NESSE EXEMPLO ABAIXO ESTAMOS EXECUTANDO UM PROCEDURE, CASO ESSA PROCEDURE N�O EXISTA RETORNAR� O SELECT DO CATCH
-- QUE MOSTRA O N�MERO DO ERRO, MENSAGEM DO ERRO E A LINHA DO ERRO.
BEGIN TRY
  EXEC proc_exemplo;
END TRY
BEGIN CATCH
  SELECT ERROR_NUMBER() AS Numero_erro
        ,ERROR_MESSAGE() AS Mensagem_erro
		,ERROR_LINE() AS Linha_erro
END CATCH