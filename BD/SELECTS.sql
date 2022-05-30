use bdi221;
go

--Quantas compras foram feitas em cada forma de pagamento
select descricao, count(fp.descricao) as quantidade_vendas from forma_pagamento as fp
inner join venda as v
on v.id_forma_pagamento = fp.id
group by fp.descricao

--Quantas compras cada cliente realizou
select nome, count(v.id_cliente) as quantidade from cliente as c
inner join venda as v
on v.id_cliente = c.id
group by c.nome
order by quantidade

--Qual o valor total que cada cliente comprou
select c.nome, sum(p.valor) as valor_total from cliente as c
inner join venda as v
on v.id_cliente = c.id
inner join produto_venda as pv
on pv.id = v.id
inner join produto as p
on p.id = pv.id
group by c.nome
order by valor_total desc

--Qual pet pertence a qual cliente
select p.nome as nome_do_pet, c.nome as nome_do_cliente from cliente_pet as cp
inner join cliente as c
on c.id = cp.id_cliente
inner join pet as p
on p.id = cp.id_pet

--Qual o produto mais caro
select nome, tipo,valor from produto
order by valor desc

--Qual o produto mais vendido
select p.nome as nome_produto, count(pd.id_produto) as qnt_vendas from produto_venda as pd
inner join produto as p
on pd.id_produto = p.id
group by p.nome
order by qnt_vendas desc
