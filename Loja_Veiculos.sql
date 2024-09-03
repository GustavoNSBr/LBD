create database vendas_de_veiculos;
use vendas_de_veiculos;

create table funcionarios
(
	id int unsigned not null auto_increment,
    nome varchar(45) not null, 
    salario double not null default '0',
    departamento varchar(45) not null,
    primary key(id)
);

create table veiculos
(
	id_veiculo int unsigned not null auto_increment,
    marca varchar(10) not null,
    placa varchar(10) not null unique,
    valor double,
    modelo varchar(15),
    ano int not null,
    primary key(id_veiculo)
);

create table clientes
(
	id_cliente int unsigned not null auto_increment,
    nome varchar(45) not null,
    cnh varchar(20),
    tipo_cliente varchar (14) not null,
    check (tipo_cliente in ('Física', 'Jurídica')),
    cartao varchar(20),
    primary key(id_cliente)
);