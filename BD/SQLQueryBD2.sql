create database primeirobd;

create database teste_bd
	ON (NAME = teste_dat,
	FILENAME = 'D:\SQLSV\teste_bd.mdf',
	SIZE = 5,
	MAXSIZE = 20,
	FILEGROWTH = 5)
	LOG ON
	(NAME = teste_log,
	FILENAME = 'D:\SQLSV\teste_bd.ldf',
	SIZE = 10,
	MAXSIZE = 50,
	FILEGROWTH = 10)

create database clientes
	ON (NAME = clientes_dat,
	FILENAME = 'D:\SQLSV\clientes_bd.mdf',
	SIZE = 5,
	MAXSIZE = 20,
	FILEGROWTH = 5)




