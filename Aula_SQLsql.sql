CREATE DATABASE SUCOS;
/* drop database alura; */

CREATE TABLE tbCliente
(cpf varchar (11),
nome varchar (100),
endereço1 varchar (150),
endereço2 varchar (150),
bairro varchar (50),
cidade varchar (50),
estado varchar (50),
cep varchar (8),
idade smallint,
sexo varchar(1),
limite_Credito float,
volume_Compra float,
primeira_Compra bit(1));

create table tabela_de_vendedores
(matricula varchar (5),
nome varchar (100),
percentual_comissao float
);

create table db_Produto
(produto varchar (20) null,
nome varchar (150) null,
embalagem varchar (50) null,
tamanho varchar (50) null,
sabor varchar (50) null,
preco_lista float null);

/*Alterando o nome de uma tabela */
ALTER TABLE `sucos`.`db_produto` 
RENAME TO  `sucos`.`tbProduto` ;

insert into tbproduto(
produto, nome, embalagem, tamanho, sabor,
 preco_lista) values ( '1040107', 
'Light - 350 ml - Melancia',
'lata', '350 ml', 'Melancia', 4.56);

select * from tbproduto;

insert into tabela_de_vendedores (
matricula, nome, percentual_comissao) values (
'00233', 'Joao Geraldo da Fonseca', 0.10);

select * from tabela_de_vendedores;

insert into tbproduto(
produto, nome, embalagem, tamanho, sabor,
 preco_lista) values ( '1037797', 
'Clean - 2 Litros - Laranja',
'PET', '2 Litros', 'Laranja', 16.01);
insert into tbproduto(
produto, nome, embalagem, tamanho, sabor,
 preco_lista) values ( '1000889', 
'Sabor da Montanha - 700 ml - Uva',
'Garrafa', '700 ml', 'Uva', 6.31);
insert into tbproduto(
produto, nome, embalagem, tamanho, sabor,
 preco_lista) values ( '1004327', 
'Videira do Campo - 1,5 Litros - Melancia',
'PET', '1,5 Litros', 'Melancia', 19.51);
select * from tbproduto;

insert into tabela_de_vendedores (
matricula, nome, percentual_comissao)
values ('00235', 'Márcio Almeida Silva', 0.08);
insert into tabela_de_vendedores (
matricula, nome, percentual_comissao)
values ('00236', 'Cláudia Morais', 0.08);
select * from tabela_de_vendedores;

update tabela_de_vendedores set nome = 'Cláudia Morais'
where matricula = '00236';




USE sucos;
INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('544931', 'Frescor do Verão - 350 ml - Limão', 'PET', '350 ml','Limão',3.20);
INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);

/* Alterando valores em uma tabela*/
update tbproduto set embalagem = 'Lata', preco_lista = 2.46
where produto = '544931';
update tbproduto set embalagem = 'Garrafa'
where produto = '1078680';

update tabela_de_vendedores set percentual_comissao = 0.11
where matricula = '00236';

update tabela_de_vendedores set nome= 'José Geraldo da Fonseca Junior'
where matricula = '00233';

select * from tbproduto;

