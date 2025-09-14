CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,  
    nome VARCHAR(150) NOT NULL,                 
    CPF VARCHAR(11) NOT NULL UNIQUE,            
    endereco VARCHAR(150),
    telefone VARCHAR(15) NOT NULL,             
    email VARCHAR(100) UNIQUE                   
);

CREATE TABLE Funcionario (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(150) NOT NULL,
    CPF VARCHAR(11) NOT NULL UNIQUE,
    cargo VARCHAR(30) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Veiculo (
    placa VARCHAR(7) PRIMARY KEY,
    modelo VARCHAR(30) NOT NULL,
    cor VARCHAR(30) NOT NULL,
    ano_fabricacao INT NOT NULL,
    valor_diaria DECIMAL(10, 2) NOT NULL,      
    quilometragem INT NOT NULL,                
    status VARCHAR(20) NOT NULL DEFAULT 'Disponível' 
);

CREATE TABLE Aluguel (
    id_aluguel INT PRIMARY KEY AUTO_INCREMENT,
    data_inicio DATETIME NOT NULL,
    data_fim_previsao DATETIME NOT NULL,
    data_fim_real DATETIME,
    valor_total DECIMAL(10, 2),
    status_aluguel VARCHAR(20) NOT NULL,

    id_cliente INT NOT NULL,
    id_funcionario INT NOT NULL,
    placa_veiculo VARCHAR(7) NOT NULL
);


CREATE TABLE Pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    valor_pagamento DECIMAL(10, 2) NOT NULL,
    data_pagamento DATETIME NOT NULL,
    metodo_pagamento VARCHAR(15) NOT NULL,
    status_pagamento VARCHAR(15) NOT NULL,
    data_vencimento DATETIME,
    id_aluguel INT NOT NULL
);

CREATE TABLE Manutencao (
    id_manutencao INT PRIMARY KEY AUTO_INCREMENT,
    descricao_servico VARCHAR(150) NOT NULL,
    custo_manutencao DECIMAL(10, 2) NOT NULL,
    data_inicio_servico DATETIME NOT NULL,
    data_fim_servico DATETIME,
    empresa_responsavel VARCHAR(100) NOT NULL, 
    placa_veiculo VARCHAR(7) NOT NULL
);

ALTER TABLE Aluguel ADD CONSTRAINT FK_Aluguel_Cliente
    FOREIGN KEY (id_cliente) REFERENCES Cliente (id_cliente)
    ON DELETE RESTRICT;

ALTER TABLE Aluguel ADD CONSTRAINT FK_Aluguel_Funcionario
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario (id_funcionario)
    ON DELETE RESTRICT;

ALTER TABLE Aluguel ADD CONSTRAINT FK_Aluguel_Veiculo
    FOREIGN KEY (placa_veiculo) REFERENCES Veiculo (placa)
    ON DELETE RESTRICT;

ALTER TABLE Pagamento ADD CONSTRAINT FK_Pagamento_Aluguel
    FOREIGN KEY (id_aluguel) REFERENCES Aluguel (id_aluguel)
    ON DELETE RESTRICT;

ALTER TABLE Manutencao ADD CONSTRAINT FK_Manutencao_Veiculo
    FOREIGN KEY (placa_veiculo) REFERENCES Veiculo (placa)
    ON DELETE CASCADE;
