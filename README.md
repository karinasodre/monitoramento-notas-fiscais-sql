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

## Jornada de Aprendizado
- **Dia 1:** Configuração de ambiente e importação de base de dados bruta (40 registros).
- **Dia 2:** ✅ Concluído. Estrutura básica de consultas e filtros.
- **Dia 3:** ✅ Concluído. Prática intensiva de lógica booleana e operadores no curso da FGV.
- **Dia 5:** ✅ Concluído. Finalização do Módulo 1 (FGV). Implementação de scripts reais para identificar fornecedores únicos (`DISTINCT`), priorizar grandes volumes de carga (`ORDER BY DESC`) e auditar tipos específicos de divergência (`IN`).
