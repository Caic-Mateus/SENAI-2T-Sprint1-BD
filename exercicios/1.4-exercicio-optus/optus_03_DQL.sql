--DQL

USE Optus;

-- listar todos os usu�rios administradores, sem exibir suas senhas
SELECT Usuarios.Nome, Usuarios.Email, Usuarios.Permissao FROM Usuarios
WHERE Usuarios.Permissao = 'Administrador';

-- listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento
SELECT Albuns.Titulo, Artistas.Nome AS Nome_Artista, Albuns.DataLancamento, Albuns.Localizacao, Albuns.QtdMinutos, Albuns.Ativo FROM Albuns
INNER JOIN Artistas
ON Albuns.idArtista = Artistas.idArtista
WHERE Albuns.DataLancamento > '2010';
-- listar os dados de um usu�rio atrav�s do e-mail e senha
SELECT * FROM Usuarios
WHERE Usuarios.Email = 'caic@email.com'
AND Usuarios.Senha = '12345'
-- listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum 
SELECT Artistas.Nome, Albuns.Titulo, Estilos.NomeEstilo AS Estilo FROM Albuns
INNER JOIN Artistas
ON Albuns.idArtista = Artistas.idArtista
INNER JOIN AlbunsEstilos
ON AlbunsEstilos.idAlbum = Albuns.idAlbum
INNER JOIN Estilos
ON Estilos.idEstilo = AlbunsEstilos.idEstilo
WHERE Albuns.Ativo =1;