with Ada.Strings.UTF_Encoding.Wide_Wide_Strings;
use Ada.Strings.UTF_Encoding.Wide_Wide_Strings;

with Ada.Text_IO;
with Ada.Wide_Wide_Text_IO;
with GNAT.IO;


package body Modern is

   function Text return String is (Encode ("⚠🛈")); -- UTF8 string

   procedure Run is
      package GIO renames GNAT.IO;
      package TIO renames Ada.Text_IO;
      package WIO renames Ada.Wide_Wide_Text_IO;
   begin
      GIO.Put_Line ("gio modern->modern: " & Modern.Text);
      TIO.Put_Line ("tio modern->modern: " & Modern.Text);
      WIO.Put_Line (Decode ("wio modern->modern: " & Modern.Text));
   end Run;

end Modern;
