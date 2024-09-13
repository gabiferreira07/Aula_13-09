create database empresa_db;

create user 'funcionario'@'localhost' identified by '123';
grant select on empresa_db.* to 'funcionario'@'localhost';
rename user 'funcionario'@'localhost' to 'assistente'@'localhost';
drop user 'assistente'@'localhost';


create user 'gerente'@'localhost' identified by '1234';
grant select on empresa_db.* to 'gerente'@'localhost';
grant insert on empresa_db.* to 'gerente'@'localhost';
grant update on empresa_db.* to 'gerente'@'localhost';
revoke insert on empresa_db.* from 'gerente'@'localhost';
alter user 'gerente'@'localhost' identified by 'nova_senha_gerente';

create user 'admin'@'localhost' identified by '12345';
grant all privileges on empresa_db.* to 'admin'@'localhost';

show grants for 'assistente'@'localhost';
show grants for 'gerente'@'localhost';
show grants for 'admin'@'localhost';
