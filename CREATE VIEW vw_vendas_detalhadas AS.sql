CREATE VIEW vw_vendas_detalhadas AS
SELECT
    c.nome AS cliente,
    pr.nome AS produto,
    pr.categoria,
    i.quantidade,
    i.preco_unitario,
    (i.quantidade * i.preco_unitario) AS total_item,
    p.data_pedido,
    p.status
FROM pedidos p
INNER JOIN clientes c ON p.cliente_id = c.id
INNER JOIN itens_pedido i ON p.id = i.pedido_id
INNER JOIN produtos pr ON i.produto_id = pr.id;

