use lake;

# Quantidade de vendas por funcionário e mês
select MONTH(tb010_012_data), count(tb010_012_quantidade), tb005_nome_completo
from tb010_012_vendas
join tb005_funcionarios on tb010_012_vendas.tb005_matricula = tb005_funcionarios.tb005_matricula
group by tb005_nome_completo, MONTH(tb010_012_data)
order by MONTH(tb010_012_data), tb005_nome_completo asc;

# Quantidade de vendas por tipo de produtos e mês
select MONTH(tb010_012_data), count(tb010_012_quantidade), tb013_descricao from tb010_012_vendas
inner join tb012_produtos on tb010_012_vendas.tb012_cod_produto = tb012_produtos.tb012_cod_produto
left join tb013_categorias on tb012_produtos.tb013_cod_categoria = tb013_categorias.tb013_cod_categoria
group by MONTH(tb010_012_data), tb013_descricao
order by MONTH(tb010_012_data), tb013_descricao asc;

# Valor total das vendas por dia
select DAY(tb010_012_data), sum(tb010_012_valor_unitario) from tb010_012_vendas
group by DAY(tb010_012_data)
order by DAY(tb010_012_data) asc;