-- 1️⃣ Cria o banco se não existir
CREATE DATABASE IF NOT EXISTS meu_banco
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_general_ci;

-- 2️⃣ Usa o banco
USE meu_banco;

-- 3️⃣ Cria a tabela clientes se não existir
CREATE TABLE IF NOT EXISTS clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(20),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 4️⃣ Limpa a tabela (reseta o AUTO_INCREMENT)
TRUNCATE TABLE clientes;

-- 5️⃣ Insere os 3 clientes
INSERT INTO clientes (nome, email, telefone) VALUES
('Roberto Cesar', 'roberto@example.com', '11999999999'),
('Maria Souza', 'maria@example.com', '11888888888'),
('Carlos Lima', 'carlos@example.com', '11777777777');

-- 6️⃣ Consulta para verificar os dados
SELECT * FROM clientes;
