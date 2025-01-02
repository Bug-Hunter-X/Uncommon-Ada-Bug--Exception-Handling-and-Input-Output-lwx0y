```ada
function Check_Range(Num : Integer) return Boolean is
begin
   return Num > 10;
exception
   when others =>
      Put_Line("Error: Invalid input or unexpected exception."); -- More informative error message
      return False; 
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Exceptions; use Ada.Exceptions;

procedure Main is
   Num : Integer;
   Result : Boolean;
   Input_Success : Boolean := True;
begin
   Put_Line("Enter an integer:");
   begin
      Get(Num);
   exception
      when Data_Error =>
         Put_Line("Error: Invalid input. Please enter an integer.");
         Input_Success := False;
   end;

   if Input_Success then
      Result := Check_Range(Num);
      if Result then
         Put_Line("Number is greater than 10");
      else
         Put_Line("Number is not greater than 10");
      end if;
   end if;
end Main;
```