ALTER TABLE cliente ADD (
email VARCHAR(255) NOT NULL, cidade VARCHAR(50) NOT null,estado CHAR(2) NOT null, tipoLogradouro VARCHAR (15) NOT NULL,
nomeLogradouro VARCHAR(60) NOT NULL, numero VARCHAR(6) NOT NULL,complemento VARCHAR(30)
)

SELECT *FROM cliente

INSERT INTO cliente
(nomeCliente, cpflCliente, email. cidade, estado, tipoLogradouro, nomeLogradouro, numero, complemento)
VALUES
(Donald,'610.610.350-00', 'donald.pato@uol.com.br', 'Santos', 'SP', 'Rua','Ceara','30')
(Margarida,'477.685.990-47','maguinha.flor@uol.com.br','São Vicente', 'SP', 'Rua','Floriano Peixoto','10',NULL)
(Patinhas,'523.491.390-26','tio.patinhas@uol.com.br','Florianópolis','SC','Av','joaninhas','10',NULL)
(Huguinho,'993.793.500-82','huguinho.store@gmail.com','Santos', 'SP', 'Rua','Pernambuco','5',NULL)
(Luizinho,'308.244.329-08','luizinho12@gmail.com','Praia Grande','SP','Rua','Leblon','12',NULL)
(Zezinho,'349.248.408-58','zezinho.santos@gmail.com','São Vicente','SP','Rua','Jacob Emmerick','15',NULL)
(Pardal,'783.044.695-45','pardal.zinho@uol.com.br','Santos','SP','Rua','Dr Arnaldo de Carvalho','112',NULL)
(Zé Carioca,'854.010.926-36','caricaze@gmail.com','Rio de Janeiro','Viela','2','casa1',NULL)
(Mickey,'552.453.235-91','mickey.minnie@hotmail.com','Recife','PE','Rua','Bituri','28',NULL)
(Minie,'420.899.362-66','minnie.mickey@gmail.com','Recife','PE','Rua','Bituri','28',NULL)
(Pateta,'181.425.857-40','patetia.disney@gmail.com','Recife','PE','Rua','Bituri','30',NULL)
(Branca de Neve,'979.573.462-86','rainhadosbaixinhos2@hotmail.com','São Joaquim','SC','Rua','chimarrao','12',NULL)
(Aladin,'317.001.353-09','meutapete@gmail.com','Belem do Pará','PA','Rua','das Castanhas','2',NULL)
(Cinderela,'094.711.247-27','cindi.dorminhoca@hotmail.com','Goinia','GO','Caminho','da Fazenda Talismã','1', NULL)
(Mulan,'334.185.564-50','guerreira.chinesa@gmail.com'.'Rio das Ostras','RJ','Av','Brasil','casa 8', NULL)
(Moana,'726.921.304-64','mo.ana@gmail.com','Parati','RJ','Rua','Copacabana','854',NULL)
(Asnesio,'681.202.306-04','silva.asnesio@uol.com.br','Belo Horizonte','MG','Rua','João Pessoa','11',NULL)
(Maga Patalógica,'369.532.940-86','maga2@gmail.com','Cubatão','SP','Praça','Portugal',NULL)
(Capitão Boeing,'254.727.983-53','cap.boieng@oul.com','Manaus','AM','Rua','João de Barro','19',NULL)
(Pão Duro Mac Money,'083.541.365-90','money13@ig.com.br','Osasco','SP','Rua','Fiorino Beltrano','13',NULL)

SELECT * FROM funcionario
 
INSERT INTO funcionario
( nomeFuncionario, cpfFuncionario, celularFuncionario)
VALUES
('Cebolinha','23345567723','13944233212'),
('Cascão','33312245565','13977663311'),
('Chico Bento','12221145321','13988775543')
 
 
SELECT * FROM equipamento
 
INSERT INTO equipamento
(nomeEquipamento, qtd, valorHora)
VALUE
('Cadeiras 02 posições','50','2.00'),
('Cadeiras 04 podições','100','3.50'),
('Guarda Sol P','40','2.00'),
('Guarda Sol G','60','3.00'),
('Mesinha','30','1.50')
 
 
SELECT * FROM aluguel
 
INSERT INTO aluguel
(idCliente, idFuncionario, dataHoraRetirada,dataHoraDevolucao,valorAPagar, valorPago, pago, formaPagamento, qtVezes)
VALUES
(22,1,'2024-12-08 15:00:00','24-12-08 17:00','4.00','4.00','S','dinheiro',null)