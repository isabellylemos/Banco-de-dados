create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias (
id bigint auto_increment,
receita varchar (255), #com ou sem receita
tipo varchar (255) not null, #pílula ou gotas
funcao varchar (255) not null,
primary key (id)
);
select * from tb_categorias;
drop table tb_categorias; #se quiser dropar
#preenchendo primeira tabela
insert tb_categorias (receita,tipo,funcao) values ('SEM RECEITA','gotas','antitérmico');
insert tb_categorias (receita,tipo,funcao) values ('SEM RECEITA', 'drágea', 'aliviar dor de cabeça');
insert tb_categorias (receita, tipo, funcao) values ('SEM RECEITA', 'pílula', 'anticoncepcional');
insert tb_categorias (receita, tipo, funcao) values ('COM RECEITA', 'líquido', 'antidepressivo');
insert tb_categorias (receita, tipo, funcao) values ('SEM RECEITA', 'comprimido', 'ATENÇÃO: CONTRAINDICADO PARA COVID-19');

select*from tb_categorias;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255) not null,
preco int (255) not null, 
desconto varchar (255),
uso varchar (255) not null,
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categorias (id)
);
drop table tb_produtos;
#preenchendo segunda tabela

#corrigir erros 
select*from tb_categorias;
select*from tb_produtos;
insert tb_produtos (nome, preco, desconto, uso, categoria_id) values ('Tylenol', 25, '10%','ADULTO',1);
insert tb_produtos (nome, preco, desconto, uso, categoria_id) values ('Cloroquina', 12,'ADULTO',5);
insert tb_produtos (nome, preco, desconto, uso, categoria_id) values ('Canabidiol', 150,'ADULTO',4);
insert tb_produtos (nome, preco, desconto, uso, categoria_id) values ('Ivermectina', 35,'ADULTO',5);
insert tb_produtos (nome, preco, desconto, uso, categoria_id) values ('Paroxetina', 31.99,'ADULTO',4);
insert tb_produtos (nome, preco, desconto, uso, categoria_id) values ('AAS', 25,'PEDIÁTRICO',1);
insert tb_produtos (nome, preco, desconto, uso, categoria_id) values ('Neolsaodina',8,'ADULTO',2);
insert tb_produtos (nome, preco, desconto, uso, categoria_id) values ('Diclofenaco monossódico',3,10,'ADULTO',1);


