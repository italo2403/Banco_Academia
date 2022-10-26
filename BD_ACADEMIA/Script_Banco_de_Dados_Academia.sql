CREATE DATABASE academia;

USE academia;

CREATE TABLE IF NOT EXISTS instrutor(
Id_ins integer primary key auto_increment,
nome varchar(100) not null,
cpf varchar(16) not null unique
);

CREATE TABLE IF NOT EXISTS aluno(
Id_alu integer primary key auto_increment,
nome varchar(100) not null,
cpf varchar(16) not null unique,
telefone varchar(16) not null
);

CREATE TABLE IF NOT EXISTS turma(
Id_tur integer primary key auto_increment
);

CREATE TABLE IF NOT EXISTS matricula(
Id_mat integer primary key auto_increment
);
INSERT INTO matricula (Id_mat) values (123);

CREATE TABLE IF NOT EXISTS atividade(
Id_ati integer primary key auto_increment
);

alter table turma add Id_ins integer;
alter table turma add Id_alu integer;
alter table turma add Id_ati integer;
alter table aluno add Id_mat integer;

alter table turma add constraint Id_ins
foreign key(Id_ins) references instrutor(Id_ins);

alter table turma add constraint Id_alu
foreign key(Id_alu) references aluno(Id_alu);

alter table turma add constraint Id_ati
foreign key(Id_ati) references atividade(Id_ati);

alter table aluno add constraint Id_mat
foreign key(Id_mat) references matricula(Id_mat);

alter table instrutor add cref int(5);
INSERT INTO instrutor(nome, cpf, cref) values ('Italo', '123456789',1415);
select * from instrutor;

insert into aluno(nome, cpf, telefone,Id_mat) 
values ('Alfredo', '1234567890', '9999-9999', 123);
select * from aluno;

insert into turma( DSI03,Id_alu, Id_ati,Id_ins) values ('BD', 1, 1, 1);
alter table turma add DSI03 varchar(10);

alter table atividade add exercicio varchar(20);
insert into atividade (exercicio) values ('Musculação');

