const N = 20;
var
a: array [1..N] of integer;
i: integer;
begin
  i:=1;
  writeln ('исходный массив:');
  For i:=1 to N do
    read (a[i]);
  writeln;
  writeln ('измененный массив:');
  For i:=1 to N do
  begin
    if a[i]>0 then a[i]:=0 else
    a[i]:=sqr(a[i]);
    write (a[i], ' ')
  end;
end.