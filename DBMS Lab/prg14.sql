-- Create a function to compute the maximum of two numbers
CREATE OR REPLACE FUNCTION max_of_two(
    a IN NUMBER,
    b IN NUMBER
) RETURN NUMBER IS
BEGIN
    -- Return the larger of the two numbers
    IF a > b THEN
        RETURN a;
    ELSE
        RETURN b;
    END IF;
END;
/
-- Find the maximum of two numbers using the function
accept value1 prompt 'Enter first number : ';
accept value2 prompt 'Enter second number : ';
DECLARE
    num1 NUMBER := &value1;
    num2 NUMBER := &value2;
    max_value NUMBER;
BEGIN
    -- Call the function to compute the maximum
    max_value := max_of_two(num1, num2);

    -- Display the maximum value
    DBMS_OUTPUT.PUT_LINE('The maximum of ' || num1 || ' and ' || num2 || ' is: ' || max_value);
END;
/
