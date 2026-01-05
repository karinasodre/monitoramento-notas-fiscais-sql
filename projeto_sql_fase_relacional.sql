-- O desafio de hoje foi criar um código usando o comando JOIN para mostrar os dados das colunas nota_fiscal, divergencia e tipo_divergencia com a cidade dos fornecedores.--
-- No entanto, não havia uma chave estrangeira que conectasse ambas tabelas. Por isso, deletei a tabela 'recebimento' e a criei novamente com a chave primária, o intuito foi normalizar os dados.--
DROP TABLE IF EXISTS recebimento

CREATE TABLE Recebimento
    (id_recebimento INTEGER PRIMARY KEY AUTOINCREMENT,
    id_fornecedor INTEGER,
    nota_fiscal TEXT,
    data_recebimento TEXT,
    divergencia TEXT,
    tipo_divergencia TEXT);

INSERT INTO Recebimento (id_fornecedor, nota_fiscal, data_recebimento, divergencia, tipo_divergencia)
SELECT f.id_fornecedor, b.nota_fiscal, b.data_recebimento, b.divergencia, b.tipo_divergencia
FROM base_notas_fiscais b
INNER JOIN Fornecedores f ON b.fornecedor = f.nome_fantasia;

-- Após recriar a tabela 'recebimento' com os dados corretos, foi possível trazer a cidade dos fornecedores para os dados da tabela 'recebimento'.

SELECT r.nota_fiscal,
       r.divergencia,
       r.tipo_divergencia,
       f.cidade
FROM recebimento r
JOIN fornecedores f ON r.id_fornecedor = f.id_fornecedor

-- Comando SELECT e EXCEPT foram usados para validar os dados da nova tabela --

SELECT CAST(b.nota_fiscal AS TEXT)
FROM base_notas_fiscais b
INTERSECT
SELECT r.nota_fiscal
FROM recebimento r

SELECT CAST(b.nota_fiscal AS TEXT)
FROM base_notas_fiscais b
EXCEPT
SELECT r.nota_fiscal
FROM recebimento r
