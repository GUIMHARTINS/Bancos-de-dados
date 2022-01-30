create table time (
	id int not null auto_increment,
	brasao varchar(300),
	nome varchar(60) not null,
	ano year(4),
	primary key(id)
);

create table jogador(
	id int not null auto_increment,
	time_id int,
	nome varchar(90),
	apelido varchar(45),
	nascimento date,
	primary key(id),
	foreign key(time_id) references time(id)
	);
	
create table estadio(
	id int not null auto_increment,
	nome varchar(45),
	primary key(id)
);

create table partida(
	id int not null auto_increment,
	estadio_id int,
	horario datetime,
	primary key(id),
	foreign key(estadio_id) references estadio(id)
);

create table partida_time(
	id int not null auto_increment,
	time_id int,
	partida_id int,
	gols_feitos int,
	gols_sofridos int,
	pontos_ganhos int,
	saldo_gols int,
	saldo_pontos int,
	primary key(id),
	foreign key(time_id) references time(id),
	foreign key(partida_id) references partida(id)
);

create table gol(
	id int not null auto_increment,
	partida_id int,
	time_id int,
	jogador_id int,
	assistente_id int,
	momento int,
	primary key(id),
	foreign key(partida_id) references partida(id),
	foreign key(time_id) references time(id),
	foreign key(jogador_id) references jogador(id),
	foreign key(assistente_id) references jogador(id)
);