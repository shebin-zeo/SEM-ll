set serveroutput on;
set verify off;
accept value prompt 'Enter the number :';
declare
num number:=&value;

begin
 
    -- Determine if the number is odd or even
    IF MOD(num, 2) = 0 THEN
        DBMS_OUTPUT.PUT_LINE('The number ' || num || ' is even.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('The number ' || num || ' is odd.');


end if;
end;
/