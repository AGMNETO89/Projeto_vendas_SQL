CREATE DATABASE empresa;
use empresa

CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT,
    email VARCHAR(100)
);

INSERT INTO clientes (nome, idade, email)
VALUES ('João', 30, 'joão@email.com');

INSERT INTO clientes (nome, idade, email)
VALUES ('Ana',25, 'ana@email.com'),
	   ('Henrique',35, NULL);
       
       SELECT * FROM clientes; 
       
ALTER TABLE clientes
ADD data_nascimento Date,
ADD telefone VARCHAR(20),
ADD cidade VARCHAR (50),
ADD estado VARCHAR (2),
ADD ativo BOOLEAN;
  SELECT * FROM clientes;
    INSERT INTO clientes (nome, idade, email, data_nascimento, telefone, cidade, estado, ativo)
VALUES ('João', 30, 'joão@email.com', '1989-06-22', 119999999999, 'Santo Andre', 'SP', 1);

  SELECT * FROM clientes;
  
UPDATE clientes
SET nome = 'João da Silva'
WHERE id = 1;


UPDATE clientes
SET email = 'joaosilva@email.com'
WHERE id = 1;

  SELECT * FROM clientes;
  UPDATE clientes
SET data_nascimento = '1990-01-26'
WHERE id = 1;
 SELECT * FROM clientes;
 
   UPDATE clientes
SET telefone = '87 999990000'
WHERE id = 1;
 SELECT * FROM clientes;
 
    UPDATE clientes
SET cidade = 'Recife'
WHERE id = 1;

   UPDATE clientes
SET estado = 'PE'
WHERE id = 1;

 SELECT * FROM clientes;
 
    UPDATE clientes
SET ativo = 2
WHERE id = 1;

 SELECT * FROM clientes;
     UPDATE clientes
SET ativo = 1
WHERE id = 2;
update clientes
SET estado = 'SP'
WHERE id = 2;

update clientes
SET cidade = 'São caetano'
WHERE id = 2;

 SELECT * FROM clientes;
 
UPDATE clientes
SET telefone = '11 999887788',
    data_nascimento = '1970-02-27'
WHERE id = 2;

 SELECT * FROM clientes;
 
 UPDATE clientes
 SET email = 'henrique@email.com',
     data_nascimento = '1989-08-22',
     telefone = '11 988565687',
     cidade = 'Osasco',
     estado = 'SP',
     ativo = 1
     WHERE id = 3;
     
      SELECT * FROM clientes;
      
      CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT NOT NULL,
    data_pedido DATE NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) DEFAULT 'Aberto',

    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO pedidos (cliente_id, data_pedido, valor)
VALUES (1, '2024-02-16', 250.00);

SELECT 
    c.nome,
    p.data_pedido,
    p.valor,
    p.status
FROM clientes c
INNER JOIN pedidos p ON p.cliente_id = c.id;


== cadastra o pedido para o cliente;

INSERT INTO pedidos (cliente_id, data_pedido, valor)
VALUES (3, '2024-02-16', 2000.00);


== verifica o informações ;

SELECT 
    c.nome,
    p.data_pedido,
    p.valor,
    p.status
FROM clientes c
INNER JOIN pedidos p ON p.cliente_id = c.id;

CREATE TABLE itens_pedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pedido_id INT NOT NULL,
    produto VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    valor_unitario DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (pedido_id) REFERENCES pedidos(id)
    );
    
    INSERT INTO itens_pedido (pedido_id, produto, quantidade, valor_unitario)
VALUES 
(1, 'Mouse', 1, 50.00),
(1, 'Teclado', 1, 150.00),
(1, 'headset', 1, 50.00);

SELECT * 
FROM itens_pedido
WHERE pedido_id = 1;

    INSERT INTO itens_pedido (pedido_id, produto, quantidade, valor_unitario)
VALUES 
(2, 'Mouse', 1, 50.00),
(2, 'Teclado', 1, 150.00),
(2, 'headset', 1, 50.00);

SELECT * 
FROM itens_pedido
WHERE pedido_id = 2;
    
    SELECT
    c.nome AS cliente,
    p.id AS pedido,
    i.produto,
    i.quantidade,
    i.valor_unitario,
    (i.quantidade * i.valor_unitario) AS total_item
FROM clientes c
INNER JOIN pedidos p ON p.cliente_id = c.id
INNER JOIN itens_pedido i ON i.pedido_id = p.id;
    
DESCRIBE itens_pedido;

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL,
    estoque INT DEFAULT 0,
    ativo BOOLEAN DEFAULT 1,
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

DESCRIBE produtos;
 

