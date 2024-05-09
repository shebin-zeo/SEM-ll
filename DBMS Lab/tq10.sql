set serveroutput on
set verify off;
accept radius_input prompt 'Enter the radius : ';
declare
area number;
pi constant number:=3.14;
radius number:=&radius_input;
begin
if (radius<=0)
then
dbms_output.put_line('Radius of circle must be greaterthan zero');
else
area:=pi*radius*radius;
dbms_output.put_line('Area =' || area);
end if;
end;
/