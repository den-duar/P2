
-- INSERT FORMAS DE PAGAMENTO

DELETE FROM DBO.FORMA_PAGAMENTO;
DBCC CHECKIDENT ('FORMA_PAGAMENTO', RESEED, 0);
GO

INSERT INTO DBO.FORMA_PAGAMENTO VALUES ('Dinheiro');
INSERT INTO DBO.FORMA_PAGAMENTO VALUES ('Cartão de Débito');
INSERT INTO DBO.FORMA_PAGAMENTO VALUES ('Cartão de Crédito (Vencimento)');
INSERT INTO DBO.FORMA_PAGAMENTO VALUES ('Cartão de Crédito (Parcelado)');
INSERT INTO DBO.FORMA_PAGAMENTO VALUES ('Carnê');
INSERT INTO DBO.FORMA_PAGAMENTO VALUES ('Pix');
INSERT INTO DBO.FORMA_PAGAMENTO VALUES ('PicPay');
INSERT INTO DBO.FORMA_PAGAMENTO VALUES ('Google Pay');
INSERT INTO DBO.FORMA_PAGAMENTO VALUES ('Mercado Pago');

-- TABELA PRODUTO

DELETE FROM DBO.PRODUTO;
DBCC CHECKIDENT ('PRODUTO', RESEED, 0);
GO


INSERT INTO DBO.PRODUTO VALUES
('Bola de brinquedo', 'Bola para morder e pegar para cachorros', 'P', 10.00);
INSERT INTO DBO.PRODUTO VALUES
('Shampo Pet Love', 'Para um banho cheiroso', 'P', 13.00);
INSERT INTO DBO.PRODUTO VALUES
('Banho e Tosa', 'Serviço de estética', 'S', 60.00);
INSERT INTO DBO.PRODUTO VALUES
('Coleira', 'Segurança para seu pet', 'P', 66.90);
INSERT INTO DBO.PRODUTO VALUES
('Consulta Veterinária', 'Consulta especializada', 'S', 299.90);
INSERT INTO DBO.PRODUTO VALUES
('Ração Atacama 16kg', 'Ração boa pra cachorro', 'P', 230.99);
INSERT INTO DBO.PRODUTO VALUES
('Bola de brinquedo', 'Bola para morder e pegar para cachorros', 'P', 10.00);
INSERT INTO DBO.PRODUTO VALUES
('Catnip 10g', 'Erva de gato desidratada', 'P', 25.98);
INSERT INTO DBO.PRODUTO VALUES
('Pedras de fire', 'Ração crocante e flamejante', 'P', 15.50);
INSERT INTO DBO.PRODUTO VALUES
('Remedio pulkill', 'Matar pulga ', 'P', 90.81);
INSERT INTO DBO.PRODUTO VALUES
('Ração Wiskas', 'Ração para gatos', 'P', 20.87);
INSERT INTO DBO.PRODUTO VALUES
('Correntes de Asgard ', 'Correntes que prederam o lobo Fenrir de Asgard', 'P', 88.90);
INSERT INTO DBO.PRODUTO VALUES
('Sampoo Premium', 'Shampoo da linha premium para pelos sedosos', 'P', 250.87);
INSERT INTO DBO.PRODUTO VALUES
('Raçães Pilar', 'Comida de cachorro', 'P', 88.90);
INSERT INTO DBO.PRODUTO VALUES
('Mordedor', 'Mordedor para cachorro de grande porte', 'P', 58.90);
INSERT INTO DBO.PRODUTO VALUES
('Ração mania', 'Comida de cachorro', 'P', 58.91);
INSERT INTO DBO.PRODUTO VALUES
('Osso Roedor', 'Ossinho de roer para cachorro inquieto', 'P', 58.92);
INSERT INTO DBO.PRODUTO VALUES
('Gaiola roedores', 'Gaiola para pequenos roedores - tamanho medio ', 'P', 58.93);

-- TABELA CLIENTES

DELETE FROM DBO.CLIENTE;
DBCC CHECKIDENT ('CLIENTE', RESEED, 0);
GO

INSERT INTO DBO.CLIENTE VALUES
('Levi de Souza Folly', 'levi.folly@geradornv.com.br'),
('Everton Cormack Siqueira', 'everton.siqueira@geradornv.com.br'),
('Estefani Guimarães Claudino', 'estefani.claudino@geradornv.com.br'),
('Alessandro Temperini Antunes', 'alessandro.antunes@geradornv.com.br'),
('Islayne Hall Mourão', 'islayne.mourao@geradornv.com.br'),
('Jonathan Branco Zuniga', 'jonathan.zuniga@geradornv.com.br'),
('Rozangela de Barros Queiroz', 'rozangela.queiroz@geradornv.com.br'),
('Katyene da Conceição Bravo', 'katyene.bravo@geradornv.com.br'),
('Débora Matta Valente', 'debora.valente@geradornv.com.br'),
('Hebert Cardoso Filho', 'hebert.filho@geradornv.com.br'),
('Emanoel Pires Lana', 'emanoel.lana@geradornv.com.br'),
('Eliana Branco Gomes', 'eliana.gomes@geradornv.com.br'),
('Lucy da Cunha Carmanin', 'lucy.carmanin@geradornv.com.br'),
('Vilma Sarmento Sarmanto', 'vilma.sarmanto@geradornv.com.br');


-- TABELA FUNCIONÁRIOS

DELETE FROM DBO.FUNCIONARIO;
DBCC CHECKIDENT ('FUNCIONARIO', RESEED, 0);
GO


INSERT INTO DBO.FUNCIONARIO VALUES
('Rosimere Theodoro Manhães', '387.867.049-40', 2500.00, 'V', 696432, 'Geral', NULL),
('José Da Silva', '798.783.146-65', 5000.00, 'V', 23456789, 'Dermatologia', NULL),
('Osmar Osvaldo', '111.222.333-04', 2500.00, 'V', 7632198, 'Geral', NULL),
('Hermenegildo Batista', '552.443.644-76', 3500.00, 'V', 6743856, 'Oncologista', NULL),
('Joaquim Da Silva Santos', '121.077.452-85', 9785.00, 'V', 675897, 'Oncologista', NULL),
('Pedro Thomas Monteiro', '567.659.342-35', 3000, 'V', 21423, 'Dermatologia', NULL),
('João Lima', '777.949.230-34', 1310.17, 'A', NULL, NULL, 7),       
('Jeniffer Batista', '189.684.123-99', 1580.25, 'A', NULL, NULL, 11),
('Aline Omar', '400.289.221-88', 1367.80, 'A', NULL, NULL, 8);

-- TABELA PETS

DELETE FROM PET;
DBCC CHECKIDENT ('PET', RESEED, 0);
GO

INSERT INTO DBO.PET VALUES
('Marley', 'Cachorro', 'M', NULL, NULL),
('Dogão', 'Cachorro', 'P', NULL, NULL),
('Simba', 'Gato', 'M', NULL, NULL),
('Kira Maria', 'Gato', 'M', NULL, NULL),
('Ligerinho', 'Jabuti', 'P', NULL, NULL),
('Toíco', 'Papagaio', 'M', NULL, NULL),
('Judith Pereira', 'Gato', 'M', NULL, NULL),
('Nine', 'Cachorro', 'M', NULL, NULL),
('Teddy', 'Cachorro', 'P', NULL, NULL);


-- INSERINDO VENDAS
DELETE FROM DBO.VENDA;
DBCC CHECKIDENT ('VENDA', RESEED, 0);
GO

INSERT INTO DBO.VENDA VALUES(1, 1, 7);
INSERT INTO DBO.VENDA VALUES(6, 3, 9);
INSERT INTO DBO.VENDA VALUES(6, 13, 8);
INSERT INTO DBO.VENDA VALUES(1, 4, 7);
INSERT INTO DBO.VENDA VALUES(3, 13, 9);
INSERT INTO DBO.VENDA VALUES(6, 8, 7);
INSERT INTO DBO.VENDA VALUES(1, 1, 9);
INSERT INTO DBO.VENDA VALUES(3, 4, 8);
INSERT INTO DBO.VENDA VALUES(1, 13, 7);


-- INSERINDO PRODUTOS VENDIDOS
DELETE FROM DBO.PRODUTO_VENDA;
DBCC CHECKIDENT ('PRODUTO_VENDA', RESEED, 0);
GO

INSERT INTO DBO.PRODUTO_VENDA VALUES
(6, 1),
(5, 1),
(7, 1);

INSERT INTO DBO.PRODUTO_VENDA VALUES
(2, 2),
(5, 2);

INSERT INTO DBO.PRODUTO_VENDA VALUES
(6, 3),
(9, 3),
(4, 3),
(7, 3);

INSERT INTO DBO.PRODUTO_VENDA VALUES
(10, 4);

INSERT INTO DBO.PRODUTO_VENDA VALUES
(12, 5);

INSERT INTO DBO.PRODUTO_VENDA VALUES
(17, 6),
(14, 6);

INSERT INTO DBO.PRODUTO_VENDA VALUES
(7, 7);

INSERT INTO DBO.PRODUTO_VENDA VALUES
(17, 8);

INSERT INTO DBO.PRODUTO_VENDA VALUES
(9, 9);


--INSERINDO A QUEM CADA PET PERTENCE

insert into dbo.cliente_pet values
	(14,1),
	(9,2),
	(3,3),
	(6,4),
	(8,5),
	(12,6),
	(13,7),
	(2,8),
	(2,9);