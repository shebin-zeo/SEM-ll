set serveroutput on;
set verify off;
accept radius prompt 'Enter the radius';
declare 
area number;
pi constant number:=3.14;
range1 number:=&ra;
radius:=&radius;
begin
if(radius<=0)
then 
dbms_output.put_line('Enter valid radius(>0)');
else
 
area:=pi*radius*radius;
 
end if;
end;
/
