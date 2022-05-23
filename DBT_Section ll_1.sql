create table TEMPP
(
string1 varchar(20),
string2 varchar(20),
message varchar(20)
);

delimiter //
create procedure PROC1(str1 varchar(20),str2 varchar(20))
begin
		declare x int;
        set x=instr(str2,str1);
        if(x=0) then
			insert into TEMPP values (str1,str2,'Not Present');
        else	
			insert into TEMPP values (str1,str2,'Present');
        end if;    
end; //
delimiter ;  

call PROC1('DAC','CDAC');   
call PROC1('GHAR','KHARGHAR');  
select * from TEMPP;        
