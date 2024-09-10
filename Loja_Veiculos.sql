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

create table veiculo_venda
(
    id_venda int unsigned not null auto_increment,
    valor_venda double not null,
    data_venda date not null,
    id_cliente int unsigned not null,
    id_funcionario int unsigned not null,
    primary key(id_venda),
    constraint fk_cliente_id foreign key (id_cliente) references clientes(id_cliente),
	constraint fk_funcionario_id foreign key (id_funcionario) references funcionarios(id)
);

insert into funcionarios (nome, salario, departamento)
values ('Joao', 3000.00, 'vendas');

insert into funcionarios (nome, salario, departamento)
values ('Tiago', 2500.00, 'vendas');

insert into funcionarios (nome, salario, departamento)
values ('Pedro', 2000.00, 'vendas');

insert into funcionarios (nome, salario, departamento)
values ('Marcos', 1600.00, 'vendas');

insert into funcionarios (nome, salario, departamento)
values ('Paulo', 10000.00, 'vendas');

insert into clientes (nome, cnh, tipo_cliente)
values ('Adalberto', 987456321, 'Física');

insert into clientes (nome, cnh, tipo_cliente)
values ('Alexandre', 876543219, 'Física');

insert into clientes (nome, cnh, tipo_cliente)
values ('Drive-Alugue', 765432198, 'Jurídica');

insert into clientes (nome, cnh, tipo_cliente)
values ('Jorge', 654321987, 'Física');

insert into clientes (nome, cnh, tipo_cliente)
values ('Abraao', 543219876, 'Física');

insert into veiculos (marca, placa, modelo, valor, ano)
values ('Hyundai','DRH5J02','HB20','75900.00', 2023);

insert into veiculos (marca, placa, modelo, valor, ano)
values ('Fiat','DRH5G78','Argo','85900.00', 2024);

insert into veiculos (marca, placa, modelo, valor, ano)
values ('Chevrolet','PJJ5E78','Onix','71600.00', 2022);

select * from veiculos;


