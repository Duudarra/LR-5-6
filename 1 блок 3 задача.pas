const N = 20;
var
a: array [1..N] of integer;
i,hx, hn, max, min, p: integer;
begin
  writeln('исходный массив');
  for i:=1 to N do
    begin
  a[i]:=random(118)-52;
  write(a[i], ' ');
  if a[i] mod 5 = 0 then p:=i;
  end;
  i:=1;
  max:=a[1];
  min:=a[1];
repeat
  begin
    if max<a[i+1] then 
        begin
      max:=a[i+1];
      hx:=i+1;
        end;
    if min>a[i+1] then
        begin 
      min:=a[i+1];
      hn:=i+1;
        end;
    i:=i+1;
  end;
until i=N;
Writeln;
writeln('максимальный элемент массива и его номер: ', max, ' ',hx);
writeln('минимальный элемент массива и его номер: ', min, ' ', hn);
writeln('номер последнего элемента массива, кратного 5 - ', p);
end.