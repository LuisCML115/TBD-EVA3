delimiter $$
create function calcular_potencia3(base int, expo int)
returns int deterministic
begin
	declare resu int default 1;
    declare cont int default 0;
    
    
    REPEAT
        SET resu = resu * base; 
        SET cont = cont + 1; 
    UNTIL cont >= expo
    END REPEAT;

    RETURN resu; 
end$$
delimiter ;