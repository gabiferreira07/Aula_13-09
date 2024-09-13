create database empresa2_1e;
use empresa2_1e;

create table DEPARTAMENTO(
	dep_cod integer PRIMARY KEY,
    nome varchar(50)
);

create table FUNCIONARIO(
	fun_cod integer PRIMARY KEY,
    dep_cod integer,
    nome varchar(100),
    nascimento date,
    salario numeric(10,2),
	FOREIGN KEY(dep_cod) REFERENCES DEPARTAMENTO(dep_cod)
);

create table DEPENDENTE(
	depen_cod integer PRIMARY KEY,
    fun_cod integer,
    nome varchar(100),
    FOREIGN KEY(fun_cod) REFERENCES FUNCIONARIO(fun_cod)
);
    