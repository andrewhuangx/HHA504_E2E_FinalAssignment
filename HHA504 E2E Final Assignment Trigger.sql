show databases;
use e2e;
show tables;
select * from H1N1 limit 10;

delimiter $$
create trigger h1n1_concern_trigger before insert on H1N1
for each row
begin
if new.h1n1_concern >3 then
signal sqlstate '45000'
set message_text = 'H1N1 concern should be a numerical value between 0 and 3. Please try again.';
end if;
end; $$
delimiter ;

## Response Test

insert into H1N1(h1n1_concern) VALUE (4);

### Results: Error Code: 1644. H1N1 concern should be a numerical value between 0 and 3. Please try again.
