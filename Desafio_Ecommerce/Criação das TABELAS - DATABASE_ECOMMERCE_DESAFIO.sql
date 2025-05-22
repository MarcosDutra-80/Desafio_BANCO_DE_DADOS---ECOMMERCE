-- Criação das TABELAS - DATABASE_ECOMMERCE_DESAFIO

CREATE DATABASE	ecommerce_desafio;
USE ecommerce_desafio;

-- TABELA CLIENTE
CREATE TABLE cliente(
	idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (45),
    sobrenome VARCHAR (45),
    endereço VARCHAR (200),
    CPF CHAR (11) ,
    dataDeNascimento DATE,
	CONSTRAINT unique_cpf_cliente UNIQUE (CPF)
);

-- TABELA PAGAMENTO
CREATE TABLE pagamento(
	idPagamento INT AUTO_INCREMENT PRIMARY KEY,
    idPgCliente INT,
    idPgPedido INT,
    dataPagamento DATE NOT NULL,
    valorPago DECIMAL(10,2) NOT NULL,
    metodoPagamento ENUM('CartãoDebito', 'CartãoCredito', 'PIX', 'Boleto'),
    statusPagamento ENUM('Pago', 'Pendente', 'Cancelado'),
    CONSTRAINT fk_pagamento_cliente FOREIGN KEY (idPgCliente) REFERENCES cliente (idCliente),
    CONSTRAINT fk_pagamento_pedido FOREIGN KEY (idPgPedido) REFERENCES pedido (idPedido)


-- TABELA PEDIDO
CREATE TABLE pedido(
	idPedido INT AUTO_INCREMENT PRIMARY KEY,
    idCliente INT,
    idPedidoPagamento INT,
    statusPedido ENUM('Cancelado', 'Confirmado', 'Em processamento') DEFAULT 'Em processamento',
    descrição VARCHAR (200),
    valorFrete DECIMAL(10,2) DEFAULT 0,
    valorTotalPedido DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (idCliente) REFERENCES cliente (idCliente),
    CONSTRAINT fk_pedido_pagamento FOREIGN KEY (idPedidoPagamento) REFERENCES pagamento (idPagamento)
);


-- TABELA PRODUTO
CREATE TABLE produto(
	idProduto INT AUTO_INCREMENT PRIMARY KEY,
    nomeProduto VARCHAR (45) NOT NULL,
    categoria ENUM('Eletronico', 'Brinquedos', 'Alimentos', 'Móveis', 'Vestimento') NOT NULL,
    descrição VARCHAR (100),
    valor DECIMAL(10,2) NOT NULL,
    avaliação FLOAT NOT NULL
    );
    


-- TABELA ENTREGA
CREATE TABLE entrega(
	idEntrega INT AUTO_INCREMENT PRIMARY KEY,
    idEntregaPedido INT,
    IdEntregaCliente INT,
    statusEntrega ENUM('Concluida', 'Em Andamento', 'Cancelada'),
    dataEntrega DATE ,
    codigoRastreio INT UNIQUE,
    CONSTRAINT codigo_de_rastreio_unico UNIQUE (codigoRastreio),
    CONSTRAINT fk_entrega_pedido FOREIGN KEY (idEntregaPedido) REFERENCES pedido (idpedido),
    CONSTRAINT fk_entrega_cliente FOREIGN KEY (IdEntregaCliente) REFERENCES cliente (idCliente)
);

-- TABELA ESTOQUE 
CREATE TABLE estoque(
	idEstoque INT AUTO_INCREMENT PRIMARY KEY,
    local VARCHAR (255) NOT NULL,
    quantidade INT DEFAULT 0
);


-- TABELA FORNECEDOR
CREATE TABLE fornecedor (
	idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nomeSocial VARCHAR (45) NOT NULL,
    CNPJ CHAR (14) NOT NULL,
    telefone VARCHAR (15) NOT NULL,
    CONSTRAINT cnpj_unico_fornecedor UNIQUE (CNPJ)
);

-- TABELAS VENDEDOR(TERCEIRO)
CREATE TABLE vendedor (
	idVendedor INT AUTO_INCREMENT PRIMARY KEY,
    nomeVendedor VARCHAR (45) NOT NULL,
    CNPJ CHAR (14) ,
    CPF CHAR (11) ,
    localVendedor VARCHAR (100) NOT NULL,
    CONSTRAINT cnpj_unico_vendedor UNIQUE (CNPJ),
    CONSTRAINT cpf_unico_vendedor UNIQUE (CPF)
    );
    
    
    
-- TABELA PRODUTO / PEDIDO
CREATE TABLE produtoPedido(
	idPpProduto INT,
    idPpPedido INT,
    Quantidade INT DEFAULT 1,
    disponibilidadeProduto ENUM('Disponível', 'Sem estoque') DEFAULT 'Disponível',
    PRIMARY KEY (idPpProduto, idPpPedido),
    CONSTRAINT fk_idppproduto FOREIGN KEY (idPpProduto) REFERENCES produto (idProduto),
    CONSTRAINT fk_idpppedido FOREIGN KEY (idPpPedido) REFERENCES pedido (idPedido)
);

SELECT idProduto FROM produto;
SELECT idPedido FROM pedido;
SELECT idVendedor FROM vendedor;

-- TABELA PRODUTO / VENDEDOR
CREATE TABLE produtoVendedor(
	idPvProduto INT,
    idPvVendedor INT,
    quantidadeProdutos INT DEFAULT 1,
    PRIMARY KEY (idPvProduto,idPvVendedor),
    CONSTRAINT fk_idpvProduto FOREIGN KEY (idPvProduto) REFERENCES produto (idProduto),
    CONSTRAINT fk_idPvVendedor FOREIGN KEY (idPvVendedor) REFERENCES vendedor (idVendedor)
);

-- TABELA PRODUTO / ESTOQUE
CREATE TABLE produtoEstoque(
	idPeproduto INT,
    idPeEstoque INT,
    quantidade INT DEFAULT 1,
    localEstoque VARCHAR (100),
	PRIMARY KEY (idPeproduto,idPeEstoque),
    CONSTRAINT fk_idPeproduto FOREIGN KEY (idPeproduto) REFERENCES produto (idProduto),
    CONSTRAINT fk_idPeEstoque FOREIGN KEY (idPeEstoque) REFERENCES estoque (idEstoque)
);



-- CREATE TABLE PRODTO / FORNECEDOR
CREATE TABLE produtoFornecedor(
	idPfProdruto INT,
    idPfFornecedor INT,
    quantidadeProdutosFornecedor INT DEFAULT 1,
    PRIMARY KEY (idPfProdruto,idPfFornecedor),
    CONSTRAINT fk_idPfProdruto FOREIGN KEY (idPfProdruto) REFERENCES produto (idProduto),
    CONSTRAINT fk_idPfFornecedor FOREIGN KEY (idPfFornecedor) REFERENCES fornecedor (idFornecedor)
);
