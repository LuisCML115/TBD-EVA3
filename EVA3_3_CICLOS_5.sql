delimiter $$
create function calcular_potencia2(base int, expo int)
returns int deterministic
begin
	declare resu int default 0;
    declare cont int default 1;
    
 WHILE cont < expo DO
        SET resu = resu * base; 
        SET cont = cont + 1;
    END WHILE;

    RETURN resu; 
end$$
delimiter ;