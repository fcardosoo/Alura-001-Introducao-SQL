/* Manipulando datas e campos lógicos */

use sucos;

alter table tbcliente add primary key (CPF);

alter table tbcliente add column (data_nascimento DATE);

insert into tbcliente (
cpf, nome, endereço1, endereço2, bairro, cidade, estado, cep, idade,
sexo, limite_credito, volume_compra, primeira_compra, data_nascimento)
values ('00388934505', 'João da Silva', 'Rua projetada A, numero 10', '', 'Vila Roman',
'Caratinga', 'Amazonas', '22222222', 30, 'M', 10000.00, 2000, 0, '1989-10-05');

/* delete from tbcliente where cpf = '00388934505'; */

select * from tbcliente;

/* Exercício, inserir o campo 'DATA_ADMISSÃO' e 'DE_FÉRIAS' */
select * from tabela_de_vendedores;
/*drop table tbvendedores;*/

create table tbvendedores
(matricula varchar(5),
nome varchar (100),
comissao float,
data_admissão date,
de_ferias bit
);
alter table tbvendedores add primary key (matricula);

select * from tbvendedores;

insert into tbvendedores(
matricula, nome, comissao, data_admissão, de_ferias
) values ('00235', 'Márcio Almeida Silva', 0.08, 
'2014-08-15',0);
insert into tbvendedores(
matricula, nome, comissao, data_admissão, de_ferias
) values ('00236', 'Cláudia Morais', 0.08, 
'2013-09-17',1);
insert into tbvendedores(
matricula, nome, comissao, data_admissão, de_ferias
) values ('00237', 'Roberta Martins', 0.11, 
'2017-03-18', 1);
insert into tbvendedores(
matricula, nome, comissao, data_admissão, de_ferias
) values ('00238', 'Péricles Alves', 0.11, 
'2016-08-21', 0);


alter table tbcliente add column (data_admissão date, de_férias );


