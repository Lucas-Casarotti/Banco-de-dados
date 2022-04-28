

-- REINICIANDO A NUMERA��O DE UMA COLUNA IDENTITY
-- Se voc� tiver nessa tabela 3 registros, ser�o gerados ID sequenciais para o campo �UsuarioID� de 1 at� 3:
-- Se voc� apagar todos os registros dessa tabela com o Comando DELETE, ao inserir um novo registro, 
-- ao inv�s do novo registro ter a chave UsuarioID=1 ele ter� a chave UsuarioID=4, isso acontece porque toda vez que um registro � inserido, 
-- o SQL recupera o pr�ximo ID de uma seq��ncia que n�o � reiniciada depois que os registros s�o removidos da tabela.
-- Para zerar o identity dessa tabela, utilize o seguinte comando:
DBCC CHECKIDENT('Tabela', RESEED, 0)

-- Isso far� com que o pr�ximo registro inserido tenha a chave UsuarioID=1.
-- Voc� pode ainda, alterar o valor do Identity para um outro valor que n�o seja. Por exemplo:

DBCC CHECKIDENT('Tabela', RESEED, 100)

-- Esse comando far� com que o pr�ximo registro tenha a chave UsuarioID=101.