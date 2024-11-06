delimiter $$
create function conversion_temp(formula int,numero int)
returns varchar(10) deterministic
begin
	declare resu varchar(10);
    case formula
		when 1 then set resu = numero + 273;
        when 2 then set resu = numero*1.8 + 32;
        when 3 then set resu = numero - 273;
		else
			set resu = "No valido";
	end case;
    return resu;
end$$
 delimiter ;