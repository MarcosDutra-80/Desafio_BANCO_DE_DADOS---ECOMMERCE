-- RESPONDENDO PERGUNTAS COM QUERIES ELABORADAS
 USE ecommerce_desafio;
 show tables;


-- ELABORAR PERGUNTAS (RESPONDER COM AS QUEIERES_
-- SELECT STATEMENTE
-- FILTROS COM WHERE
-- CRIAR EXPRESSOES PARA GERAR ATRIBUTOS DERIVADOS
-- USAR O ORDER BY
-- USAR O GROUP BY
-- FILTROS COM HAVING 
-- JUNÇÃO DAS TABELAS 


-- Quantos pedidos foram feitos por cada cliente? (QUERIE QUE RETORNA QUANTOS PEDIDOS CADA CLIENTE FEZ, AGRUPANDO COM O GROUPY BY ENCIMA DOS ID's dos Cliientes)
SELECT c.idCliente, CONCAT(nome, '', sobrenome) AS nome_completo, COUNT(P.idPedido) AS total_de_pedidos
		FROM cliente AS C 
        JOIN pedido AS P ON C.idCliente = P.idcliente
        GROUP BY C.idCliente;




-- Algum vendedor também é fornecedor? (DUAS QUERIES QUE RETORNAM QUAL VENDEDOR TAMBÉM É FORNECEDOR, SENDO A PRIMEIRA BEM MAIS PRÁTICA)
SELECT idVendedor , nomeVendedor ,localVendedor FROM vendedor INNER JOIN fornecedor USING (CNPJ);

SELECT idVendedor , nomeVendedor ,localVendedor FROM vendedor v INNER JOIN fornecedor f 
		ON v.CNPJ = f.CNPJ;



-- Relação de produtos fornecedores e estoques (QUERIE QUE ME RETORNA: NOME DO PRODUTO, VALOR , NOME DO MEU FORNECEDOR , QUANTIDADE DOS PRODUTOS NO ESTOQUE E QUANTOS PRODUTOS MEU FORNECEDOR TEM A ME DISPONIBILIZAR)
SELECT p.idproduto, p.nomeProduto, p.valor , f.nomeSocial as Nome_do_Fornecedor , f.CNPJ, pe.quantidade as quantidade_de_produtos_no_estoque , pe.localEstoque ,pf.quantidadeProdutosFornecedor
		FROM produto p INNER JOIN produtoFornecedor pf ON p.idProduto = pf.idPfProdruto
        INNER JOIN fornecedor f ON f.idFornecedor = pf.idPfFornecedor
        INNER JOIN produtoEstoque pe ON p.idProduto = pe.idPeproduto;
        


-- Relação de nomes dos fornecedores e nomes dos produtos (QUERIE QUE ME RETORNA : NOME DO FORNECEDOR E NOME DO PRODRUTO)
SELECT nomeSocial as nome_fornecedor , nomeProduto FROM produto INNER JOIN produtoFornecedor ON idProduto = idPfProdruto
		INNER JOIN fornecedor ON idFornecedor = idPfFornecedor;


SELECT * FROM cliente WHERE idCliente=29;
SELECT statusPedido FROM pedido;

-- TOTAL PEDIDOS PARA CLIENTE = CRISTINA FERREIRA 
SELECT nome , sobrenome , COUNT(*) AS quantidade_total_de_pedidos FROM pedido p INNER JOIN cliente c ON c.idCliente = p.idCliente
				WHERE c.nome = 'Cristina'
                GROUP BY c.idCliente;
                
-- TOTAL PEDIDOS PARA CLIENTE = CRISTINA FERREIRA 
SELECT nome , sobrenome , COUNT(*) AS quantidade_total_de_pedidos FROM pedido p INNER JOIN cliente c ON c.idCliente = p.idCliente
				WHERE c.nome = 'Cristina'
                GROUP BY c.idCliente;
                
                
-- QUANTOS PEDIDOS JA FORAM CONFIRMADOS , QUANTOS ESTAO 'EM PROCESSAMENTO' E QUANTOS PEDIDOS FORAM CANCELADOS PARA A CLIENTE DE NOME = CRISTINA DE ID=29
SELECT statusPedido  , COUNT(*) AS quantidade_de_Pedidos  
		FROM pedido p 
        INNER JOIN cliente c ON c.idCliente = p.idCliente
        WHERE c.nome = 'Cristina' AND c.idcliente = 29
        GROUP BY statusPedido   ;
        
        
-- TODOS VALORES DOS PRODUTOS CADASTRADOS EM ORDEM DECRESCENTE
SELECT idproduto , categoria , valor FROM produto ORDER BY valor DESC;



-- TODS MEUS CLIENTES QUE POSSUEM MAIS DE UM PEDIDO
SELECT CONCAT(nome ,' ' , sobrenome) AS nome_completo , COUNT(*) AS quantidade_total_de_pedidos FROM pedido p INNER JOIN cliente c ON c.idCliente = p.idCliente
                GROUP BY c.idCliente
                HAVING COUNT(*) > 1;
        
        
