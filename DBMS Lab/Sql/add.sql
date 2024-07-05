create or replace function cal(num1 number,num2 number)
return number
is 
addition number;
begin
addition :=num1+num2;
return addition;
end cal;
/
set serveroutput on
set verify off;
accept num1 prompt 'Enter two numbers';
accept num2;
declare
value1 number:=&num1;
value2 number:=&num2;
result number;
begin
result:=cal(value1,value2);
dbms_output.put_line('The addition of two number is ' || result);
end;
/