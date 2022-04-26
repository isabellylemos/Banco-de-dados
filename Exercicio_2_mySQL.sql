
create database db_pizzaria_legal;

use db_pizzaria_legal;
#primeira tabela
create table tb_categorias (
id bigint auto_increment,
tamanho varchar (255) not null, #tamanhos da pizza: pequeno, médio, grande
descricao varchar (500) not null,
primary key (id) #chave primária
);
drop table tb_categorias; #se quiser dropar, é só executar!
select * from tb_categorias;
#inserindo informações na tabela de categorias das pizzas:
#pode ser com o into ou não! (insert into)
insert tb_categorias (tamanho, descricao) values ('Pequena','4 fatias');
insert tb_categorias (tamanho, descricao) values ('Média','6 fatias');
insert tb_categorias (tamanho, descricao) values ('Grande','8 fatias');
insert tb_categorias (tamanho, descricao) values ('Extra grande','12 fatias');
insert tb_categorias (tamanho, descricao) values ('Exagerada','18 fatias');
select * from tb_categorias;
#segunda tabela 
create table tb_pizzas (
id bigint auto_increment,
massa varchar (255) not null, #tipo de massa, fina ou normal;
preco int (255) not null, #preco da pizza
borda varchar (255) not null, #borda rechada ou simples
sabor varchar (255) not null, #sabor pizza
categoria_id bigint not null, 
primary key (id),
foreign key (categoria_id) references tb_categorias (id)
);
#QUANDO CRIEI COM INT NO PREÇO, DEU WARNING! PERGUNTAR DEPOIS
drop table tb_pizzas; 
select * from tb_categorias;
select*from tb_pizzas;
#massa, preco, borda, sabor, e agora a categoria_id, variável criada para referenciar o tipo da pizza (vindo da tabela tb_categorias);
insert tb_pizzas (massa,preco,borda,sabor,categoria_id) values ('fina',75,'simples','frango',3); 
insert tb_pizzas (massa,preco,borda,sabor,categoria_id) values ('fina',65,'recheada com cheddar','mussarela',5);
insert tb_pizzas (massa,preco,borda,sabor,categoria_id) values ('grossa',70,'simples','quatro queijos',4);
insert tb_pizzas (massa,preco,borda,sabor,categoria_id) values ('grossa',85,'rechada com cheddar','charque',2);
insert tb_pizzas (massa,preco,borda,sabor,categoria_id) values ('fina',95,'tradicional','camarão',4);
insert tb_pizzas (massa,preco,borda,sabor,categoria_id) values ('grossa',70,'tradicional','portuguesa',4);
insert tb_pizzas (massa,preco,borda,sabor,categoria_id) values ('grossa',55,'recheada cheddar','presunto',3);
insert tb_pizzas (massa,preco,borda,sabor,categoria_id) values ('fina',60,'tradicional','queijo com espinafre',5);

select*from tb_categorias;
select*from tb_pizzas;

select * from tb_pizzas where preco > 45;
select * from tb_pizzas where preco < 45; #extra
select * from tb_pizzas where preco >= 50 and preco <= 100;
select sabor from tb_pizzas where sabor like "%M%"; 

select tb_pizzas.massa, tb_pizzas.preco, tb_categorias.tamanho, tb_categorias.descricao from 
tb_pizzas inner join tb_categorias on tb_categoria.id = tb_pizzas = tb_categorias.categoria_id;





