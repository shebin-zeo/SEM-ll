set serveroutput on
set verify off;

accept ran prompt 'Enter the range';
declare
area number;
pi constant number:=3.14;

ran number:=&ran;
begin

while ran<=ran
loop
accept radius_input prompt 'Enter the radius : ';
radius number:=&radius_input;
if (radius<=0)
then
dbms_output.put_line('Radius of circle must be greaterthan zero');
else


area:=pi*radius*radius;
dbms_output.put_line('Area =' || area);
ran:=ran+1;
end if;
end loop;
end;
/