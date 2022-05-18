create database bdi221;
go

use bdi221;
go

--Criação tabela produtos
drop table produto;
go

create table produto(
	id int not null identity(1,1),
	nome varchar(50),
	descricao varchar(255),
	valor decimal(5,2));
go

alter table produto
	add tipo char(1);
go

alter table produto
	add constraint pk_produtos primary key(id);
go

--Criação tabela prontuario
drop table prontuario;
go

create table prontuario(
	id int not null identity(1,1),
	descricao varchar(255),
	temperatura decimal(3,1),
	peso decimal(3,1),
	constraint pk_prontuario primary key(id)
	);
go

--Criação tabela pet
drop table pet;
go

create table pet(
	id int not null identity(1,1),
	nome varchar(50),
	especie varchar(50),
	porte varchar(50),
	dt_nasc date,
	id_prontuario int null,
	);
go

alter table pet
	add constraint pk_pet primary key(id);
go

alter table pet
	add constraint fk_pet_prontuario foreign key(id_prontuario)
		references dbo.prontuario(id);
go

--Criação tabela forma_pagamento
drop table forma_pagamento;
go

create table forma_pagamento(
	id int not null identity(1,1),
	descricao varchar(50) not null,
	constraint pk_forma_pagamento primary key(id)
	);
go

--Criação tabela funcionario
drop table funcionario;
go

alter table funcionario
alter column salario decimal(7,2)

create table funcionario(
	id int not null identity(1,1),
	nome varchar(255) not null,
	cpf varchar(11) not null,
	salario decimal(6,2) not null,
	--Cod Endereco
	tipo char(1) null,
	n_conselho int null,
	especialidade varchar(20) null,
	comissao decimal(4,2)null,
	constraint pk_funcionario primary key (id)
	);
go

--Criação tabela cliente

drop table cliente;
go

create table cliente(
	id int not null identity (1,1),
	nome varchar(255) not null,
	--cod endereco
	--telefone
	email varchar(50) not null,
	constraint pk_cliente primary key (id)
	);
go

--Criação tabela cliente_pet
drop table cliente_pet;
go

create table cliente_pet(
	id int not null identity(1,1),
	id_cliente int not null,
	id_pet int not null,
	constraint pk_cliente_pet primary key(id),
	constraint fk_cliente_pet_cliente foreign key(id_cliente)
	references dbo.cliente(id),
	constraint fk_cliente_pet_pet foreign key(id_pet)
	references dbo.pet(id)
);
go
--Criação tabela venda
drop table venda;
go

create table venda(
	id int not null identity(1,1),
	id_forma_pagamento int not null,
	id_cliente int not null,
	id_funcionario int not null,
	constraint pk_venda primary key(id),
	constraint fk_venda_forma_pagamento foreign key(id_forma_pagamento)
	references dbo.forma_pagamento(id),
	constraint fk_venda_cliente foreign key(id_cliente)
	references dbo.cliente(id),
	constraint fk_venda_funcionario foreign key (id_funcionario)
	references dbo.funcionario(id));
go

--Criação tabela produto_venda
drop table produto_venda;
go

create table produto_venda(
	id int not null identity (1,1),
	id_produto int not null,
	id_venda int not null,
	constraint pk_produto_venda primary key(id,id_produto,id_venda),
	constraint fk_produto_venda_produto foreign key(id_produto)
	references dbo.produto(id),
	constraint fk_produto_venda_venda foreign key(id_venda)
	references dbo.venda(id),
	);
go

--Inserir dados na tabela forma_pagamento

insert into forma_pagamento values ('dinheiro');
insert into forma_pagamento values ('pix');
insert into forma_pagamento values ('cartão debito');
insert into forma_pagamento values ('cartão credito');
insert into forma_pagamento values ('cheque');
insert into forma_pagamento values ('boleto');
insert into forma_pagamento values ('cartão credito(parcelado)');
insert into forma_pagamento values ('picpay');
insert into forma_pagamento values ('mercado pago');

--Inserir dados na tabela produtos

insert into produto values('Bola de brinquedo', 'Bola para morder e pegar para cachorros',10.00 ,'P' );
insert into produto values('Catnip 10g', 'Erva de gato desidratada', 25.00, 'P');
insert into produto values('Pedras de fire', 'Ração crocante e flamejante', 0.50, 'P');
insert into produto values('Banho e Tosa', 'Serviço de estética', 60.00, 'S');
insert into produto values('Shampoo Pet Love', 'Para um banho cheiroso', 13.00, 'P');
insert into produto values('Consulta veterinária', 'Consulta especializada', 299.99, 'S');
insert into produto values('Coleira', 'Segurança para seu pet', 66.90, 'P');


--Inserir dados na tabela cliente

INSERT INTO cliente(nome,email)
VALUES
    ('Márcia Nicole Vieira', 'marcianicolevieira@cdcd.com.br'),
    ('Maria Nunes', 'marianunes11@gmail.com'),
    ('Giro Comes', 'Giro_idoso+60@gmail.com'),
    ('Gabriel', 'FogoFest2022@gmail.com'),
    ('Joaovisck', 'joaovisk@gmail.com'),
    ('Pedro Silva', 'pedrinhoradical@gmail.com'),
    ('Mbappe', 'MatheuzinReiDelas2010@hotmail.com'),
    ('Ribamar', 'Ribagol@gmail.com'),
    ('Alphonse Areola', 'alphonseareola@gmail.com'),
    ('Brito', 'tuliocesarluna@gmail.com'),
    ('Bento Andre de Lima', 'bentoal@gmail.com'),
    ('Cleiton Rasta', 'cleitonreagge@gmail.com');    
	
	--Inserir dados na tabela funcionario

	INSERT INTO funcionario (nome,CPF,salario,tipo,n_conselho,especialidade,comissao)
VALUES
    ('Rosimere Theodoro Manhães', '38786704940', 2500.00, 'V', 69643, NULL, NULL),
    ('Osmar ', '11122233304', 1500, 'A', NULL, NULL, 15),
    ('José Da Silva', '79878314665', 5000, 'V', 12345, 'Dermatologia', NULL),
    ('Mestre dos Magos', '00000000000', 2500, 'A', NULL, NULL, NULL),
    ('Biu Silva', '18968412399', 870, 'A', 90228, NULL, NULL),
    ('Serafin da Silva ', '40028922188', 1200, NULL, 17107, NULL, NULL),
    ('Shayane Silva', '98456512300', 1795, 'A', 15565, NULL, NULL),
    ('Hermenegildo', '55244364476', 3500.00, 'V', 67438, 'Oncologista', NULL),
    ('Biu do Espetinho', '55026988075', 6980, 'A', 33011, 'atender', NULL),
    ('Joaquim Da Silva Santos', '12107745285', 9785.00, 'V', NULL, NULL, 15),
    ('Brito', '14236918708', 4000.96, 'A', 78632, NULL, 15),
    ('Jonas', '77794923034', 900, 'V', 23011, NULL, 10),
    ('Pedro Henrique Yuri Thomas Monteiro', '56765934235', 3000, 'V', 21423, 'Dermatologia', NULL),
    ('sevirino', '54566854504', 10000, 'V', NULL, NULL, 20),
    ('Cristiano Ronaldo', '36367700471', 2000, 'V', 25006, 'Atender', 10),
    ('Ração É Aqui', '01440682496', 2500.00, 'V', 24242, 'Atender', 10),
    ('Estela Nogueira', '03476005488', 15000, 'A', 90819, NULL, 15),
    ('Maria Júlia', '01234567899', 3500.40, 'V', 1519, 'Felinos',NULL),
    ('Josi', '11111111111', 1750, 'A', NULL, NULL, NULL),
    ('Vinicius de Morais', '75759509071', 2831.83, 'A', 54782, NULL, 18.50),
    ('Caio Vieira', '09833316094', 2500.00, 'V', 23110, 'Aves', 10),
    ('Fausto Silva', '01001101213', 1800.00, 'V', NULL, 'Vendas', 10),
    ('Alice Araújo', '84224064956', 6000, 'A', 34467, 'Setor pessoal', 15); 