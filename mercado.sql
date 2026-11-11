--Questão 1
SELECT *
FROM fato_vendas
WHERE id_cliente = NULL
-- Questão 2
SELECT DISTINCT clientes
FROM fato_vendas
-- Questão 3
SELECT valor_total,
		SUM(valor) AS faturamento
FROM vendas
WHERE data_vendas >= '01-01-2025'
--Questão 4
SELECT DISTINCT marcas
FROM higiene
ORDER BY marcas ASC
-- Questão 5
SELECT AVG (valor_total) AS valor_medio
FROM fato_vendas
--Questão 6
SELECT *
FROM bebidas
WHERE preco_tabela > 10
--Questão 7
SELECT *
FROM produto
WHERE 