insert into bandeira values(null, 'visa')

insert into bandeira values(null, 'mastercard')

delete from bandeira where id = 1;

insert into cliente values(null, 'Jo�o Darci','50110103512', 'Mar�lia-SP, Santa Antonieta, Rua Jo�o Martins Coelho, N�301', '14997501321');

insert into cliente (nome, cpf) values('Maria do Carmo', '49232112645');

insert into cliente (nome, cpf) values('Renan da Silva de Oliveira', '55046112421');

insert into cartao values(null, '23654856312457', 1600.00, 2, 1);

insert into cartao values(null, '4512201100964311', 12000, 3, 2);

insert into cartao (numero, bandeira_id, cliente_id) values('445123462158',2,3);

insert into tipo_movimentacao values(null, 'Dep�sito');

insert into tipo_movimentacao values(null, 'Saque');

insert into tipo_movimentacao values(null, 'D�bito');

insert into movimentacao values(null, 25,'20011001',1,1);

insert into movimentacao values(null, 1000,'20021114',2,2);

insert into movimentacao values(null, 1000,'20200922', 3, 3);