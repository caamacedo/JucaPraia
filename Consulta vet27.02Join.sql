CREATE TABLE cliente (

idCliente INT PRIMARY KEY AUTO_INCREMENT,

nomeCliente VARCHAR (50) NOT NULL,

cpf CHAR(11) NOT NULL unique,

celular CHAR(11) NOT NULL,

email VARCHAR (50) NOT NULL,

cidade VARCHAR(50) NOT NULL,

estado CHAR (2) NOT NULL,

cep CHAR(8),

tipoLogradouro VARCHAR (15) NOT NULL,

nomeLogradouro VARCHAR(60) NOT NULL,

numero VARCHAR(6) NOT NULL,

complemento VARCHAR(30)

)
 
DROP TABLE cliente /*  exclui a tabela  e respectivos dados */
 
/*  criando uma tabela sem FK */

CREATE TABLE contatoTelefonico(

idContatoTelefonico INT PRIMARY	KEY,

idCliente INT NOT NULL, /*  deveria ser uma FK */

ddi VARCHAR (5) NOT NULL,

ddd VARCHAR (5) NOT NULL,

numero CHAR(9) NOT NULL 

)
 
/* Alterando a tabela anterior adicionando a FK */

ALTER TABLE contatoTelefonico

ADD	CONSTRAINT fk_contatoTelefonico_CLiente

FOREIGN KEY (idCliente) REFERENCES cliente (idCliente)


/*  criando uma tabela com FK */

CREATE TABLE Animal(

idAnimal INT PRIMARY	KEY AUTO_INCREMENT,

idCliente INT NOT NULL, 

nomeAnimal VARCHAR (50) NOT NULL,

especie VARCHAR (50) NOT NULL,

raca VARCHAR (50) NOT NULL,

peso DECIMAL(5,2),

porte CHAR (1),

sexo CHAR (1), 

anoNascimento INT NOT NULL,

CONSTRAINT fk_Animal_Cliente FOREIGN KEY	(idCliente) REFERENCES cliente (idCliente)

)
 
DROP TABLE animal /*  exclui a tabela  e respectivos dados */
 
 
/*  criando uma tabela com FK */

CREATE TABLE Animal(

idAnimal INT PRIMARY	KEY AUTO_INCREMENT,

idCliente INT NOT NULL, 

nomeAnimal VARCHAR (50) NOT NULL,

especie VARCHAR (50) NOT NULL,

raca VARCHAR (50) NOT NULL,

peso DECIMAL(5,2),

porte CHAR (1),

sexo CHAR (1), 

anoNascimento INT NOT NULL,

CONSTRAINT ck_sexoAnimal CHECK (sexo='M' OR sexo='F'),

CONSTRAINT ck_porteAnimal CHECK (porte IN ('P', 'M','G')),

CONSTRAINT fk_Animal_Cliente FOREIGN KEY	(idCliente) REFERENCES cliente (idCliente)

)
 
 
DROP TABLE tipoServico/*  exclui a tabela  e respectivos dados */
 
CREATE TABLE tipoServico (

idTipoServico INT	PRIMARY	KEY AUTO_INCREMENT,

nomeServico VARCHAR	(50) NOT NULL,

valor DECIMAL(10,2)	NOT NULL		

)
 
CREATE TABLE Veterinario (

idVeterinario INT PRIMARY KEY	AUTO_INCREMENT,

nomeVeterinario VARCHAR	(50) NOT NULL,

crmv VARCHAR(20) UNIQUE NOT NULL,

celular CHAR (11) NOT NULL,

especialidade VARCHAR(50)

)	
 
 
CREATE TABLE consulta(

idConsulta INT PRIMARY KEY AUTO_INCREMENT,

idAnimal INT NOT NULL,

idVeterinario INT NOT NULL,

dataHora DATETIME NOT NULL,

pago BIT NOT NULL,

formaPagto VARCHAR(50) NOT NULL,

qtdVezes TINYINT,

valorTotal DECIMAL(10,2) NOT NULL,

valorPago DECIMAL(10,2),

CONSTRAINT ck_qtdVezes CHECK (qtdVezes IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10)),

CONSTRAINT fk_consulta_Veterinario FOREIGN KEY (idVeterinario) REFERENCES Veterinario(idVeterinario),

CONSTRAINT fk_consulta_Animal FOREIGN KEY (idAnimal) REFERENCES Animal(idAnimal)

)

 
CREATE TABLE ConsultaTipoServico (

idConsultaTipoServico int PRIMARY KEY AUTO_INCREMENT,

idConsulta INT NOT NULL,

valorServico DECIMAL(10,2) NOT NULL,

idTipoServico INT NOT NULL,

CONSTRAINT fk_ConsultaTipoServico_Consulta FOREIGN KEY (idConsulta) REFERENCES consulta(idConsulta),

CONSTRAINT fk_ConsultaTipoServico_tipoServico FOREIGN KEY (idTipoServico) REFERENCES tiposervico(idTipoServico)

)
 
DROP DATABASE clinicavet_camila
 
CREATE DATABASE clinicavet_camila
 
 
SELECT * FROM cliente
 
SELECT nomeCliente, cidade, estado

FROM cliente
 
/*Listar nome cidade e estado de todos os clientes*/
SELECT nomeCliente, cidade, estado FROM cliente


SELECT * FROM contatotelefonico

/*Listar nome e o seu numero telefonico*/
SELECT nomecliente, ddi,dddm numero contatoTelefonico.numero
FROM cliente
INNER JOIN contatotelefonico

ALTER TABLE contatotelefonico 
MODIFY idcontatotelefonico INT NOT NULL AUTO_INCREMENT;

INSERT INTO contatotelefonico (idcliente, ddi,ddd,numero)
VALUES
(1,'55','13','988776655'),
(2,'55','13','988020255'),
(3,'55','21','988156655');

SELECT *FROM cliente

SELECT nomecliente, ddi,ddd, contatoTelefonico.numero
FROM cliente
INNER JOIN contatotelefonico
ON cliente.idcliente = contatotelefonico.idcliente