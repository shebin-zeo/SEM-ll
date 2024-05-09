-- Enable server output and turn off variable verification
set serveroutput on
set verify off;

-- Declare a variable to control the loop
column continue_input new_value continue_input;

-- Start loop to collect radius input and calculate the area
begin
  -- Default loop control to 'Y' to enter the loop
  while upper(nvl(continue_input, 'Y')) = 'Y' loop
    -- Ask for the radius
    accept radius_input prompt 'Enter the radius (must be greater than zero): ';
    
    -- Convert the radius to a number and handle exceptions
    declare
      radius number := to_number('&radius_input');  -- Convert user input to a number
      pi constant number := 3.14;  -- Constant for Pi
      area number;  -- Variable to store the area
    begin
      -- Check if the radius is valid
      if radius <= 0 then
        dbms_output.put_line('Error: Radius must be greater than zero.');
      else
        -- If valid, calculate the area
        area := pi * radius * radius;
        dbms_output.put_line('Area of the circle = ' || area);
      end if;
    end;

    -- Ask if the user wants to input another radius
    accept continue_input prompt 'Do you want to enter another radius? (Y/N): ';
  end loop;
end;
/
