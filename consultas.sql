

SELECT * FROM clientes;

SELECT
    p.id AS pedido,
    c.nome AS cliente,
    p.data_pedido,
    p.status
FROM pedidos p
INNER JOIN clientes c ON p.cliente_id = c.id;

SELECT
    p.id AS pedido,
    SUM(i.quantidade * i.preco_unitario) AS total_pedido
FROM pedidos p
INNER JOIN itens_pedido i ON p.id = i.pedido_id
GROUP BY p.id
ORDER BY total_pedido DESC;

SELECT
    c.nome,
    SUM(i.quantidade * i.preco_unitario) AS total_gasto
FROM clientes c
INNER JOIN pedidos p ON c.id = p.cliente_id
INNER JOIN itens_pedido i ON p.id = i.pedido_id
GROUP BY c.nome
ORDER BY total_gasto DESC;