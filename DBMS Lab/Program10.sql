-- Create a PL/SQL procedure that takes an array of radii and calculates the area of each circle
CREATE OR REPLACE PROCEDURE calculate_circle_areas(
  radii IN SYS.ODCINUMBERLIST  -- Using an Oracle built-in collection type for simplicity
)
AS
  pi CONSTANT NUMBER := 3.14159265359;  -- Constant value for pi
  radius NUMBER;  -- Variable to hold the current radius
  area NUMBER;  -- Variable to hold the calculated area
BEGIN
  -- Loop through the list of radii
  FOR i IN 1..radii.COUNT LOOP
    radius := radii(i);  -- Get the current radius from the array

    -- Check if the radius is valid (greater than or equal to zero)
    IF radius >= 0 THEN
      -- Calculate the area of the circle
      area := pi * radius * radius;

      -- Output the radius and the corresponding area
      DBMS_OUTPUT.PUT_LINE('Radius: ' || radius || ' -> Area: ' || area);
    ELSE
      -- Output a warning for invalid radius
      DBMS_OUTPUT.PUT_LINE('Invalid radius: ' || radius);
    END IF;
  END LOOP;
END;
/
