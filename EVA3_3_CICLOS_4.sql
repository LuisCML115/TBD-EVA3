delimiter $$
create function calcular_potencia(base int, expo int)
returns int deterministic
begin
	declare resu int default 1;
    declare cont int default 0;
    
    miope: loop
		  IF cont >= expo THEN
            LEAVE miope;
          end if;
        set resu = resu * base; 
        set cont = cont + 1;
    end loop;
return resu;
end$$
delimiter ;