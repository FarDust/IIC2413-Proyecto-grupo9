SELECT Banda.* FROM Artista, Banda, Miembro WHERE Artista.id = Miembro.ida AND Banda.id = Miembro.idb AND Artista.nombre = $1;
SELECT Artista.nombre FROM Banda,Disco, BandaAutorOf, Miembro, Artista WHERE Banda.id = BandaAutorOf.idb AND Disco.id = BandaAutorOf.idd AND Banda.id = Miembro.idb AND Artista.id = Miembro.ida AND Disco.nombre = $1  UNION SELECT Artista.nombre FROM Artista, Disco, ArtistaAutorOf WHERE Artista.id = ArtistaAutorOf.idb AND Disco.id = ArtistaAutorOf.idd AND Disco.nombre = $1;
SELECT Artista.* FROM Artista, Bandan, Miembro WHERE Artista.id = Miembro.ida AND Banda.id = Miembro.idb AND Miembro.fecha_ingreso > now() AND Miembro.fecha_abandono < now() AND Banda.nombre = $1;
SELECT Artista.* FROM Artista, Bandan, Miembro WHERE Artista.id = Miembro.ida AND Banda.id = Miembro.idb AND Miembro.fecha_ingreso > now() AND Miembro.fecha_abandono > now() AND Banda.nombre = $1;
SELECT Email.email FROM Artista, Banda, Miembro, Email, HasEmail WHERE Artista.id = Miembro.ida AND Banda.id = Miembro.idb AND HasEmail.id = Artista.id AND Email.email = HasEmail.email AND Miembro.fecha_ingreso > now() AND Miembro.fecha_abandono < now() AND Banda.nombre = $1;