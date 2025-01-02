# Uncommon Ada Bug: Exception Handling and Input/Output

This repository demonstrates a potential bug related to exception handling and input/output operations in Ada.  The program takes an integer as input and checks if it's greater than 10. However, the exception handling and input processing may not behave as expected in all scenarios. 

## Bug Description

The `Check_Range` function includes a generic `others` exception handler. While this catches unexpected errors, it might mask specific errors that require different handling. The `Main` procedure uses `Get` for input. If the user inputs something other than an integer, unexpected behavior can result.  The solution demonstrates safer handling.