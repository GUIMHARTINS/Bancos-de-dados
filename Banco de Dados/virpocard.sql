create table bandeira(
	id int not null auto_increment,
	nome varchar(60),
	primary key(id)
);

create table cliente(
	id int not null auto_increment,
	nome varchar(60) not null,
	cpf varchar(11) not null,
	endereco varchar(300),
	telefone varchar(11),
	primary key(id)
);

create table cartao(
	id int not null auto_increment,
	numero varchar(16) not null,
	saldo decimal(10,2),
	bandeira_id int,
	cliente_id int,
	primary key(id),
	foreign key(bandeira_id) references bandeira(id),
	foreign key(cliente_id) references cliente(id)
);

create table tipo_movimentacao(
	id int not null auto_increment,
	nome varchar(45),
	primary key(id)
);

create table movimentacao(
	id int not null auto_increment,
	valor decimal(10,2) not null,
	data datetime not null,
	tipo_movimentacao_id int,
	cartao_id int,
	primary key(id),
	foreign key(tipo_movimentacao_id) references tipo_movimentacao(id),
	foreign key(cartao_id) references cartao(id)
);