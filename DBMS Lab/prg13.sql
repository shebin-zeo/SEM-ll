-- Enable DBMS_OUTPUT to view output
SET SERVEROUTPUT ON;
-- Disable additional verification of substitution variables
SET VERIFY OFF;

-- Prompt for user input and store it in a substitution variable
ACCEPT value PROMPT 'Enter the string: '

-- Declare PL/SQL block using the input value
DECLARE
    input_string VARCHAR2(100) := '&&value';  -- Use double ampersand to avoid re-prompting
    reversed_string VARCHAR2(100) := '';      -- To store the reversed string
    str_len NUMBER;                           -- To store the length of the input string
BEGIN
    -- Get the length of the input string
    str_len := LENGTH(input_string);

    -- Loop to construct the reversed string
    FOR i IN REVERSE 1..str_len LOOP
        reversed_string := reversed_string || SUBSTR(input_string, i, 1);  -- Append characters in reverse order
    END LOOP;

    -- Display the original and reversed strings
    DBMS_OUTPUT.PUT_LINE('Original String: ' || input_string);
    DBMS_OUTPUT.PUT_LINE('Reversed String: ' || reversed_string);
END;
/
