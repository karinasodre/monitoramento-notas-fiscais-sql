# Monitoramento e Análise de Notas Fiscais com SQL

## Objetivo do Projeto
Esse projeto foca no acompanhamento e monitoramento de notas fiscais. O objetivo é identificar divergências entre pedidos de compra (PO) e faturas recebidas, garantindo a integridade dos dados logísticos e evitando gargalos no ato do recebimento do material.

## Ferramentas
- **Banco de Dados:** SQLite
- **Ferramenta de Gestão:** DBeaver
- **Linguagem:** SQL (DQL e DML)

## Arquivos do Projeto
- `meu_projeto_dados.db`: Base de dados operacional utilizada nos testes.
- `scripts_monitoramento_v1.sql`: Scripts de auditoria (Ranking de Volume, Fornecedores Únicos e Filtros de Erros).
- `refatoracao_e_limpeza.sql`: Nessa etapa, criei duas tabelas (Fornecedores e Recebimento) para construir um modelo relacional. Realizei um tratamento de dados com o comando SELECT DISTINCT, pois identifiquei que a base original possuía duplicatas propositais; reduzi o volume de 96 registros brutos para 37 registros únicos e confiáveis.
- `projeto_sql_fase_relacional.sql`: Script de implementação da arquitetura relacional. Contém a criação da tabela Recebimento com Chave Estrangeira (id_fornecedor), migração de dados via INSERT INTO ... SELECT e testes de integridade de dados usando operadores de conjuntos.

## Jornada de Aprendizado
- **Dia 1:** Configuração de ambiente e importação de base de dados bruta (96 registros brutos tratados para 37 registros únicos).
- **Dia 2:** ✅ Concluído. Estrutura básica de consultas e filtros.
- **Dia 3:** ✅ Concluído. Prática intensiva de lógica booleana e operadores no curso da FGV.
- **Dia 5:** ✅ Concluído. Finalização do Módulo 1 (FGV). Implementação de scripts reais para identificar fornecedores únicos (`DISTINCT`), priorizar grandes volumes de carga (`ORDER BY DESC`) e auditar tipos específicos de divergência (`IN`).
- **Dia 7:** ✅ Concluído. Evolução para Modelo Relacional. Criação de tabelas de Fornecedores e Recebimento, com tratamento de 59 duplicatas via SQL (DISTINCT).
- **Dia 8:** ✅ Concluído. Finalização do Módulo 2 (FGV). Implementação da estrutura relacional completa. Aplicação de JOIN para cruzamento de dados de fornecedores e recebimentos. Uso de operações de conjuntos (INTERSECT e EXCEPT) com CAST para garantir 100% de integridade na migração dos dados.
