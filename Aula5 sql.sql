select * from tbcliente;

select cpf, nome, endereco1, endereco2 from tbcliente;

select * from tbcliente limit 5;

select cpf as cpf_cliente, nome as nome_cliente from tbcliente limit 5;

select * from tbproduto where produto = '544931';
select * from tbcliente where cidade = 'Rio de Janeiro';

select * from tbproduto where sabor = 'Limão';
update tbproduto set sabor = 'Cítricos' where sabor = 'Limão';
select * from tbproduto where sabor = 'Cítricos';

select * from tbcliente where idade <> 22;

select * from tbcliente where nome > 'Marcos Nougeuira';

select * from tbproduto where PRECO_LISTA = 16.008; /*Como o campo é ponto flutuante a consulta não retorna valores*/
/* neste caso é possível usar o <= ou o Between */

select * from tbproduto where PRECO_LISTA between 16.007 and 16.009; 

/*Exercício: comissão > 10% */

select * from tbvendedores where comissao > 0.1;

select * from tbcliente where DATA_NASCIMENTO = '1995-01-13';
select * from tbcliente where DATA_NASCIMENTO > '1995-01-13';
select * from tbcliente where DATA_NASCIMENTO <= '1995-01-13';

select * from tbcliente where year(data_nascimento) = 1995;
select * from tbcliente where month(data_nascimento) = 10;

select * from tbvendedores;
select * from tbvendedores where year(data_admissão) >= 2016;

select * from tbproduto where PRECO_LISTA >= 16.007 and PRECO_LISTA <= 16.009;

select * from tbcliente where idade >= 18 and idade <= 22;

select * from tbcliente where cidade = 'Rio de Janeiro' or bairro = 'Jardins';
select * from tbcliente where  (idade >= 18 and idade <= 22 and sexo = 'M') 
or (cidade = 'Rio de Janeiro' or bairro = 'Jardins');

/* exercício - vendedores de férias contratados < 2016 */

select * from tbvendedores where year(data_admissão < 2016) and (de_ferias = 1);