ALTER TABLE cliente ADD (
email VARCHAR(255) NOT NULL, cidade VARCHAR(50) NOT null,estado CHAR(2) NOT null, tipoLogradouro VARCHAR (15) NOT NULL,
nomeLogradouro VARCHAR(60) NOT NULL, numero VARCHAR(6) NOT NULL,complemento VARCHAR(30)
)

/*Exercício 2 (inserir 10 clientes e 3 inserir 10 clientes*/
SELECT *FROM cliente

INSERT INTO cliente
(nomeCliente, cpfCliente, email, cidade, estado, tipoLogradouro, nomeLogradouro, numero, complemento)
VALUES
('Donald','61061035000', 'donald.pato@uol.com.br', 'Santos', 'SP', 'Rua','Ceara','30',NULL),
('Margarida','47768599047','maguinha.flor@uol.com.br','São Vicente', 'SP', 'Rua','Floriano Peixoto','10',NULL),
('Patinhas','52349139026','tio.patinhas@uol.com.br','Florianópolis','SC','Av','joaninhas','10',NULL),
('Huguinho','99379350082','huguinho.store@gmail.com','Santos', 'SP', 'Rua','Pernambuco','5',NULL),
('Luizinho','30824432908','luizinho12@gmail.com','Praia Grande','SP','Rua','Leblon','12',NULL),
('Zezinho','34324840858','zezinho.santos@gmail.com','São Vicente','SP','Rua','Jacob Emmerick','15',NULL),
('Pardal','78304469545','pardal.zinho@uol.com.br','Santos','SP','Rua','Dr Arnaldo de Carvalho','112',NULL),
('Zé Carioca','85401092636','caricaze@gmail.com','Rio de Janeiro','RJ','Viela','2','casa1',NULL),
('Mickey','55245323591','mickey.minnie@hotmail.com','Recife','PE','Rua','Bituri','28',NULL),
('Minie','42089936266','minnie.mickey@gmail.com','Recife','PE','Rua','Bituri','28',NULL),
('Pateta','18142585740','patetia.disney@gmail.com','Recife','PE','Rua','Bituri','30',NULL),
('Branca de Neve','97957346286','rainhadosbaixinhos2@hotmail.com','São Joaquim','SC','Rua','chimarrao','12',NULL),
('Aladin','31700135309','meutapete@gmail.com','Belem do Pará','PA','Rua','das Castanhas','2',NULL),
('Cinderela','09471124727','cindi.dorminhoca@hotmail.com','Goiania','GO','Caminho','da Fazenda Talismã','1', NULL),
('Mulan','33418556450','guerreira.chinesa@gmail.com','Rio das Ostras','RJ','Av','Brasil','casa 8', NULL),
('Moana','72692130464','mo.ana@gmail.com','Parati','RJ','Rua','Copacabana','854',NULL),
('Asnesio','68120230604','silva.asnesio@uol.com.br','Belo Horizonte','MG','Rua','João Pessoa','11',NULL),
('Maga Patalógica','36953294086','maga2@gmail.com','Cubatão','SP','Praça','Portugal','11',NULL),
('Capitão Boeing','25472798353','cap.boieng@oul.com','Manaus','AM','Rua','João de Barro','19',NULL),
('Pão Duro Mac Money','08354136590','money13@ig.com.br','Osasco','SP','Rua','Fiorino Beltrano','13',NULL)

SELECT * FROM funcionario
 
/*Exercicio 4 Inserir 03 funcionários com dados aleatórios, mas com os seguintes nomes:
Cebolinha,
Cascão, 
Chico Bento*/
INSERT INTO funcionario
( nomeFuncionario, cpfFuncionario, celularFuncionario)
VALUES
('Cebolinha','23345567723','13944233212'),
('Cascão','33312245565','13977663311'),
('Chico Bento','12221145321','13988775543')
 
 
/*Exercício5 Inserir os seguintes equipamentos:
 
Cadeiras 02 posições - 50 unidades - R$2,00
Cadeiras 04 posições - 100 unidades - R$3,50
Guarda Sol P - 40 unidades - R$2,00
Guarda Sol G - 60 unidades - R$3,00
Mesinha - 30 unidades - R$1,50*/ 
SELECT * FROM equipamento
 
INSERT INTO equipamento
(nomeEquipamento, qtd, valorHora)
VALUE
('Cadeiras 02 posições','50','2.00'),
('Cadeiras 04 podições','100','3.50'),
('Guarda Sol P','40','2.00'),
('Guarda Sol G','60','3.00'),
('Mesinha','30','1.50')
 
 /*Exercício 6 Inserir o aluguel de 1 cadeiras 2 posições para o Pateta feita pelo Cebolinha, em 08/12/24. Fazer o update da quantidade retirando uma do estoque. */
  SELECT * FROM aluguel
 
INSERT INTO aluguel
(idCliente, idFuncionario, dataHoraRetirada,dataHoraDevolucao,valorAPagar, valorPago, pago, formaPagamento, qtVezes)
VALUES
('11','1','2024-12-08 15:00:00','24-12-08 17:00','4.00','4.00','S','dinheiro',NULL)
 
UPDATE equipamento
SET qtd=49
where idEquipamento =1
 
INSERT INTO aluguelequipamento
(idAluguelEquipamento, idEquipamento, idAluguel, valorItem, valorUnitario, qtd)
VALUES
('1','1','3','4.00','2.00','1')
 
 SELECT * FROM aluguelequipamento
 
 /*exercício 7 Inserir o aluguel de 2 cadeiras 4 posições e um guarda sol G para o Mickey feita pelo Chico Bento, em dez 10/12/24.
*/ 
 
 SELECT * FROM aluguelequipamento
 
 INSERT INTO aluguelequipamento
(idCliente, idFuncionario, dataHoraRetirada,dataHoraDevolucao,valorAPagar, valorPago, pago, formaPagamento, qtVezes)
VALUES
('9','3','2024-12-10 14:00:00','2024-12-10 18:00:00','28.00','28.00','S','dinheiro',NULL)

UPDATE aluguelequipamento
SET qtd=98
where idEquipamento =2

UPDATE aluguelequipamento
SET qtd=59
where idEquipamento =4
 
INSERT INTO aluguelequipamento
(idAluguelEquipamento, idEquipamento, idAluguel, valorItem, valorUnitario, qtd)
VALUES
('2','2','4','28.00','3.50','2'),
('3','4','4','3.00','3.00','1')

/*8)Inserir o aluguel de 1 guarda sol P para 3 pessoas quaisquer feita pelo Cebolinha, em 27/12/24.
Fazer o update da quantidade retirando do estoque. 
*/
INSERT INTO aluguel
(idCliente, idFuncionario, dataHoraRetirada,dataHoraDevolucao,valorAPagar, valorPago, pago, formaPagamento, qtVezes)
VALUES
('14','1','2024-12-27 13:00:00','24-12-27 16:00','6.00','6.00','1','dinheiro',NULL)

/* atualizando estoque */
UPDATE equipamento
SET qtd=39
where idEquipamento=3

INSERT INTO aluguelequipamento
(idEquipamento, idAluguel, valorItem, valorUnitario, qtd)
VALUES
('3','4','6.00','2.00','1')

/*
9)Inserir o aluguel de 2 cadeiras 4 posições e um guarda sol G para 6 pessoas aleatórias feitas pelo Chico Bento, em dez 28/12/24. Fazer o update da quantidade retirando do estoque. 
10)Listar o nome e os contatos de todos os clientes da barraca em ordem alfabética.
11)Listar o nome e o contato telefônico de todos os funcionários da barraca em ordem alfabética. */
UPDATE equipamento
SET nomeEquipamento='Cadeiras 04 posições'
WHERE idEquipamento=2

INSERT INTO aluguel
(idCliente, idFuncionario, dataHoraRetirada,dataHoraDevolucao,valorAPagar, valorPago, pago, formaPagamento, qtVezes)
VALUES
('18','3','2024-12-28 13:00:00','24-12-28 16:00','21.00','21.00','1','crédito','1'),
('18','3','2024-12-28 13:00:00','24-12-28 16:00','9.00','9.00','1','crédito','1')



/* atualizando estoque */
UPDATE equipamento
SET qtd=96
where idEquipamento=2

UPDATE equipamento
SET qtd=58
where idEquipamento=4

INSERT INTO aluguelequipamento
(idEquipamento, idAluguel, valorItem, valorUnitario, qtd)
VALUES
('2','5','21.00','3.50','2'),
('4','6','9.00','3.00','1')


/*
12)Listar todos os dados dos aluguéis realizados em ordem de data da mais antiga para a mais nova.*/

/*
13)Listar nome, cidade e estado de todos os clientes da baixada santista em ordem alfabética por nome.*/

/*
14)Listar todos os produtos e a quantidade de estoque do produto que tem mais itens para o que tem menos.*/

/*
15)Listar o nome, a cidade e o estado de todos os clientes que moram em casa em ordem alfabética.*/

/*
16)Listar o nome de todos os clientes e o estado daqueles que não vivem no estado de SP.*/
/*
17)Listar o nome de todos os clientes que começam com a letra A.*/

/*
18)Listar todos os dados dos clientes que começam com a letra M e vivam no estado de PE.*/

/*
19)Listar apenas as cadeiras e a quantidade que possui em estoque em ordem de quantidade, da que mais possui itens para a que menos possui. */

/*
20)Listar todos os dados dos alugueis que ocorreram entre 25/12 e 31/12 de 2024 em ordem de data da mais antiga para a mais nova.*/


 
/*DESAFIO Como inserir datas no SQL de forma que fiquem corretas?
*/

