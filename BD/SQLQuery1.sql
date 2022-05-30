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
	tipo char(1),
	valor decimal(5,2));
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
alter table funcionario
alter column cpf varchar(14)

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
