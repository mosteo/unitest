with Ada.Strings.UTF_Encoding.Wide_Wide_Strings;
use Ada.Strings.UTF_Encoding.Wide_Wide_Strings;

with Ada.Text_IO;
with Ada.Wide_Wide_Text_IO;
with GNAT.IO;

with Modern;

package body Legacy is

   function Text return String is ("⚠🛈");

   procedure Run is
      package GIO renames GNAT.IO;
      package TIO renames Ada.Text_IO;
      package WIO renames Ada.Wide_Wide_Text_IO;
   begin
      GIO.Put_Line ("gio legacy->legacy: " & Legacy.Text);
      TIO.Put_Line ("tio legacy->legacy: " & Legacy.Text);
      WIO.Put_Line (Decode ("wio legacy->legacy: " & Legacy.Text));

      GIO.Put_Line ("gio legacy->modern: " & Modern.Text);
      TIO.Put_Line ("tio legacy->modern: " & Modern.Text);
      WIO.Put_Line (Decode ("wio legacy->modern: " & Modern.Text));
   end Run;

end Legacy;
