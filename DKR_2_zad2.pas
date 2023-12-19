var s,ps,new_s: string; poz,i,j : integer; f,p : boolean;
ST : array of char;

begin
  
  readln(s); // ввод строки
  readln(ps); // ввод подстроки
  
  for i := 1 to length(s) do begin // вычисление позиций подстроки
    if s[i] = ps[1] then for j := 1 to length(ps) do begin
      f := True;
      if s[i+j-1] <> ps[j] then begin f := False; break; end;
    end;
    if f = True then begin poz := i; break; end;
  end;
  
  SetLength(ST,length(s)+1); // создание и установление длины массива ST
  for i := 0 to length(s)-1 do ST[i] := s[i+1]; // ввод в массив ST строку s
  ST[length(s)] := ' '; // пробел в конец массива чтобы считывал в след. циклу
  
  for i := 1 to poz-1 do new_s := new_s + ST[i-1]; // ввод в новую строку до подстроки
  
  for i := poz-1 to poz+length(ps)-2 do begin // ввод подстроки без вторых вхождений
    if p = False then new_s := new_s + ST[i];
    if (ST[i] = ' ') and (p = True) then begin p := False; ST[i] := '.' end;
    if (ST[i] = ' ') and (p = False) then p := True;
  end;
  
  for i := poz+length(ps)+1 to length(s) do new_s := new_s + ST[i-1]; // ввод в новую строку после подстроки
  
  writeln(new_s) // вывод новой строки без каждых вторых вхождений в заданной подстроке
end.