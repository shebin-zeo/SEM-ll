set serveroutput on
set verify off;
ACCEPT radius_input PROMPT 'Enter the radius of circle : '
declare
area number;
pi constant number:=3.14;
radius number:=&radius_input;
begin
area:=pi*radius*radius;
dbms_output.put_line('Area = ' || area);
end;
/