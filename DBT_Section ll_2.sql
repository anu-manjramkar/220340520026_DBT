create table TEMPP12
(
side1 float,
side2 float,
side3 float,
meassage varchar(25)
);

delimiter //
create procedure demo9988(a1 float,b1 float,c1 float)
begin
		declare a boolean default false ;
        set a = FUNC1(a1,b1,c1);
        if(a=1) then
        insert into TEMPP12 values (a1,b1,c1,'Valid Triangle');
        else 
		insert into TEMPP12 values (a1,b1,c1,'Invalid Triangle');
        end if;
end ; //
delimiter ;
        
delimiter //
create function FUNC1( a float,b float,c float)
returns boolean
deterministic
begin
		declare x boolean;
		if(a<b+c) then
			if(b<a+c) then
				if(c<a+b) then 
					return true;
                 end if;
            end if;
				return false;
         end if;
end; //
delimiter ;        
  
  call demo9988(3,4,5);
  call demo9988(12,11,13);
    call demo9988(100,1,500);
  select * from tempp12;