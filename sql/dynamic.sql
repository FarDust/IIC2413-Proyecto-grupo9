SELECT * FROM Artista, Banda, Miembro WHERE Artista.id = aid AND Banda.id = Miembro.bid AND Artista.nombre = $1