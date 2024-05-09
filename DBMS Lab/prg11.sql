-- This anonymous block calculates the factorial of a given number
set serveroutput on;
set verify off;
DECLARE
    input_number NUMBER;
    factorial NUMBER := 1; -- Initialize to 1, as 0! is 1
BEGIN
    -- Get user input
    DBMS_OUTPUT.PUT_LINE('Enter a number to find its factorial:');

    -- This is where you would insert a mechanism to capture user input.
    -- Since PL/SQL doesn't typically support interactive input, this example uses a bind variable
    -- and requires an environment that supports such interaction (like SQL*Plus, SQL Developer, etc.).
    EXECUTE IMMEDIATE 'BEGIN :1 := &input; END;' USING IN OUT input_number;

    IF input_number < 0 THEN
        DBMS_OUTPUT.PUT_LINE('Factorial is not defined for negative numbers.');
    ELSE
        -- Calculate the factorial
        FOR i IN 1..input_number LOOP
            factorial := factorial * i;
        END LOOP;

        DBMS_OUTPUT.PUT_LINE('Factorial of ' || input_number || ' is ' || factorial);
    END IF;
END;
/
