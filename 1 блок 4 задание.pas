Program oneblockthree;
const N=30;
var A,B: array [1..N] of integer;
var i, An, Bn: integer;
begin
  An:=30;
  writeln ('Исходный массив');
  for i:=1 to An do
    begin
    A[i]:=random(167)-99;
    write (A[i], ' ');
    end;
    writeln (' ');
    Bn:=0;
  for i:=1 to An do
    if A[i] mod 2 = 0 then
    begin
      Bn:=Bn+1;
      B[Bn]:=A[i];
    end;
    writeln ('массив с четными числами');
    for i:=1 to Bn do
      write (B[i], ' ');
end.