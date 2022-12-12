var
a: array [1..20] of integer;
i, N, posmin, min, el, pos: integer;
begin
  N:=20;
  pos:=0;
  writeln('исходный массив: ');
  for i:=1 to N do
    begin
  a[i]:=random(101)-50;
  write (a[i], ' ');
    end;
i:=1;
if a[i]>0 then 
  begin
  el:=a[i];
  pos:=1;
  end
  else
  begin
repeat
  begin
    i:=i+1;
    end;
    until a[i]>0;
el:=a[i];
pos:=i;
end;   //нахождение первого положительного элемента и его позиции
writeln;
writeln('первый положительный элемент - ', el, ' и его позиция - ', pos);
    for i:=pos to N-1 do
      a[i]:=a[i+1];
    N:=N-1; //удаление первого положительного элемента
    
     i:=1;
  min:=a[1];
  repeat
  begin
    if min>a[i+1] then
        begin 
      min:=a[i+1];
      posmin:=i+1;
        end;
    i:=i+1;
  end;
until i=N; //нахождение наименьшего элемента
writeln('наименьший элемент - ', min, ' и его позиция - ', posmin);
    for i:=posmin to N-1 do
      a[i]:=a[i+1];
    N:=N-1;  //удаление наименьшего элемента
    writeln('измененный массив:');
    for i:=1 to N do
      write (a[i], ' ');

writeln;
end.