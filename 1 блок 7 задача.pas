Program massem;
const N=20;
var a: array [1..N] of integer;
var i, l, mx:integer;
begin
  l:=1;
  writeln ('массив:');
  for i:=1 to N do
    begin
    a[i]:=random(100);
  write (a[i], ' ');
    end;
  writeln ('');
  i:=1; mx:=0;
    repeat
      if a[i]<a[i+1] then l:=l+1
      else 
        begin
      if l>mx then mx:=l;
      l:=1;
      end;
      i:=i+1;
      until i=N;
      writeln ('максимальная длина неубывающего участка: ', mx);
end.