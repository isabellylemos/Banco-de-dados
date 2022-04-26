create database db_game;

use db_game; 

create table tb_classes(
id bigint auto_increment,
classe varchar (255) not null, 
descricao varchar (1000), #descrição não é obrigatória, por isso vai sem o not null.
primary key (id)
);

insert tb_classes (classe,descricao) values 
('mago(a/e)','Tem como características principais a Inteligência, que é usado para conjurar suas magias');
insert into tb_classes (classe,descricao) values 
('guerreiro(a/e)','São exímios lutadores marciais, sempre prontos para o combate. Possuem extremas habilidades de combate.' );
insert into tb_classes (classe,descricao) values 
('elfo(a/e)','Eram divindades maiores da natureza e da fertilidade. Os elfos são geralmente mostrados como jovens de grande beleza vivendo entre as florestas' );
insert into tb_classes (classe,descricao) values 
('arqueiro(a/e)','Um arqueiro é um verdadeiro mestre no uso de arco, e nem mesmo um guerreiro muito experiente pode se igualar as suas capacidades.' );
insert into tb_classes (classe,descricao) values 
('ninja','É um agente secreto ou mercenário especializado em artes marciais de guerra não ortodoxas.' );

#criando outra tabela para relacionar com a primeira!

create table tb_personagens (
id bigint auto_increment, 
nome varchar(255) not null, #sabor da pizza
cidade varchar (255) not null, #
ataque int not null, #preço da pizza
defesa int not null, #
#quando for referenciar outra tabela, sempre tem que ser o mesmo tipo!!!
#classe_id é uma variável para pegar a informação da outra tabela! pode ser qualquer nome... mas é bom dar o nome da outra tabela
classe_id bigint not null, #classe criada, not null para ser obrigatório colocar a classe!
primary key (id),
#aqui será feita a relação entre as duas tabelas! o número referente a opção será equivalente aquele na primeira tabela.
#por ex, se o número 3 for selecionado, será escolhido o personagem 3.
#a foreing key é a o atributo criado logo acima!
foreign key (classe_id) references tb_classes (id)
);
#mostrando tabela que foi feita
select *  from tb_classes; 
select * from tb_personagens;
#criando personagens
#pode ser aspas simples também
insert into tb_personagens (nome,cidade,ataque,defesa,classe_id) values ("Kemelly",'Paulista',5000,5000,2);
#é possívei inserir informações em texto com aspas simples ou duplas.
insert into tb_personagens (nome,cidade,ataque,defesa,classe_id) values ('Thor', 'Asgard',3000, 5000,1);
insert into tb_personagens (nome,cidade,ataque,defesa,classe_id) values ('Chapolin','Atenas',3000, 5000,5);
insert into tb_personagens (nome,cidade,ataque,defesa,classe_id) values ('Xena', 'Atenas',3000, 5000,5);
insert into tb_personagens (nome,cidade,ataque,defesa,classe_id) values ('Xena', 'Atenas',3000, 5000,4);
insert into tb_personagens (nome,cidade,ataque,defesa,classe_id) values ('Docinho', 'Towsville',4000, 500,4);
insert into tb_personagens (nome,cidade,ataque,defesa,classe_id) values ('Lindinha', 'Towsville',4000, 500,4);

#mostrando ambas as tabelas criadas!
select * from tb_classes;
select * from tb_personagens;

#pesquisando informações 
#atualizando informação

update tb_personagens set cidade = 'Mexico' where id = 5;

#usando peradores lógicos para procurar informações na tabela!
#and = e, or = ou;
select * from tb_personagens where ataque <= 3000 and ataque < 1000;

select * from tb_personagens where ataque <= 3000 or ataque < 1000;

#vamos juntar tabelas... (procurando por informações específicas)

#lógica: select (selecionando) tb_personagens.nome (o que vem depois do ponto é o atributo) sendo igual para todos os atributos...
# from (de onde?, da tabela que eu quiser, neste caso da tabela personagens, inner join (junte as tabelas) (de onde? da tabela classes) on tb_classes.id = tb_personagens.classe_id; 
select tb_personagens.nome, tb_personagens.ataque, tb_classes.classe, tb_classes.descricao from
tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classe_id;
#pegando todos
#inner join junta ambas as tabelas 
#neste caso, não foi especificado nenhum atributo! foram selecionadas todas informações (atributos)

select * from tb_personagens 
#neste caso, o tb_classes.id = tb_personagens.classe_id; está dizendo de onde as informações serão retiradas!
#por exemplo, se houvesse mais de uma tabela 
inner join tb_classes on tb_classes.id = tb_personagens.classe_id;

#se quiser priorizar a ordem de tabelas, é só inserir o rigth ou left antes do join

select * from tb_personagens left join tb_classes on tb_classes.id = tb_personagens.classe_id;

select * from tb_personagens right join tb_classes on tb_classes.id = tb_personagens.classe_id;

#só irá mudar a ordem do que se quer. A utilidade não é ''tanta''.


