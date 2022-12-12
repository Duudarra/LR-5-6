Program maspyat;
const N=20;
var a, b: array [1..N] of integer;
var i, s1, s2: integer;
begin
  for i:=1 to N do
    begin
    a[i]:=random(100); 
        s1:=s1+a[i];
    b[i]:=random(100);
        s2:=s2+b[i];
    end;
    writeln ('исходные массивы:');
    for i:=1 to N do 
      write (a[i], ' ');
    writeln ('');
    for i:=1 to N do 
      write (b[i], ' ');
      writeln ('');
if s1<s2 then begin
  writeln ('сумма элементов меньше в первом массиве');
  writeln ('измененный масив:');
  for i:=1 to N do
    begin
    a[i]:=a[i]*10;
  write (a[i], ' ');
  end;
  end
  else begin
      writeln ('сумма элементов меньше во втором массиве');
  writeln ('измененный масив:');
  for i:=1 to N do
        begin
    b[i]:=b[i]*10;
      write (a[i], ' ');
    end;
    end;
end.