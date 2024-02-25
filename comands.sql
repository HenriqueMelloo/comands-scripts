----------------------------
--//Lista de Comando SQL//--
----------------------------

--[SELECT]: Recupera dados de uma ou mais tabelas
SELECT * FROM tabela;

--[INSERT INTO]: Insere novos registros em uma tabela.
INSERT INTO tabela (colun01, colun02, colun03) VALUES ('John Doe', 30, 'IT');

--[UPDATE]: Atualiza os dados de registro existente em uma tabela.
UPDATE tabela SET department = 'RH' WHERE name = 'John Doe';

--[DELETE FROM]: Remove registro de uma tabela.
DELETE FROM tabela WHERE age > 60;

--[CREATE TABLE]: Cria uma nova tabela no banco de dados.
CREATE TABLE tabela (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50)
);

--[ALTER TABLE]: Modifica a estrutura de uma tabela existente (adicionando, removendo ou modificando colunas).
ALTER TABLE tabela ADD COLUMN salary DECIMAL(10,2);

--[DROP TABLE]: Remove uma tabela do banco de dados.
DROP TABLE tabela;

--[CREATE INDEX]: Cria um índice em uma tabela para acelerar consultas.
CREATE INDEX idx_name IN tabela (name);

--[DROP INDEX]: Remove um índice de uma tabela.
DROP INDEX idx_name ON tabela;

--[JOIN]: Combina dados de duas ou mais tabela com base em uma condição relacionada.
SELECT *
FROM tabela
JOIN department ON tabela.department_id = department.id

--------------------------------------------------
--// Exemplos diferentes tipos de JOIN em SQL //--
--------------------------------------------------

--[INNER JOIN]: Retornar registro que têm valores correspondentes em ambas as tabelas.
SELECT orders.order_id, customers.customer_name
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id;

--[LEFT JOIN] ou [LEFT OUTER JOIN]: Retorna todos os registros da tabela
--da esquerda (primeira tabela mencionada) e os registro correspondentes
--da tabela da direita (segunda tabela mencionada). Se não houver correnpondência,
--os resultado da tabela da direita terão valores NULL.
SELECT customers.customer_name, orders.order_id
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id;

--[RIGHT JOIN] ou [RIGHT OUTER JOIN]: Retorna todos os registros da tabela da direita
--(segunda tabela mecionada) e os registros correspondentes da esquerda (primeira tabela mencionada).
--Se não houver correspondência, os resultados da tabela da esquerda terão valores NULL.
select customers.customer_name, orders.order_id
FROM customers
RIGHT JOIN orders ON customers.customer_id = orders.customer_id;

--CROSS JOIN: Retorna o produto cartesiano de ambas as tabela, ou seja, combina cada linha da
--primeira tabela com cada linha da segunda tabela.
SELECT customers.customer_name, products.product_name
FROM customersCROS JOIN products;


