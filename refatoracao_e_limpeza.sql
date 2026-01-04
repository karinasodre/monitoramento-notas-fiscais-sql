CREATE TABLE Fornecedores (
    id_fornecedor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_fantasia TEXT NOT NULL,
    cnpj TEXT DEFAULT '00.000.000/0001-00',
    cidade TEXT DEFAULT 'Rio de Janeiro'
);
INSERT INTO Fornecedores (nome_fantasia)
SELECT DISTINCT Fornecedor 
FROM base_notas_fiscais;

CREATE TABLE Recebimento (
    id_recebimento INTEGER PRIMARY KEY AUTOINCREMENT,
    nota_fiscal TEXT,
    data_recebimento DATE,
    divergencia TEXT,
    tipo_divergencia TEXT
);

INSERT INTO Recebimento (nota_fiscal, data_recebimento, divergencia, tipo_divergencia)
SELECT DISTINCT 
    nota_fiscal, 
    data_recebimento, 
    divergencia, 
    tipo_divergencia
FROM base_notas_fiscais;