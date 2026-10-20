-- SIGAI - Sistema de Gestão de Arrendamento de Imóveis
-- Ficheiro: 02_manipulacao_SIGAI.sql
-- Antes de executar: seleciona a base de dados sigai no phpMyAdmin.
-- NOTA: o teste de integridade no fim está comentado para não
-- interromper a execução normal. Executa-o separadamente.

USE sigai;

-- =====================================================
-- A) 3 consultas SELECT com WHERE e ORDER BY
-- =====================================================

-- SELECT 1: imóveis com renda até 15.000 MT
SELECT id_imovel, endereco, tipo, renda_mensal, estado
FROM IMOVEIS
WHERE renda_mensal <= 15000
ORDER BY renda_mensal ASC;

-- SELECT 2: imóveis disponíveis por ordem de endereço
SELECT id_imovel, endereco, tipo, quartos, renda_mensal, estado
FROM IMOVEIS
WHERE estado = 'Disponível'
ORDER BY endereco ASC;

-- SELECT 3: contratos terminados, do mais recente para o mais antigo
SELECT id_contrato, id_imovel, id_inquilino, data_inicio, data_fim,
       valor_renda, estado
FROM CONTRATOS
WHERE estado = 'Terminado'
ORDER BY data_fim DESC;


-- =====================================================
-- B) 2 consultas com JOIN
-- =====================================================

-- JOIN 1: imóveis e respetivos proprietários
SELECT i.id_imovel, i.endereco AS endereco_imovel, i.tipo,
       i.renda_mensal, p.nome AS nome_proprietario,
       p.telefone AS telefone_proprietario
FROM IMOVEIS AS i
INNER JOIN PROPRIETARIOS AS p
    ON i.id_proprietario = p.id_proprietario
ORDER BY p.nome ASC;

-- JOIN 2: contratos, imóveis e inquilinos
SELECT c.id_contrato, i.endereco AS endereco_imovel,
       q.nome AS nome_inquilino, q.telefone AS telefone_inquilino,
       c.data_inicio, c.data_fim, c.valor_renda,
       c.estado AS estado_contrato
FROM CONTRATOS AS c
INNER JOIN IMOVEIS AS i
    ON c.id_imovel = i.id_imovel
INNER JOIN INQUILINOS AS q
    ON c.id_inquilino = q.id_inquilino
ORDER BY c.data_inicio DESC;


-- =====================================================
-- C) 2 comandos UPDATE
-- =====================================================

-- UPDATE 1: colocar o imóvel 1 em manutenção
UPDATE IMOVEIS
SET estado = 'Manutenção'
WHERE id_imovel = 1;

-- Confirmar a alteração
SELECT id_imovel, endereco, estado
FROM IMOVEIS
WHERE id_imovel = 1;

-- UPDATE 2: marcar a parcela 1 do contrato 1 como paga
UPDATE PARCELAS
SET estado = 'Paga'
WHERE id_contrato = 1
  AND numero_parcela = 1;

-- Confirmar a alteração
SELECT id_contrato, numero_parcela, valor, estado
FROM PARCELAS
WHERE id_contrato = 1
  AND numero_parcela = 1;


-- =====================================================
-- D) DELETE demonstrativo e seguro
-- Cria um pagamento de teste e depois apaga apenas esse
-- pagamento, sem apagar a parcela nem o contrato.
-- =====================================================

INSERT INTO PAGAMENTOS
(id_contrato, numero_parcela, data_pagamento, valor_pago,
 metodo_pagamento, referencia)
SELECT id_contrato, numero_parcela, CURRENT_DATE, 1.00,
       'Teste', 'SIGAI-TESTE-DELETE'
FROM PARCELAS
WHERE id_contrato = 1 AND numero_parcela = 1
LIMIT 1;

-- Verificar o pagamento de teste
SELECT *
FROM PAGAMENTOS
WHERE referencia = 'SIGAI-TESTE-DELETE';

-- Apagar apenas o pagamento de teste
DELETE FROM PAGAMENTOS
WHERE referencia = 'SIGAI-TESTE-DELETE';


-- =====================================================
-- E) Teste de integridade referencial
-- Este SELECT deve devolver 0. Depois, executa o INSERT
-- comentado abaixo separadamente. Espera-se que o MySQL
-- rejeite o registo por causa da chave estrangeira.
-- =====================================================

SELECT COUNT(*) AS proprietario_999999_existe
FROM PROPRIETARIOS
WHERE id_proprietario = 999999;

-- Executa este INSERT SEPARADAMENTE para testar o erro esperado:
-- INSERT INTO IMOVEIS
-- (id_proprietario, endereco, tipo, quartos, renda_mensal, estado)
-- VALUES
-- (999999, 'Rua de Teste, Casa 999999', 'Apartamento', 2, 12000.00, 'Disponível');
