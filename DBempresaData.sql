CREATE DATABASE dbEmpresa;
USE dbEmpresa;
CREATE TABLE funcao (
    id_funcao INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    salario DEC(6,2)
    );

INSERT INTO funcao(nome, salario)
VALUES ('Tadeu', 1500.00),
       ('Ylane',1200.00),
       ('Julian', 1000.00),
       ('Ewerton', 1000.00),
       ('Joao', 800.00),
       ('Celestino', 1500.00),
        ('Leandro',1220.00);

SELECT * FROM funcao;

CREATE TABLE setor(
    id_setor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    setor VARCHAR(40)
);

INSERT INTO setor(setor)
VALUES ('Desenvolvimento'),
       ('Manutencao'),
       ('Financeiro');

SELECT * FROM setor;

ALTER TABLE funcao ADD COLUMN id_setor INT;
ALTER TABLE funcao MODIFY id_setor INT, ADD CONSTRAINT FOREIGN KEY (id_setor) REFERENCES setor(ID_SETOR);

-- Atualizar salario
UPDATE funcao SET salario = 1200 WHERE dbempresa.funcao.id_setor;
UPDATE funcao SET funcao.id_setor = 2 WHERE funcao.id_funcao = 6;
SELECT * FROM funcao;

SELECT nome, setor
FROM funcao
INNER JOIN setor
ON funcao.id_setor = setor.id_setor;

