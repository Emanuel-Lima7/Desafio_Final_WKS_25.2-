USE concessionaria;

INSERT INTO Funcionario (nome, CPF, cargo, telefone, email) VALUES
('Carlos Andrade', '11122233344', 'Gerente', '83999887766', 'carlos.andrade@velozcar.com'),
('Beatriz Lima', '22233344455', 'Atendente', '83988776655', 'beatriz.lima@velozcar.com'),
('Roberto Souza', '33344455566', 'Atendente', '83977665544', 'roberto.souza@velozcar.com'),
('Mariana Costa', '44455566677', 'Supervisor', '83966554433', 'mariana.costa@velozcar.com'),
('Fernanda Alves', '55566677788', 'Atendente', '83955443322', 'fernanda.alves@velozcar.com'),
('Lucas Pereira', '66677788899', 'Manobrista', '83944332211', 'lucas.pereira@velozcar.com'),
('Juliana Santos', '77788899900', 'Financeiro', '83933221100', 'juliana.santos@velozcar.com'),
('Thiago Oliveira', '88899900011', 'Atendente', '83922110099', 'thiago.oliveira@velozcar.com');

INSERT INTO Cliente (nome, CPF, endereco, telefone, email) VALUES
('Ana Paula Vieira', '12345678901', 'Rua das Flores, 123', '11987654321', 'ana.paula@email.com'),
('Bruno Carvalho', '23456789012', 'Avenida Principal, 456', '21976543210', 'bruno.c@email.com'),
('Carla Dias', '34567890123', 'Praça da Matriz, 789', '31965432109', 'carla.dias@email.com'),
('Daniel Farias', '45678901234', 'Rua dos Coqueiros, 101', '41954321098', 'daniel.farias@email.com'),
('Elisa Rocha', '56789012345', 'Avenida Litorânea, 202', '51943210987', 'elisa.r@email.com'),
('Fábio Mendes', '67890123456', 'Rua do Comércio, 303', '61932109876', 'fabio.mendes@email.com'),
('Gabriela Nunes', '78901234567', 'Alameda dos Anjos, 404', '71921098765', 'gabriela.n@email.com'),
('Heitor Gusmão', '89012345678', 'Travessa da Paz, 505', '81910987654', 'heitor.g@email.com'),
('Isabela Freitas', '90123456789', 'Rua da Esperança, 606', '91998765432', 'isabela.f@email.com');

INSERT INTO Veiculo (placa, modelo, cor, ano_fabricacao, valor_diaria, quilometragem, status) VALUES
('QWA1B23', 'Fiat Argo', 'Branco', 2022, 120.50, 15000, 'Disponível'),
('ERT4C56', 'Hyundai HB20', 'Prata', 2023, 135.00, 8000, 'Disponível'),
('YUI7D89', 'Chevrolet Onix', 'Preto', 2022, 125.75, 22000, 'Alugado'),
('OPL1E23', 'Jeep Renegade', 'Vermelho', 2023, 250.00, 5000, 'Disponível'),
('KJH4F56', 'Fiat Toro', 'Cinza', 2022, 280.80, 35000, 'Em Manutenção'),
('GFD7G89', 'Toyota Corolla', 'Branco', 2023, 350.00, 12000, 'Alugado'),
('CXZ1H23', 'VW Gol', 'Prata', 2021, 95.00, 55000, 'Disponível'),
('BNM4J56', 'Renault Kwid', 'Laranja', 2022, 85.50, 18000, 'Disponível'),
('VFR7K89', 'Honda Civic', 'Azul', 2023, 380.00, 7500, 'Disponível');

INSERT INTO Aluguel (data_inicio, data_fim_previsao, data_fim_real, valor_total, status_aluguel, id_cliente, id_funcionario, placa_veiculo) VALUES
('2025-09-01 10:00:00', '2025-09-05 10:00:00', '2025-09-05 10:15:00', 502.00, 'Finalizado', 1, 2, 'QWA1B23'),
('2025-09-10 14:00:00', '2025-09-12 14:00:00', NULL, NULL, 'Ativo', 3, 3, 'YUI7D89'),
('2025-09-11 09:30:00', '2025-09-18 09:30:00', NULL, NULL, 'Ativo', 2, 5, 'GFD7G89'),
('2025-08-20 11:00:00', '2025-08-25 11:00:00', '2025-08-25 11:00:00', 675.00, 'Finalizado', 4, 2, 'ERT4C56'),
('2025-09-12 16:00:00', '2025-09-15 16:00:00', NULL, NULL, 'Ativo', 5, 8, 'CXZ1H23'),
('2025-07-15 08:00:00', '2025-07-20 08:00:00', '2025-07-21 10:00:00', 1350.00, 'Atrasado', 6, 3, 'OPL1E23'),
('2025-09-13 11:00:00', '2025-09-14 11:00:00', NULL, NULL, 'Ativo', 7, 5, 'BNM4J56'),
('2025-09-08 15:00:00', '2025-09-10 15:00:00', '2025-09-10 14:45:00', 760.00, 'Finalizado', 8, 8, 'VFR7K89');

INSERT INTO Pagamento (valor_pagamento, data_pagamento, metodo_pagamento, status_pagamento, id_aluguel) VALUES
(502.00, '2025-09-05 10:20:00', 'Cartão', 'Concluído', 1),
(251.50, '2025-09-10 14:05:00', 'PIX', 'Concluído', 2),
(2450.00, '2025-09-11 09:35:00', 'Cartão', 'Concluído', 3),
(675.00, '2025-08-25 11:05:00', 'Boleto', 'Concluído', 4),
(95.00, '2025-09-12 16:02:00', 'PIX', 'Concluído', 5),
(1350.00, '2025-07-21 10:10:00', 'Cartão', 'Concluído', 6),
(85.50, '2025-09-13 11:03:00', 'PIX', 'Concluído', 7),
(760.00, '2025-09-10 14:50:00', 'Boleto', 'Concluído', 8);

INSERT INTO Manutencao (descricao_servico, custo_manutencao, data_inicio_servico, data_fim_servico, empresa_responsavel, placa_veiculo) VALUES
('Troca de óleo e filtro', 250.00, '2025-08-15 08:00:00', '2025-08-15 12:00:00', 'Oficina Mecânica Veloz', 'QWA1B23'),
('Revisão de 10.000km', 650.00, '2025-09-01 09:00:00', '2025-09-01 17:00:00', 'Concessionária Autorizada', 'ERT4C56'),
('Alinhamento e Balanceamento', 180.00, '2025-07-30 14:00:00', '2025-07-30 16:00:00', 'Centro Automotivo Rápido', 'YUI7D89'),
('Troca de pastilhas de freio', 450.00, '2025-09-10 08:00:00', '2025-09-11 18:00:00', 'Freios & Cia', 'KJH4F56'),
('Revisão de 50.000km', 950.00, '2025-09-05 08:00:00', '2025-09-06 12:00:00', 'Concessionária Autorizada', 'CXZ1H23'),
('Troca de Pneus', 1200.00, '2025-08-28 10:00:00', '2025-08-28 15:00:00', 'Pneu Forte', 'GFD7G89'),
('Manutenção no ar-condicionado', 320.00, '2025-09-12 11:00:00', '2025-09-12 16:00:00', 'Refrigeração Car', 'VFR7K89');

UPDATE Aluguel
SET
    data_fim_real = '2025-09-15 17:30:00',
    status_aluguel = 'Finalizado',
    valor_total = (SELECT valor_diaria FROM Veiculo WHERE placa = 'CXZ1H23') * 3
WHERE
    id_aluguel = 5;

UPDATE Veiculo
SET
    status = 'Disponível',
    quilometragem = quilometragem + 50
WHERE
    placa = 'KJH4F56';

SELECT COUNT(*) AS total_de_clientes FROM Cliente;

SELECT cargo, COUNT(*) AS quantidade_por_cargo FROM Funcionario GROUP BY cargo;

SELECT AVG(valor_diaria) AS media_valor_diaria FROM Veiculo;

SELECT placa_veiculo, SUM(custo_manutencao) AS custo_total_manutencao FROM Manutencao GROUP BY placa_veiculo;

SELECT SUM(valor_total) AS faturamento_total FROM Aluguel WHERE status_aluguel = 'Finalizado';

SELECT metodo_pagamento, SUM(valor_pagamento) AS total_arrecadado FROM Pagamento GROUP BY metodo_pagamento ORDER BY total_arrecadado DESC;

SELECT
    A.id_aluguel,
    C.nome AS nome_cliente,
    V.modelo AS modelo_veiculo,
    F.nome AS nome_funcionario,
    A.data_fim_previsao
FROM
    Aluguel AS A
INNER JOIN Cliente AS C ON A.id_cliente = C.id_cliente
INNER JOIN Veiculo AS V ON A.placa_veiculo = V.placa
INNER JOIN Funcionario AS F ON A.id_funcionario = F.id_funcionario
WHERE
    A.status_aluguel = 'Ativo';

SELECT
    V.placa,
    V.modelo,
    M.descricao_servico,
    M.custo_manutencao
FROM
    Veiculo AS V
LEFT JOIN Manutencao AS M ON V.placa = M.placa_veiculo
ORDER BY
    V.placa;