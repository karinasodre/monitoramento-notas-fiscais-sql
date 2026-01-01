-- 1. Identificar todos os fornecedores únicos da base
SELECT DISTINCT fornecedor
FROM base_notas_fiscais;

-- 2. Ranking de divergências por maior volume (qntd_faturada)
SELECT nota_fiscal, divergencia, qntd_faturada
FROM base_notas_fiscais
WHERE divergencia = "Sim"
ORDER BY qntd_faturada DESC;

-- 3. Monitoramento de divergências específicas (Atraso/Fiscal) por fornecedor
SELECT *
FROM base_notas_fiscais
WHERE tipo_divergencia IN ('Atraso', 'Fiscal')
     AND fornecedor = "Indústrias Sul";
