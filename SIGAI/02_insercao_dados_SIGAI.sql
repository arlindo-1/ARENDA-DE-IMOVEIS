-- SIGAI - Sistema de Gestao de Arrendamento de Imoveis
-- Script de insercao de dados demonstrativos para trabalho academico.
-- Contem pelo menos 20 registos em cada uma das sete tabelas.
-- Execute depois de criar as tabelas e selecione a base de dados sigai.
-- AVISO: execute este ficheiro apenas uma vez numa base de dados vazia,
-- pois os IDs, emails e documentos sao definidos para este conjunto de dados.
-- As senhas abaixo sao marcadores demonstrativos, nao hashes reais para login.
USE sigai;

-- 1. UTILIZADORES (20 registos)
INSERT INTO UTILIZADORES (id_utilizador, nome, email, senha_hash, perfil, estado) VALUES
(1, 'Amelia Mondlane', 'utilizador01@sigai.co.mz', 'HASH_DEMO_01', 'Administrador', 'Ativo'),
(2, 'Carlos Mucavele', 'utilizador02@sigai.co.mz', 'HASH_DEMO_02', 'Gestor', 'Ativo'),
(3, 'Celina Tembe', 'utilizador03@sigai.co.mz', 'HASH_DEMO_03', 'Gestor', 'Ativo'),
(4, 'Domingos Macuacua', 'utilizador04@sigai.co.mz', 'HASH_DEMO_04', 'Gestor', 'Ativo'),
(5, 'Ernesto Nhantumbo', 'utilizador05@sigai.co.mz', 'HASH_DEMO_05', 'Gestor', 'Ativo'),
(6, 'Fatima Bila', 'utilizador06@sigai.co.mz', 'HASH_DEMO_06', 'Gestor', 'Ativo'),
(7, 'Gabriel Chissano', 'utilizador07@sigai.co.mz', 'HASH_DEMO_07', 'Atendente', 'Ativo'),
(8, 'Helena Matola', 'utilizador08@sigai.co.mz', 'HASH_DEMO_08', 'Atendente', 'Ativo'),
(9, 'Ismael Cossa', 'utilizador09@sigai.co.mz', 'HASH_DEMO_09', 'Atendente', 'Ativo'),
(10, 'Joana Sitoe', 'utilizador10@sigai.co.mz', 'HASH_DEMO_10', 'Atendente', 'Ativo'),
(11, 'Katia Mabote', 'utilizador11@sigai.co.mz', 'HASH_DEMO_11', 'Atendente', 'Ativo'),
(12, 'Luis Muianga', 'utilizador12@sigai.co.mz', 'HASH_DEMO_12', 'Atendente', 'Ativo'),
(13, 'Marta Massango', 'utilizador13@sigai.co.mz', 'HASH_DEMO_13', 'Atendente', 'Ativo'),
(14, 'Nelson Matsinhe', 'utilizador14@sigai.co.mz', 'HASH_DEMO_14', 'Atendente', 'Ativo'),
(15, 'Olivia Magaia', 'utilizador15@sigai.co.mz', 'HASH_DEMO_15', 'Atendente', 'Ativo'),
(16, 'Paulo Machel', 'utilizador16@sigai.co.mz', 'HASH_DEMO_16', 'Atendente', 'Ativo'),
(17, 'Rosa Joaquim', 'utilizador17@sigai.co.mz', 'HASH_DEMO_17', 'Atendente', 'Ativo'),
(18, 'Samuel Baloi', 'utilizador18@sigai.co.mz', 'HASH_DEMO_18', 'Atendente', 'Ativo'),
(19, 'Teresa Langa', 'utilizador19@sigai.co.mz', 'HASH_DEMO_19', 'Atendente', 'Ativo'),
(20, 'Vasco Zandamela', 'utilizador20@sigai.co.mz', 'HASH_DEMO_20', 'Atendente', 'Ativo');

-- 2. PROPRIETARIOS (20 registos)
INSERT INTO PROPRIETARIOS (id_proprietario, nome, telefone, email, endereco) VALUES
(1, 'Amelia Mondlane', '820000001', 'proprietario01@example.com', 'Bairro Central, Maputo'),
(2, 'Carlos Mucavele', '830000002', 'proprietario02@example.com', 'Bairro Central, Matola'),
(3, 'Celina Tembe', '840000003', 'proprietario03@example.com', 'Bairro Central, Beira'),
(4, 'Domingos Macuacua', '850000004', 'proprietario04@example.com', 'Bairro Central, Nampula'),
(5, 'Ernesto Nhantumbo', '860000005', 'proprietario05@example.com', 'Bairro Central, Chimoio'),
(6, 'Fatima Bila', '870000006', 'proprietario06@example.com', 'Bairro Central, Xai-Xai'),
(7, 'Gabriel Chissano', '820000007', 'proprietario07@example.com', 'Bairro Central, Maxixe'),
(8, 'Helena Matola', '830000008', 'proprietario08@example.com', 'Bairro Central, Tete'),
(9, 'Ismael Cossa', '840000009', 'proprietario09@example.com', 'Bairro Central, Quelimane'),
(10, 'Joana Sitoe', '850000010', 'proprietario10@example.com', 'Bairro Central, Pemba'),
(11, 'Katia Mabote', '860000011', 'proprietario11@example.com', 'Bairro Central, Maputo'),
(12, 'Luis Muianga', '870000012', 'proprietario12@example.com', 'Bairro Central, Matola'),
(13, 'Marta Massango', '820000013', 'proprietario13@example.com', 'Bairro Central, Beira'),
(14, 'Nelson Matsinhe', '830000014', 'proprietario14@example.com', 'Bairro Central, Nampula'),
(15, 'Olivia Magaia', '840000015', 'proprietario15@example.com', 'Bairro Central, Chimoio'),
(16, 'Paulo Machel', '850000016', 'proprietario16@example.com', 'Bairro Central, Xai-Xai'),
(17, 'Rosa Joaquim', '860000017', 'proprietario17@example.com', 'Bairro Central, Maxixe'),
(18, 'Samuel Baloi', '870000018', 'proprietario18@example.com', 'Bairro Central, Tete'),
(19, 'Teresa Langa', '820000019', 'proprietario19@example.com', 'Bairro Central, Quelimane'),
(20, 'Vasco Zandamela', '830000020', 'proprietario20@example.com', 'Bairro Central, Pemba');

-- 3. INQUILINOS (20 registos)
INSERT INTO INQUILINOS (id_inquilino, nome, telefone, email, documento_identificacao) VALUES
(1, 'Afonso Mondlane', '820000021', 'inquilino01@example.com', 'DOC-DEMO-0001'),
(2, 'Berta Mucavele', '830000022', 'inquilino02@example.com', 'DOC-DEMO-0002'),
(3, 'Celso Tembe', '840000023', 'inquilino03@example.com', 'DOC-DEMO-0003'),
(4, 'Dina Macuacua', '850000024', 'inquilino04@example.com', 'DOC-DEMO-0004'),
(5, 'Elias Nhantumbo', '860000025', 'inquilino05@example.com', 'DOC-DEMO-0005'),
(6, 'Florinda Bila', '870000026', 'inquilino06@example.com', 'DOC-DEMO-0006'),
(7, 'Gildo Chissano', '820000027', 'inquilino07@example.com', 'DOC-DEMO-0007'),
(8, 'Ivone Matola', '830000028', 'inquilino08@example.com', 'DOC-DEMO-0008'),
(9, 'Jorge Cossa', '840000029', 'inquilino09@example.com', 'DOC-DEMO-0009'),
(10, 'Lidia Sitoe', '850000030', 'inquilino10@example.com', 'DOC-DEMO-0010'),
(11, 'Mauro Mabote', '860000031', 'inquilino11@example.com', 'DOC-DEMO-0011'),
(12, 'Nadia Muianga', '870000032', 'inquilino12@example.com', 'DOC-DEMO-0012'),
(13, 'Osvaldo Massango', '820000033', 'inquilino13@example.com', 'DOC-DEMO-0013'),
(14, 'Perpetua Matsinhe', '830000034', 'inquilino14@example.com', 'DOC-DEMO-0014'),
(15, 'Quirino Magaia', '840000035', 'inquilino15@example.com', 'DOC-DEMO-0015'),
(16, 'Rute Machel', '850000036', 'inquilino16@example.com', 'DOC-DEMO-0016'),
(17, 'Saide Joaquim', '860000037', 'inquilino17@example.com', 'DOC-DEMO-0017'),
(18, 'Tania Baloi', '870000038', 'inquilino18@example.com', 'DOC-DEMO-0018'),
(19, 'Ussene Langa', '820000039', 'inquilino19@example.com', 'DOC-DEMO-0019'),
(20, 'Vilma Zandamela', '830000040', 'inquilino20@example.com', 'DOC-DEMO-0020');

-- 4. IMOVEIS (20 registos, cada um ligado a um proprietario)
INSERT INTO IMOVEIS (id_imovel, id_proprietario, endereco, tipo, quartos, renda_mensal, estado) VALUES
(1, 1, 'Av. Julius Nyerere, n.º 101, Maputo', 'Apartamento', 3, 18000.00, 'Arrendado'),
(2, 2, 'Rua da Resistência, n.º 102, Matola', 'Moradia', 4, 22000.00, 'Arrendado'),
(3, 3, 'Av. Samora Machel, n.º 103, Beira', 'Vivenda', 1, 15000.00, 'Arrendado'),
(4, 4, 'Rua dos Continuadores, n.º 104, Nampula', 'Apartamento', 2, 25000.00, 'Arrendado'),
(5, 5, 'Av. Eduardo Mondlane, n.º 105, Chimoio', 'Loja', 0, 12000.00, 'Arrendado'),
(6, 6, 'Rua da Liberdade, n.º 106, Xai-Xai', 'Apartamento', 4, 20000.00, 'Arrendado'),
(7, 7, 'Av. Trabalho, n.º 107, Maxixe', 'Moradia', 1, 17500.00, 'Arrendado'),
(8, 8, 'Rua 25 de Junho, n.º 108, Tete', 'Vivenda', 2, 30000.00, 'Arrendado'),
(9, 9, 'Av. da Independência, n.º 109, Quelimane', 'Apartamento', 3, 16000.00, 'Arrendado'),
(10, 10, 'Rua do Mercado, n.º 110, Pemba', 'Loja', 0, 28000.00, 'Arrendado'),
(11, 11, 'Av. Julius Nyerere, n.º 111, Maputo', 'Apartamento', 1, 19000.00, 'Arrendado'),
(12, 12, 'Rua da Resistência, n.º 112, Matola', 'Moradia', 2, 24000.00, 'Arrendado'),
(13, 13, 'Av. Samora Machel, n.º 113, Beira', 'Vivenda', 3, 14000.00, 'Arrendado'),
(14, 14, 'Rua dos Continuadores, n.º 114, Nampula', 'Apartamento', 4, 32000.00, 'Arrendado'),
(15, 15, 'Av. Eduardo Mondlane, n.º 115, Chimoio', 'Loja', 0, 21000.00, 'Arrendado'),
(16, 16, 'Rua da Liberdade, n.º 116, Xai-Xai', 'Apartamento', 2, 26000.00, 'Arrendado'),
(17, 17, 'Av. Trabalho, n.º 117, Maxixe', 'Moradia', 3, 15500.00, 'Arrendado'),
(18, 18, 'Rua 25 de Junho, n.º 118, Tete', 'Vivenda', 4, 35000.00, 'Arrendado'),
(19, 19, 'Av. da Independência, n.º 119, Quelimane', 'Apartamento', 1, 17000.00, 'Arrendado'),
(20, 20, 'Rua do Mercado, n.º 120, Pemba', 'Loja', 0, 23000.00, 'Arrendado');

-- 5. CONTRATOS (20 registos)
INSERT INTO CONTRATOS (id_contrato, id_imovel, id_inquilino, data_inicio, data_fim, valor_renda, estado) VALUES
(1, 1, 1, '2025-01-01', '2027-12-31', 18000.00, 'Ativo'),
(2, 2, 2, '2025-01-01', '2027-12-31', 22000.00, 'Ativo'),
(3, 3, 3, '2025-01-01', '2027-12-31', 15000.00, 'Ativo'),
(4, 4, 4, '2025-01-01', '2027-12-31', 25000.00, 'Ativo'),
(5, 5, 5, '2025-01-01', '2027-12-31', 12000.00, 'Ativo'),
(6, 6, 6, '2025-01-01', '2027-12-31', 20000.00, 'Ativo'),
(7, 7, 7, '2025-01-01', '2027-12-31', 17500.00, 'Ativo'),
(8, 8, 8, '2025-01-01', '2027-12-31', 30000.00, 'Ativo'),
(9, 9, 9, '2025-01-01', '2027-12-31', 16000.00, 'Ativo'),
(10, 10, 10, '2025-01-01', '2027-12-31', 28000.00, 'Ativo'),
(11, 11, 11, '2025-01-01', '2027-12-31', 19000.00, 'Ativo'),
(12, 12, 12, '2025-01-01', '2027-12-31', 24000.00, 'Ativo'),
(13, 13, 13, '2025-01-01', '2027-12-31', 14000.00, 'Ativo'),
(14, 14, 14, '2025-01-01', '2027-12-31', 32000.00, 'Ativo'),
(15, 15, 15, '2025-01-01', '2027-12-31', 21000.00, 'Ativo'),
(16, 16, 16, '2025-01-01', '2027-12-31', 26000.00, 'Ativo'),
(17, 17, 17, '2025-01-01', '2027-12-31', 15500.00, 'Ativo'),
(18, 18, 18, '2025-01-01', '2027-12-31', 35000.00, 'Ativo'),
(19, 19, 19, '2025-01-01', '2027-12-31', 17000.00, 'Ativo'),
(20, 20, 20, '2025-01-01', '2027-12-31', 23000.00, 'Ativo');

-- 6. PARCELAS (40 registos: duas parcelas por contrato)
INSERT INTO PARCELAS (id_contrato, numero_parcela, data_vencimento, valor, estado) VALUES
(1, 1, '2026-09-05', 18000.00, 'Paga'),
(1, 2, '2026-10-05', 18000.00, 'Paga'),
(2, 1, '2026-09-05', 22000.00, 'Paga'),
(2, 2, '2026-10-05', 22000.00, 'Paga'),
(3, 1, '2026-09-05', 15000.00, 'Paga'),
(3, 2, '2026-10-05', 15000.00, 'Paga'),
(4, 1, '2026-09-05', 25000.00, 'Paga'),
(4, 2, '2026-10-05', 25000.00, 'Paga'),
(5, 1, '2026-09-05', 12000.00, 'Paga'),
(5, 2, '2026-10-05', 12000.00, 'Paga'),
(6, 1, '2026-09-05', 20000.00, 'Paga'),
(6, 2, '2026-10-05', 20000.00, 'Paga'),
(7, 1, '2026-09-05', 17500.00, 'Paga'),
(7, 2, '2026-10-05', 17500.00, 'Paga'),
(8, 1, '2026-09-05', 30000.00, 'Paga'),
(8, 2, '2026-10-05', 30000.00, 'Paga'),
(9, 1, '2026-09-05', 16000.00, 'Paga'),
(9, 2, '2026-10-05', 16000.00, 'Paga'),
(10, 1, '2026-09-05', 28000.00, 'Paga'),
(10, 2, '2026-10-05', 28000.00, 'Paga'),
(11, 1, '2026-09-05', 19000.00, 'Paga'),
(11, 2, '2026-10-05', 19000.00, 'Paga'),
(12, 1, '2026-09-05', 24000.00, 'Paga'),
(12, 2, '2026-10-05', 24000.00, 'Paga'),
(13, 1, '2026-09-05', 14000.00, 'Paga'),
(13, 2, '2026-10-05', 14000.00, 'Paga'),
(14, 1, '2026-09-05', 32000.00, 'Paga'),
(14, 2, '2026-10-05', 32000.00, 'Paga'),
(15, 1, '2026-09-05', 21000.00, 'Paga'),
(15, 2, '2026-10-05', 21000.00, 'Paga'),
(16, 1, '2026-09-05', 26000.00, 'Paga'),
(16, 2, '2026-10-05', 26000.00, 'Paga'),
(17, 1, '2026-09-05', 15500.00, 'Paga'),
(17, 2, '2026-10-05', 15500.00, 'Paga'),
(18, 1, '2026-09-05', 35000.00, 'Paga'),
(18, 2, '2026-10-05', 35000.00, 'Paga'),
(19, 1, '2026-09-05', 17000.00, 'Paga'),
(19, 2, '2026-10-05', 17000.00, 'Paga'),
(20, 1, '2026-09-05', 23000.00, 'Paga'),
(20, 2, '2026-10-05', 23000.00, 'Paga');

-- 7. PAGAMENTOS (40 registos, um pagamento completo por parcela)
INSERT INTO PAGAMENTOS (id_pagamento, id_contrato, numero_parcela, data_pagamento, valor_pago, metodo_pagamento, referencia) VALUES
(1, 1, 1, '2026-09-05', 18000.00, 'M-Pesa', 'REC-2026-0001'),
(2, 1, 2, '2026-10-05', 18000.00, 'e-Mola', 'REC-2026-0002'),
(3, 2, 1, '2026-09-05', 22000.00, 'Transferencia bancaria', 'REC-2026-0003'),
(4, 2, 2, '2026-10-05', 22000.00, 'Dinheiro', 'REC-2026-0004'),
(5, 3, 1, '2026-09-05', 15000.00, 'M-Pesa', 'REC-2026-0005'),
(6, 3, 2, '2026-10-05', 15000.00, 'e-Mola', 'REC-2026-0006'),
(7, 4, 1, '2026-09-05', 25000.00, 'Transferencia bancaria', 'REC-2026-0007'),
(8, 4, 2, '2026-10-05', 25000.00, 'Dinheiro', 'REC-2026-0008'),
(9, 5, 1, '2026-09-05', 12000.00, 'M-Pesa', 'REC-2026-0009'),
(10, 5, 2, '2026-10-05', 12000.00, 'e-Mola', 'REC-2026-0010'),
(11, 6, 1, '2026-09-05', 20000.00, 'Transferencia bancaria', 'REC-2026-0011'),
(12, 6, 2, '2026-10-05', 20000.00, 'Dinheiro', 'REC-2026-0012'),
(13, 7, 1, '2026-09-05', 17500.00, 'M-Pesa', 'REC-2026-0013'),
(14, 7, 2, '2026-10-05', 17500.00, 'e-Mola', 'REC-2026-0014'),
(15, 8, 1, '2026-09-05', 30000.00, 'Transferencia bancaria', 'REC-2026-0015'),
(16, 8, 2, '2026-10-05', 30000.00, 'Dinheiro', 'REC-2026-0016'),
(17, 9, 1, '2026-09-05', 16000.00, 'M-Pesa', 'REC-2026-0017'),
(18, 9, 2, '2026-10-05', 16000.00, 'e-Mola', 'REC-2026-0018'),
(19, 10, 1, '2026-09-05', 28000.00, 'Transferencia bancaria', 'REC-2026-0019'),
(20, 10, 2, '2026-10-05', 28000.00, 'Dinheiro', 'REC-2026-0020'),
(21, 11, 1, '2026-09-05', 19000.00, 'M-Pesa', 'REC-2026-0021'),
(22, 11, 2, '2026-10-05', 19000.00, 'e-Mola', 'REC-2026-0022'),
(23, 12, 1, '2026-09-05', 24000.00, 'Transferencia bancaria', 'REC-2026-0023'),
(24, 12, 2, '2026-10-05', 24000.00, 'Dinheiro', 'REC-2026-0024'),
(25, 13, 1, '2026-09-05', 14000.00, 'M-Pesa', 'REC-2026-0025'),
(26, 13, 2, '2026-10-05', 14000.00, 'e-Mola', 'REC-2026-0026'),
(27, 14, 1, '2026-09-05', 32000.00, 'Transferencia bancaria', 'REC-2026-0027'),
(28, 14, 2, '2026-10-05', 32000.00, 'Dinheiro', 'REC-2026-0028'),
(29, 15, 1, '2026-09-05', 21000.00, 'M-Pesa', 'REC-2026-0029'),
(30, 15, 2, '2026-10-05', 21000.00, 'e-Mola', 'REC-2026-0030'),
(31, 16, 1, '2026-09-05', 26000.00, 'Transferencia bancaria', 'REC-2026-0031'),
(32, 16, 2, '2026-10-05', 26000.00, 'Dinheiro', 'REC-2026-0032'),
(33, 17, 1, '2026-09-05', 15500.00, 'M-Pesa', 'REC-2026-0033'),
(34, 17, 2, '2026-10-05', 15500.00, 'e-Mola', 'REC-2026-0034'),
(35, 18, 1, '2026-09-05', 35000.00, 'Transferencia bancaria', 'REC-2026-0035'),
(36, 18, 2, '2026-10-05', 35000.00, 'Dinheiro', 'REC-2026-0036'),
(37, 19, 1, '2026-09-05', 17000.00, 'M-Pesa', 'REC-2026-0037'),
(38, 19, 2, '2026-10-05', 17000.00, 'e-Mola', 'REC-2026-0038'),
(39, 20, 1, '2026-09-05', 23000.00, 'Transferencia bancaria', 'REC-2026-0039'),
(40, 20, 2, '2026-10-05', 23000.00, 'Dinheiro', 'REC-2026-0040');

-- Verificacao rapida: contar registos em cada tabela.
SELECT 'UTILIZADORES' AS tabela, COUNT(*) AS total FROM UTILIZADORES
UNION ALL SELECT 'PROPRIETARIOS', COUNT(*) FROM PROPRIETARIOS
UNION ALL SELECT 'INQUILINOS', COUNT(*) FROM INQUILINOS
UNION ALL SELECT 'IMOVEIS', COUNT(*) FROM IMOVEIS
UNION ALL SELECT 'CONTRATOS', COUNT(*) FROM CONTRATOS
UNION ALL SELECT 'PARCELAS', COUNT(*) FROM PARCELAS
UNION ALL SELECT 'PAGAMENTOS', COUNT(*) FROM PAGAMENTOS;
