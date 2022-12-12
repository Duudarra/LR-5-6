const N=20;
var
  m:array [1..N] of integer;
  i, l, p, a, b, s:int64;
Begin
  l:=0; p:=1; s:=0;
  writeln ('Исходный массив:');
  for i:=1 to N do
    begin
    m[i]:=random(116)-22;
    write (m[i], ' ');
    end;
    writeln;
    writeln ('введите промежуток');
    read (a, b);
    for i:=1 to N do
    begin
      if i mod 2<>0 then 
        if m[i] mod 2 = 0 then l:=l+1;
      if m[i]<>0 then p:=p*m[i]; 
    end;
    for i:=1 to N do
      begin
      if (m[i]>=a) and (m[i]<=b) then  
      s:=s+m[i];
      end;
    writeln('количество четных элементов массива, стоящих на нечетных местах: ', l);
    writeln('произведение нечетных элементов массива равно ', p);
    writeln('сумма элементов, принадлежащих промежутку [', a, ',', b, '] равна ', s);
end.