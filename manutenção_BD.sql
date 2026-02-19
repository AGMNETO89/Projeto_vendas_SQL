-- Atualizar cliente
UPDATE clientes
SET telefone = '11977776666'
WHERE id = 1;

-- Inativar produto
UPDATE produtos
SET ativo = 0
WHERE id = 2;

-- Exemplo com segurança
START TRANSACTION;

DELETE FROM pedidos
WHERE status = 'Cancelado';

ROLLBACK;
-- COMMIT;