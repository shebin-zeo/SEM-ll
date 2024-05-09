SET SERVEROUTPUT ON;
set VERIFY OFF;

-- Collect user choice using SQL*Plus
ACCEPT choice PROMPT 'Enter your choice (1-3):'
ACCEPT id PROMPT 'Enter the ID:'

-- User input handling
DECLARE
    user_choice NUMBER := &choice;
    id INT := &id;
    name VARCHAR2(50);
    age INT;
    address VARCHAR2(100);
    salary FLOAT;
BEGIN
    IF user_choice = 1 THEN
        -- Insert operation
        DBMS_OUTPUT.PUT_LINE('Insert operation selected.');
        DBMS_OUTPUT.PUT_LINE('Enter customer details:');
        
        ACCEPT name PROMPT 'Name:';
        ACCEPT age PROMPT 'Age:';
        ACCEPT address PROMPT 'Address:';
        ACCEPT salary PROMPT 'Salary:';
        
        INSERT INTO customer (id, name, age, address, salary)
        VALUES (id, '&name', &age, '&address', &salary);
        
    ELSIF user_choice = 2 THEN
        -- Update operation
        DBMS_OUTPUT.PUT_LINE('Update operation selected.');
        
        ACCEPT salary PROMPT 'Enter new salary:';
        
        UPDATE customer
        SET salary = &salary 
        WHERE id = id;
        
    ELSIF user_choice = 3 THEN
        -- Delete operation
        DBMS_OUTPUT.PUT_LINE('Delete operation selected.');
        
        DELETE FROM customer
        WHERE id = id;
        
    ELSE
        DBMS_OUTPUT.PUT_LINE('Invalid choice. Please enter 1, 2, or 3.');
    END IF;
END;
/
