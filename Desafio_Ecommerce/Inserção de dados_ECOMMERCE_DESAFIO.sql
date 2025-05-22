-- INSERÇÃO DE DADOS 
Use ecommerce_desafio;

SHOW TABLES;

-- INSERINDO DADOS NA TABELA CLIENTE
INSERT INTO cliente (nome , sobrenome, endereço, CPF, dataDeNascimento)
			VALUES  ('Lucas', 'Ferreira', 'Rua das Palmeiras, 123, São Paulo', '48293120758', '1992-06-15'),
					('Mariana', 'Oliveira', 'Av. Brasil, 789, Rio de Janeiro', '13564892130', '1989-03-22'),
					('João', 'Souza', 'Rua Bela Vista, 45, Belo Horizonte', '91238406591', '2000-11-10'),
					('Ana', 'Santos', 'Rua do Sol, 300, Salvador', '30618977420', '1995-08-05'),
					('Pedro', 'Lima', 'Av. Central, 88, Curitiba', '05412768804', '1985-01-17'),
					('Camila', 'Rocha', 'Rua Amapá, 50, Porto Alegre', '71049336280', '1997-07-02'),
					('Rafael', 'Costa', 'Rua 7 de Setembro, 410, Recife', '60418903716', '1990-04-30'),
					('Juliana', 'Martins', 'Rua das Acácias, 102, Fortaleza', '23891047633', '1998-09-26'),
					('Bruno', 'Almeida', 'Av. Paulista, 950, São Paulo', '37920458892', '1983-12-08'),
					('Larissa', 'Ribeiro', 'Rua Paraná, 21, Manaus', '89123016427', '1994-05-13'),
					('Cristina', 'Ferreira', 'Rua das mangabeiras, 201, Minas Gerais', '12345678911', '2003-04-30'); 
        
                 
-- INSERINDO DADOS NA TABELA PRODUTO
INSERT INTO produto (nomeProduto, categoria, descrição , valor, avaliação)
			VALUES 	('Fone de Ouvido Bluetooth X200', 'Eletronico', 'Fone leve com bateria de 20h e microfone', 249.90, 4.3),
					('Cubo Mágico Pro 3x3',           'Brinquedos',  'Cubo de alta rotação para speedcubing', 39.99, 4.7),
					('Café Arábica Premium 500g',     'Alimentos',   'Grãos 100% arábica torrados médios',     26.50, 4.6),
					('Mesa de Escritório Compacta',   'Móveis',      'Tampo 120cm MDF branco com pés de aço',  399.00, 4.1),
					('Jaqueta Corta-Vento Urban',     'Vestimento',  'Tecido impermeável, bolsos internos',    189.90, 4.4),
					('Mouse Gamer RGB G9',            'Eletronico',  'Sensor óptico 16k DPI e iluminação',     149.90, 4.5),
					('Boneca de Pano Sofia',          'Brinquedos',  'Feita à mão com algodão hipoalergênico', 59.90, 4.8),
					('Macarrão Integral Fusilli 500g','Alimentos',   'Farinha integral de trigo duro',          8.75, 4.2),
					('Cadeira Ergonômica Flex',       'Móveis',      'Ajuste lombar e encosto ventilado',     1199.99, 4.6),
					('Calça Jeans Slim Fit',          'Vestimento',  'Denim stretch, lavagem azul escura',     129.90, 4.0);  
              
-- INSERINDO DADOS NA TABELA PEDIDO
INSERT INTO pedido(idCliente,idPedidoPagamento, statusPedido, descrição, valorFrete, ValorTotalPedido)
				VALUES  (9,  NULL, 'Confirmado',       'Pedido com fone de ouvido e frete express',           24.90, 274.80),
 						(10, NULL, 'Em processamento', 'Brinquedos e alimentos aguardando envio',             12.50, 92.40),
 						(11, NULL, 'Cancelado',        'Cancelado por item fora de estoque',                 0.00, 399.00),
 	 					(12, NULL, 'Confirmado',       'Vestimenta enviada com frete grátis',                0.00, 189.90),
 						(13, NULL, 'Em processamento', 'Itens diversos aguardando confirmação de pagamento', 18.70, 327.60),
 						(14, NULL, 'Confirmado',       'Pedido com desconto e entrega normal',                9.90, 98.50),
 						(15, NULL, 'Confirmado',       'Pedido com alimentos e entrega padrão',               6.50, 35.25),
 						(16, NULL, 'Cancelado',        'Cancelado pelo cliente antes do envio',              0.00, 149.90),
 						(17, NULL, 'Em processamento', 'Móveis e eletrônicos aguardando transporte',         34.90, 1389.89),
 						(29, NULL, 'Em processamento', 'Pedido múltiplo com valor promocional de frete',      5.00, 642.00),
						(29,  NULL, 'Confirmado', 'Pedido com fone de ouvido e frete express', 24.90, 274.80),
						(29,  NULL, 'Em processamento', 'Pedido aguardando pagamento de cadeira ergonômica', 59.90, 1259.89),
						(29,  NULL, 'Cancelado', 'Cliente desistiu do pedido com cubo mágico e boneca', 14.00, 73.90),
						(29,  NULL, 'Confirmado', 'Pedido enviado com calça jeans e jaqueta', 29.90, 349.70),
						(29,  NULL, 'Confirmado', 'Pedido confirmado: mouse gamer e fone bluetooth', 19.90, 419.70),
						(29,  NULL, 'Confirmado', 'Pedido com café arábica e macarrão integral', 10.00, 45.25),
						(29,  NULL, 'Em processamento', 'Aguardando pagamento da mesa compacta com frete padrão', 49.90, 448.90),
						(29,  NULL, 'Confirmado', 'Pedido com papelaria e brinquedos para presente', 12.00, 97.99),
						(10,  NULL, 'Confirmado', 'Pedido com roupas: jaqueta e calça jeans', 22.50, 342.30),
						(8,   NULL, 'Cancelado', 'Pedido cancelado pelo cliente (sem estoque)', 0.00, 0.00);
						
				

				
-- INSERINDO DADOS NA TABELA PAGAMENTO 
INSERT INTO pagamento (idPgCliente, idPgPedido, dataPagamento, valorPago, metodoPagamento, statusPagamento)
			VALUES  (8,  1, '2025-05-10', 274.80, 'CartãoCredito', 'Pago'),
 					(9,  2, '2025-05-11', 92.40,  'PIX','Pago'),
 					(10, 3, '2025-05-12', 399.00, 'Boleto','Cancelado'),
 					(11, 4, '2025-05-13', 189.90, 'CartãoDebito',  'Pago'),
 					(12, 5, '2025-05-14', 327.60, 'CartãoCredito', 'Pendente'),
 					(13, 6, '2025-05-15', 98.50,  'PIX','Pago'),
					(14, 7, '2025-05-16', 35.25,  'PIX','Pago'),
 					(15, 8, '2025-05-17', 149.90, 'CartãoCredito', 'Cancelado'),
 					(16, 9, '2025-05-18', 1389.89,'Boleto','Pendente'),
 					(17,10, '2025-05-19', 642.00, 'CartãoDebito','Pago'),
					(29, 41,'2025-05-10', 274.80, 'CartãoCredito', 'Pago'),
					(29, 42,'2025-05-15', 1259.89, 'Boleto','Pendente'),
					(29, 43,'2025-05-15', 73.90,  'Pix', 'Cancelado'),
					(29, 44,'2025-05-12', 349.70, 'CartãoCredito', 'Pago'),
					(29, 45,'2025-05-11', 419.70, 'Pix', 'Pago'),
					(29, 46,'2025-05-09', 45.25,  'Boleto', 'Pago'),
					(29, 47,'2025-05-16', 448.90, 'CartãoCredito', 'Pendente'),
					(29, 48,'2025-05-13', 97.99,  'Pix','Pago'),
					(10, 49,'2025-05-14',	342.30, 'Boleto','Pago'),
					(29, 50,'2025-05-15',	0.00, 'CartãoCredito', 'Cancelado');
                    


-- INSERINDO DADOS NA TABELA ENTREGA
INSERT INTO entrega(idEntregaPedido, idEntregaCliente, statusEntrega, dataEntrega, codigoRastreio)
			VALUES	
				 	(1,  8,  'Concluida','2025-05-10', 990011),
				 	(2,  9,  'Em Andamento',  NULL,990012),
				 	(3, 10,  'Concluida','2025-05-11', 990013),
				 	(4, 11,  'Cancelada',NULL,990014),
					(5, 12,  'Em Andamento',  NULL,990015),
					(6, 13,  'Concluida','2025-05-14', 990016),
					(7, 14,  'Concluida','2025-05-14', 990017),
					(8, 15,  'Em Andamento',  NULL,990018),
 					(9, 16,  'Cancelada',NULL,990019),
  					(10,17,  'Concluida','2025-05-15', 990020),
					(41, 29, 'Concluida', '2025-05-12', '990021'),
					(42, 29, 'Em Andamento','2025-05-20', NULL),
					(43, 29, 'Cancelada',NULL,NULL),
					(44, 29, 'Concluida','2025-05-14', '990022'),
					(45, 29, 'Concluida','2025-05-13', '990023'),
					(46, 29, 'Concluida','2025-05-11', '990024'),
					(47, 29, 'Em Andamento', NULL,NULL),
					(48, 29, 'Concluida','2025-05-15', '990025'),
					(49, 10, 'Concluida','2025-05-16', '990026'),
					(50, 29, 'Cancelada',NULL,NULL);
                   
                   
-- INSERINDO DADOS NA TABELA ESTOQUE
INSERT INTO estoque (local,quantidade)
			VALUES 	('Centro de Distribuição SP',        1200),
					('Armazém RJ',                        850),
					('Loja Zona Norte - São Paulo',      300),
					('Centro de Logística BH',           940),
					('Armazém Curitiba - PR',            410),
					('Loja Recife Shopping - PE',        190),
					('Centro de Distribuição Sul',       760),
					('Armazém Salvador - BA',            540),
					('Loja Porto Alegre - RS',           250),
					('Estoque Temporário Campinas - SP', 670);
                    

-- INSERINDO DADOS NA TABELA FORNECEDOR
INSERT INTO fornecedor (nomeSocial, CNPJ, telefone)
			VALUES 	('Tech Distribuidora LTDA',         '12345678000195', 11987654321),
					('Alimentos Brasil S.A.',           '22345678000188', 21999998888),
					('Móveis & Cia EIRELI',             '32345678000177', 31988442233),
					('Fashion World Importadora',       '42345678000166', 11991112222),
					('Eletrônicos Global LTDA',         '52345678000155', 41999887766),
					('Brinquedos & Diversão S.A.',      '62345678000144', 51988776655),
					('Logística Nacional Express',      '72345678000133', 31996655443),
					('Alfa Indústria Têxtil',           '82345678000122', 21992223344),
					('Delícia Alimentos Orgânicos',     '92345678000111', 31993334422),
					('Soluções em Papelaria ME',        '10345678000100', 11990001122),
					('Marcos Suprimentos', '15775079671157', '31997041446');

                 			

            
-- INSERINDO DADOS NA TABELA VENDEDOR
INSERT INTO vendedor (nomeVendedor, CNPJ, CPF, localVendedor)
			VALUES 	('2','12345678000195', NULL, 'São Paulo - SP'),
					('Maria do Carmo Oliveira',       NULL, '01234567890', 'Belo Horizonte - MG'),
					('Distribuidora Vale Norte',      '23456789000185', NULL, 'Fortaleza - CE'),
					('Carlos Henrique Ferreira',      NULL, '10293847566', 'Curitiba - PR'),
					('Loja Mix Popular EIRELI',       '34567890000175', NULL, 'Salvador - BA'),
					('Joana Almeida Silva',           NULL, '99887766554', 'Brasília - DF'),
					('Fornecedora Centro-Oeste',      '45678900000165', NULL, 'Goiânia - GO'),
					('Luciano Batista Ramos',         NULL, '11223344556', 'Recife - PE'),
					('Mega Eletrônicos SP S.A.',      '56789000000155', NULL, 'Campinas - SP'),
					('Fernanda de Souza Lima',        NULL, '88990011223', 'Porto Alegre - RS'),
                    ('Marcos Suprimentois','15775079671157', NULL, 'MINAS GERAIS - MG');
                    
-- INSERINDO DADOS NA TABELA PRODUTO_PEDIDO
INSERT INTO produtoPedido(idPpProduto ,idPpPedido, quantidade , disponibilidadeProduto)
			VALUES 	(1, 1, 2, 'Disponível'),
					(2, 2, 1, 'Sem estoque'),
					(3, 3, 3, 'Disponível'),
					(4, 4, 2, 'Disponível'),
					(5, 5, 4, 'Sem estoque'),
					(6, 6, 1, 'Disponível'),
					(7, 7, 2, 'Disponível'),
					(8, 8, 5, 'Sem estoque'),
					(9, 9, 3, 'Disponível'),
					(10, 10, 1, 'Disponível');
                    
                    
-- INSERINDO DADOS NA TABELA PRODUTO_VENDEDOR
INSERT INTO produtoVendedor (idPvProduto, idPvVendedor, quantidadeProdutos) 
			VALUES	(1, 1, 10),
					(2, 2, 5),
					(3, 3, 8),
					(4, 4, 12),
					(5, 5, 7),
					(6, 6, 15),
					(7, 7, 4),
					(8, 8, 20),
					(9, 9, 6),
					(10, 10, 9);
                    
                    
-- INSERINDO DADOS NA TABELA PRODUTO_ESTOQUE
INSERT INTO produtoEstoque(idPeProduto , idPeEstoque , quantidade , LocalEstoque)
			VALUES 	(1, 1, 20, 'Armazém Central'),
					(2, 2, 15, 'Depósito Norte'),
					(3, 3, 30, 'Centro de Distribuição Sul'),
					(4, 4, 10, 'Armazém Oeste'),
					(5, 5, 25, 'Depósito Leste'),
					(6, 6, 40, 'Armazém Central 2'),
					(7, 7, 5, 'Depósito Norte 2'),
					(8, 8, 50, 'Centro de Distribuição Sul 2'),
					(9, 9, 12, 'Armazém Oeste 2'),
					(10, 10, 8, 'Depósito Leste 2');
                    
                    
-- INSERINDO DADOS NA TABELA PRODUTO_FORNECEDOR
INSERT INTO produtoFornecedor (idPfProdruto, idPfFornecedor, quantidadeProdutosFornecedor) 
			VALUES 	(1, 1, 20),
					(2, 2, 15),
					(3, 3, 30),
					(4, 4, 10),
					(5, 5, 25),
					(6, 6, 40),
					(7, 7, 5),
					(8, 8, 50),
					(9, 9, 12),
					(10, 10, 8);
