with Ada.Strings.UTF_Encoding.Wide_Wide_Strings;
use Ada.Strings.UTF_Encoding.Wide_Wide_Strings;

with Ada.Text_IO;
with Ada.Wide_Wide_Text_IO;
with GNAT.IO;

with Legacy;
with Modern;

procedure Unitest is
   package GIO renames GNAT.IO;
   package TIO renames Ada.Text_IO;
   package WIO renames Ada.Wide_Wide_Text_IO;
begin
   GIO.Put_Line ("gio main->legacy: " & Legacy.Text);
   TIO.Put_Line ("tio main->legacy: " & Legacy.Text);
   WIO.Put_Line (Decode ("wio main->legacy: " & Legacy.Text));

   Legacy.Run;
   Modern.Run;
end Unitest;
