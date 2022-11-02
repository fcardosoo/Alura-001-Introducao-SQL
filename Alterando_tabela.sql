use sucos;
select * from tbproduto;
/* Apagando um registro em uma tabela */
delete from tbproduto where produto = '1037797';
delete from tbproduto where produto = '1000889';

/* Exercício, o funcionário matricula 00233 foi demitido */
delete from tabela_de_vendedores where matricula = '00233';
select * from tabela_de_vendedores;

/* Alterando uma tabela */
use sucos;
alter table tbproduto add primary key (produto);

/* Testando inserir um produto duplicado */
insert into tbproduto(
produto, nome, embalagem, tamanho, sabor, preco_lista)
values ('1078680', 'Frescor do Verão - 470 ml - Manga',
'Lata', '470 ml', 'Manga', 5.18);

