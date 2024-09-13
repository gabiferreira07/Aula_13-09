create database exemplo_1e;
use exemplo_1e;

#criar tabela produtos
CREATE TABLE produtos(
	cod_prod integer PRIMARY KEY,
    nome varchar(30),
    preco numeric(10,2)
);

CREATE TABLE pedidos(
	cod_pedido integer PRIMARY KEY,
    cod_prod integer,
    qantidade integer,
    FOREIGN KEY(cod_prod) REFERENCES produtos(cod_prod)
);
