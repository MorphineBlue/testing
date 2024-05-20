delimiter //
drop procedure if exists randomInt;
create procedure randomInt(in lbound int, in ubound int, out res int)
begin
	set res = ceil(rand() * (ubound - lbound + 1));
end
//

call randomInt(1, 4, @res);
select @res;