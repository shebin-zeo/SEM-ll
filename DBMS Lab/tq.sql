declare
area number(6,2);
pi constant number(3,2) :=3.14;
radius number(5):=3;
begin
area :=pi*radius*radius;
dbms_output.put_line('Area = ' || area);
end;
/
set serveroutput on
