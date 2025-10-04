/*1ª consulta:
Agrupa os produtos e categorias, soma o valor total de vendas (quantidade × preço) de 
cada produto e ordena do maior para o menor (DESCENDENTE), mostrando quais geraram mais receita.*/

SELECT 
    Produto,
    Categoria,
    SUM(Quantidade * Preco) AS Total_Vendas
FROM data_clean                     --data_clean = tabela de vendas do nosso exemplo
GROUP BY Produto, Categoria
ORDER BY Total_Vendas DESC;



/*2ª consulta:
Filtra apenas as vendas de junho de 2023, soma o total vendido por produto e 
ordena do menor para o maior (ASCENDENTE), identificando os produtos com pior desempenho nesse mês ao usar o comando de ordenar ASC. */

SELECT 
    Produto,
    SUM(Quantidade * Preco) AS Total_Vendas_Junho
FROM data_clean
WHERE STRFTIME('%m', Data) = '06' AND STRFTIME('%Y', Data) = '2023'     
GROUP BY Produto
ORDER BY Total_Vendas_Junho ASC;


-- No comando WHERE 
--strftime('%m', DataVenda) = '06': extrai o mês da data e mantém apenas as linhas onde o mês é junho.
--strftime('%Y', DataVenda) = '2023': extrai o ano e mantém apenas as vendas de 2023.
