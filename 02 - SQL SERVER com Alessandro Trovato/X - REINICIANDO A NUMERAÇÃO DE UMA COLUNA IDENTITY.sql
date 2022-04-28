

-- REINICIANDO A NUMERAÇÃO DE UMA COLUNA IDENTITY
-- Se você tiver nessa tabela 3 registros, serão gerados ID sequenciais para o campo “UsuarioID” de 1 até 3:
-- Se você apagar todos os registros dessa tabela com o Comando DELETE, ao inserir um novo registro, 
-- ao invés do novo registro ter a chave UsuarioID=1 ele terá a chave UsuarioID=4, isso acontece porque toda vez que um registro é inserido, 
-- o SQL recupera o próximo ID de uma seqüência que não é reiniciada depois que os registros são removidos da tabela.
-- Para zerar o identity dessa tabela, utilize o seguinte comando:
DBCC CHECKIDENT('Tabela', RESEED, 0)

-- Isso fará com que o próximo registro inserido tenha a chave UsuarioID=1.
-- Você pode ainda, alterar o valor do Identity para um outro valor que não seja. Por exemplo:

DBCC CHECKIDENT('Tabela', RESEED, 100)

-- Esse comando fará com que o próximo registro tenha a chave UsuarioID=101.