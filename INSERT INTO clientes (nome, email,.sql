INSERT INTO clientes (nome, email, telefone, data_cadastro) VALUES
('João Silva', 'joao@email.com', '11999990000', '2024-01-10'),
('Maria Souza', 'maria@email.com', '11988887777', '2024-02-15');

INSERT INTO produtos (nome, preco, categoria) VALUES
('Notebook', 3500.00, 'Informática'),
('Mouse', 80.00, 'Acessórios');

INSERT INTO pedidos (cliente_id, data_pedido, status) VALUES
(1, '2024-03-01', 'Finalizado'),
(2, '2024-03-05', 'Finalizado');

INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(1, 1, 1, 3500.00),
(1, 2, 2, 80.00),
(2, 2, 1, 80.00);
