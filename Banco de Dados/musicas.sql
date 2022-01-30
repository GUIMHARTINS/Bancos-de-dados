create table album (
	id int not null auto_increment,
	nome varchar(45) not null,
	ano year,
	primary key(id)
);

create table genero(
	id int not null auto_increment,
	nome varchar(45),
	descricao varchar(300),
	primary key(id)
);

create table musica(
	id int not null auto_increment,
	titulo varchar(45) not null,
	genero_id int,
	primary key(id),
	foreign key(genero_id) references genero(id)
);

create table musica_album(
	album_id int,
	musica_id int,
	foreign key(album_id) references album(id),
	foreign key(musica_id) references musica(id)
);

create table playlist(
	id int not null auto_increment,
	nome varchar(45) not null,
	descricao varchar(300),
	primary key(id)
);

create table musica_playlist(
	musica_id int,
	playlist_id int,
	foreign key(musica_id) references musica(id),
	foreign key(playlist_id) references playlist(id)
);

create table artista(
	id int not null auto_increment,
	nome varchar(60) not null,
	biografia varchar(1000),
	primary key(id)
);

create table musica_artista(
	musica_id int,
	artista_id int,
	foreign key(musica_id) references musica(id),
	foreign key(artista_id) references artista(id)
);
