create user 'usuario'@'localhost' identified by '1234';

rename user 'usuario'@'localhost' to 'user'@'localhost';

drop user 'user'@'localhost';

select user, host from MYSQL.user;

alter user 'usuario'@'localhost' identified by '4321';

#CONCEDER ACESSO 
grant all privileges on empresa2_1e to 'usuario'@'localhost';

show grants for 'usuario'@'localhost';

revoke all privileges on empresa2_1e from 'usuario'@'localhost';

grant insert on empresa2_1e.* to 'usuario'@'localhost';

grant select on empresa2_1e.* to 'usuario'@'localhost';

grant delete on empresa2_1e.* to 'usuario'@'localhost';

grant update on empresa2_1e.* to 'usuario'@'localhost';