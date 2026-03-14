/*.Criar um aluguel de equipamento para o mês de novembro (qualquer data e hora), qualquer equipamento, qualquer 
funcionário e qualquer cliente, mas cujo pagamento não tenha sido feito (ficou em aberto).*/

SELECT * FROM cliente /*Mickey 9*/
select * from equipamento /*mesinha 5*/
SELECT * FROM funcionario /* Cascão*/
SELECT * FROM aluguelequipamento
SELECT * FROM aluguel

INSERT INTO aluguel(idCliente, idFuncionario, dataHoraRetirada,dataHoraDevolucao,valorAPagar, valorPago, pago, formaPagamento, qtVezes)
VALUES 
(9,3,'2026-03-11 10:00','2026-03-11 11:00','1.50',0,0,NULL,NULL)


INSERT INTO aluguelequipamento
(idAluguelEquipamento, idEquipamento, idAluguel, valorItem, valorUnitario, qtd)
VALUES
('5','5','8','1.50','1.50','1')
UPDATE equipamento
SET qtd=29
where idEquipamento =5


/*2.Listar nome de todos os funcionários, cpf e os aluguéis feitos por ele (apenas a data e que equipamento alugou). */

SELECT funcionario.nomeFuncionario, funcionario.cpfFuncionario, aluguel.dataHoraRetirada, aluguel.dataHoraDevolucao, equipamento.nomeEquipamento
FROM funcionario
INNER JOIN aluguel
ON funcionario.idFuncionario = aluguel.idFuncionario
INNER JOIN aluguelequipamento 
ON aluguel.idAluguel = aluguelequipamento.idAluguel
INNER JOIN equipamento
ON equipamento.idEquipamento = aluguelequipamento.idEquipamento


/*3.Listar nome do cliente, cpf, datas que ele esteve na praia, quem atendeu este
cliente, tudo isto, ordenado por data, da mais nova para a mais antiga, apenas no mês de DEZ24.*/

SELECT cliente.nomeCliente, cliente.cpfCliente, aluguel.dataHoraRetirada, aluguel.dataHoraDevolucao, funcionario.nomeFuncionario
FROM aluguel
INNER JOIN cliente
ON aluguel.idCliente = cliente.idCliente 
INNER JOIN funcionario
ON aluguel.idFuncionario = funcionario.idFuncionario
WHERE aluguel.dataHoraRetirada BETWEEN	'2024-12-01 00:00:00' AND '2024-12-31 23:59:59'
ORDER BY aluguel.dataHoraRetirada DESC


/*4.Lista do nome dos equipamentos que foram mais alugados em ordem decrescente, do equipamento mais alugado para o menos alugado. Equipamentos não alugados devem sair no relatório.*/

SELECT equipamento.nomeEquipamento AS 'Equipamento',
	COUNT(aluguelequipamento.idEquipamento) AS'TotalAlugado'
FROM equipamento
	left JOIN aluguelequipamento
ON aluguelequipamento.idEquipamento = equipamento.idEquipamento 
GROUP BY equipamento.nomeEquipamento
ORDER BY TotalAlugado DESC;

/*5.Listar a arrecadação bruta da barraca de praia entre Natal e Ano Novo.*/

SELECT SUM(valorPago) AS 'valorBruto'
FROM aluguel
WHERE aluguel.dataHoraRetirada BETWEEN	'2024-12-25 00:00:00' AND '2025-01-01 23:59:59'

/*6.Reajustar preço por hora de todos os equipamentos em 10%.*/

UPDATE equipamento
SET valorHora = valorHora * 1.10
 
SELECT * FROM equipamento

/*7.Listar a quantidade de clientes que pagaram utilizando determinada forma de pagamento, em ordem crescente, do método mais usado para o menos usado. Também é necessário que pagamentos não realizados sejam apontados. */

/*opção dos meninos com ajuda do chat, mais utilizada para programação*/
/* ifnull é utilizada IFNULL() verifica se o campo formaPagamento está NULL.*/
select IFNULL(formaPagamento,'Não realizado') AS formaPagamento,
COUNT(idCliente) AS qtdClientes
FROM aluguel 
GROUP BY formaPagamento
ORDER BY qtdClientes DESC

/*Feito com orientação do Arley, como no ex. 4*/

SELECT aluguel.aluguelequipamento AS 'FormaPagamento',
       COUNT(aluguelequipamento.idCliente) AS 'QuantidadeClientes'
FROM aluguelequipamento
LEFT JOIN aluguelequipamento
ON aluguelequipamento.idCliente = aluguelequipamento.idAluguel
GROUP BY aluguelequipamento.valorEquipamento
ORDER BY Quanidade de Clientes DESC;

/*8.Listar quanto a barraca faturou por dia, em cada um dos dias do mês de dezembro apenas.*/

SELECT DATE(dataHoraRetirada) AS Dia,
SUM(valorPago) AS Faturamento
FROM aluguel
Where dataHoraRetirada BETWEEN '2024-12-01 00:00:00' AND '2024-12-31 23:59:59'
GROUP BY dia
ORDER BY dia

/*9.Excluir o aluguel e todas as referências a ele criadas no item 1. Se tentar excluir direto da tabela aluguel teremos um problema? Por que isto ocorre? Como resolver (escrever o código usado)?*/

/* No exercício 1 foi realizado um update na tabela aluguel e na tabela aluguelequipamento,
para excluir será necessário primeiro excluir na tabela aluguelequipamento e depois na tabela aluguel para não ferir a integridade. Não é permitido a exclusão. */ 


DELETE FROM aluguelequipamento
WHERE idAluguelEquipamento = 5
DELETE FROM aluguel
WHERE idAluguel = 9

/* 10.Listar todos os equipamentos que tiveram a quantidade de aluguéis inferiores a 5 unidades, durante o mês de DEZ24. */
SELECT 
    equipamento.nomeEquipamento,
    COUNT(aluguelequipamento.idAluguel) AS qtdAlugueis
FROM equipamento
LEFT JOIN aluguelequipamento 
    ON aluguelequipamento.idEquipamento = equipamento.idEquipamento
LEFT JOIN aluguel 
    ON aluguel.idAluguel = aluguelequipamento.idAluguel
WHERE aluguel.dataHoraRetirada BETWEEN '2024-12-01' AND '2024-12-31'
GROUP BY equipamento.nomeEquipamento
HAVING COUNT(aluguelequipamento.idAluguel) < 5
ORDER BY qtdAlugueis