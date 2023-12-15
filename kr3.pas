uses Crt;

var
  i,n,x1,x2:integer;
  S1,S2,h,x:real;
  ent:char;
  
procedure
enter();
begin
  writeln('Нажмите Enter для продолжения...');
  repeat
  readln(ent);
  until ent = #13;
end;


procedure
proc1();
begin
  S1:=(power(x2,4)/2+2*power(x2,3)/3+x2*x2+12*x2)-(power(x1,4)/2+2*power(x1,3)/3+x1*x1+12*x1);
  writeln('Площадь фигуры равна ',S1);
  enter();
end;

procedure
proc2();
var
  j:integer;
begin
  write('Введите количество прямоугольников ');
  readln(n);
  S2:=0;
  x:=x2;
  h:=(x2-x1)/n;
  writeln('Шаг равен ',h);
  for j:=1 to n do
    begin
    S2:=S2+h*(2*(x*x*x)+2*(x*x)+2*x+12);
    x:=x-h;
    end;
  writeln('Площадь прямоугольника методом правых прямоугольников равна ',S2);
  enter;
end;

procedure
proc3();
begin
  write('Введите новые пределы интегрирования ');
  repeat
  readln(x1,x2);
  until
  x1 < x2;
  writeln('Теперь пределы интегрирования равны ',x1,' и ',x2);
  enter();
end;

procedure
proc4();
begin
  writeln('Погрешность равна ',abs(S1-S2));
  enter;
end;

begin
  repeat
  ClrScr;
  writeln('Площадь фигуры ограниченной кривой: 1.');
  writeln('Площадь фигуры методом правых прямоугольников: 2.');
  writeln('Пердели интегрирования: 3.');
  writeln('Погрешность: 4.');
  writeln('Выход: 0.');
  writeln('Пределы интегрирования равны ',x1,' и ',x2);
  write('Выберите программу ');
  readln(i);
  case i of
    1: proc1;
    2: proc2;
    3: proc3;
    4: proc4;
  end;
  until i=0;
end.
// 2*x^3+2*x^2+2*x+12
// power(x,4)/2+2*power(x,3)/3+x*x+12*x