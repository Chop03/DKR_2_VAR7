program fibonachi;
var f1, f2, z, n, a:integer;
arr1, arr2: array of integer;
flag : boolean;
begin
writeln('Введите число чисел последовательности: ');
read(a);
writeln('Вводите числа: ');
setlength(arr1, a);
setlength(arr2, a);
for i:integer:= 0 to a-1 do
begin
readln(n);
arr2[i]:=n;
end;
f1:=arr2[0]; arr1[0]:=f1;
f2:=arr2[1]; arr1[1]:=f2;
z:=f1+f2;
for i:integer:=2 to a-1 do
begin
arr1[i]:=z;
f1:=f2;
f2:=z;
z := f1+f2;
end;


flag := True;
for i:integer:=0 to a-1 do
if arr1[i] <> arr2[i] then begin flag := false; break; end;
if flag = True then writeln('Соответствует последовательности') else writeln('Не соответствует последовательности');
end.