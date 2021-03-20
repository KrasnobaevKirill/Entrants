unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Menus;

type
 anketa=record
  fio:string[45];
  adress:string[30];
  lgota:string;
  balls:Integer;
  dir:string;
 end;

 pnt=^list;
 list=record
  inf:anketa;
  link:pnt;
 end;


  TForm1 = class(TForm)
    pnl1: TPanel;
    edt1: TEdit;
    lbl1: TLabel;
    btn1: TButton;
    edt2: TEdit;
    lbl2: TLabel;
    StringGrid: TStringGrid;
    rg1: TRadioGroup;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    cbb1: TComboBox;
    lbl7: TLabel;
    btn2: TButton;
    btn4: TButton;
    pnl2: TPanel;
    btn5: TButton;
    edt6: TEdit;
    lbl8: TLabel;
    btn6: TButton;
    btn7: TButton;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    btn8: TButton;
    N5: TMenuItem;
    N6: TMenuItem;
    savedialog: TSaveDialog;
    opendialog: TOpenDialog;
    N7: TMenuItem;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N7Click(Sender: TObject);


  private
    { Private declarations }
        procedure firstelement;
        procedure print;
  public
     cur1:pnt;
    { Public declarations }
  end;

var
  Form1: TForm1;
  f,head:pnt;
  a,b,c,sum:Integer;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, unit8;


{$R *.dfm}

procedure tform1.print;    //Вывод в таблицу
var
  i:integer;
  f1:pnt;
begin
   f1:=head;
     for i:=1 to StringGrid.RowCount-1 do
StringGrid.Rows[i].Clear;

 i:=1;
  while f1<>nil do
  begin
  StringGrid.cells[0,i]:=IntToStr(i);
  StringGrid.cells[1,i]:=f1^.inf.fio;
  StringGrid.cells[2,i]:=f1^.inf.adress;
  StringGrid.Cells[5,i]:=f1^.inf.lgota;
  StringGrid.Cells[3,i]:=inttostr(f1^.inf.balls);
  StringGrid.Cells[4,i]:=f1^.inf.dir;
  inc(i);
  f1:=f1^.link;
  end;
end;

procedure Tform1.firstelement;   //Добавление первого элемента
begin
 if (Length(edt3.Text)=0) or (Length(edt4.Text)=0) or
    (Length(edt5.Text)=0) then
    ShowMessage('Введите корректные данные')
    else
    begin
    a:=StrToInt(edt3.Text);
    b:=StrToInt(edt4.Text);
    c:=StrToInt(edt5.Text);
    sum:=a+b+c;

if (Length(edt1.Text)<>0) and (Length(edt2.Text)<>0) and
    (cbb1.ItemIndex<>-1) and
    ((a<101)and(a>0)) and((b<101)and(b>0))and((c<101)and(c>0)) then
  begin
    new(f);
    head:=f;
    f^.inf.fio:=edt1.Text;
    f^.inf.adress:=edt2.Text;
    if rg1.ItemIndex=0 then
    f^.inf.lgota:='Отсутствует';
    if rg1.ItemIndex=1 then
    f^.inf.lgota:='Инвалидность';
    if rg1.ItemIndex=2 then
    f^.inf.lgota:='Сирота';
    if rg1.ItemIndex=3 then
    f^.inf.lgota:='Целевой набор';
    a:=StrToInt(edt3.Text);
    b:=StrToInt(edt4.Text);
    c:=StrToInt(edt5.Text);
    sum:=a+b+c;
    f^.inf.balls:=sum;
    if cbb1.ItemIndex=0 then
    f^.inf.dir:='02.03.03 "МОиАИС"';
    if cbb1.ItemIndex=1 then
    f^.inf.dir:='09.03.01 "Инф-ка и выч. техника"';
    if cbb1.ItemIndex=2 then
    f^.inf.dir:='09.03.04 "Программная инженерия"';
    if cbb1.ItemIndex=3 then
    f^.inf.dir:='09.03.03 "Прикладная информатика"';
    f^.link:=nil;
    StringGrid.RowCount:=StringGrid.RowCount+1;
  end
  else
  ShowMessage('Введите корректные данные');
  end;
end;


procedure TForm1.btn1Click(Sender: TObject);    //Добавление в список
begin

 if head=nil then
  firstelement
 else
 begin
    if (Length(edt3.Text)=0) or (Length(edt4.Text)=0) or
    (Length(edt5.Text)=0) then
    ShowMessage('Введите корректные данные')
    else
    begin
    a:=StrToInt(edt3.Text);
    b:=StrToInt(edt4.Text);
    c:=StrToInt(edt5.Text);
    sum:=a+b+c;

 if (Length(edt1.Text)<>0) and (Length(edt2.Text)<>0) and
    (cbb1.ItemIndex<>-1) and
    ((a<101)and(a>0)) and((b<101)and(b>0))and((c<101)and(c>0)) then
  begin
    new(f^.link);
    f:=f^.link;
    f^.inf.fio:=edt1.Text;
    f^.inf.adress:=edt2.Text;
    if rg1.ItemIndex=0 then
    f^.inf.lgota:='Отсутствует';
    if rg1.ItemIndex=1 then
    f^.inf.lgota:='Инвалидность';
    if rg1.ItemIndex=2 then
    f^.inf.lgota:='Сирота';
    if rg1.ItemIndex=3 then
    f^.inf.lgota:='Целевой набор';

    f^.inf.balls:=sum;
    if cbb1.ItemIndex=0 then
    f^.inf.dir:='02.03.03 "МОиАИС"';
    if cbb1.ItemIndex=1 then
    f^.inf.dir:='09.03.01 "Инф-ка и выч. техника"';
    if cbb1.ItemIndex=2 then
    f^.inf.dir:='09.03.04 "Программная инженерия"';
    if cbb1.ItemIndex=3 then
    f^.inf.dir:='09.03.03 "Прикладная информатика"';
    f^.link:=nil;
    StringGrid.RowCount:=StringGrid.RowCount+1;
  end
  else
  ShowMessage('Введите корректные данные');
 end;
 end;
 print;
end;



procedure TForm1.FormShow(Sender: TObject); // Заполнение заголовков
begin
   StringGrid.ColWidths[0]:=40;
   stringgrid.colwidths[3]:=130;
   StringGrid.ColWidths[5]:=180;
   StringGrid.ColWidths[1]:=250;
   stringgrid.colwidths[4]:=220;
   StringGrid.ColWidths[2]:=240;
   StringGrid.Cells[0,0]:='№';
   StringGrid.Cells[1,0]:='Ф.И.О';
   StringGrid.Cells[2,0]:='Адрес';
   StringGrid.Cells[3,0]:='Сумма баллов';
   StringGrid.Cells[4,0]:='Направление';
   StringGrid.Cells[5,0]:='Льгота';
end;


procedure TForm1.btn2Click(Sender: TObject);     // Сортировка
 var
 i,j,k:integer;
 fio2:string;
 adress2:string;
 lgota2:string;
 balls2:Integer;
 dir2:string;
begin
 if head=nil then
 Showmessage ('Список пуст')
 else  begin
 f:=head;
 i:=0;
 repeat
  inc(i);
  f:=f^.Link;
 until f=nil;
 for j:=1 to i-1 do
  begin
   f:=head;
   for k:=1 to i-1 do
    begin
     If f^.Inf.fio>f^.link^.Inf.fio then
      begin
       fio2:=f^.inf.fio;
       adress2:=f^.inf.adress;
       lgota2:=f^.inf.lgota;
       balls2:=f^.inf.balls;
       dir2:=f^.inf.dir;

       f^.Inf.fio:=f^.link^.Inf.fio;
       f^.Inf.adress:=f^.link^.Inf.adress;
       f^.Inf.lgota:=f^.link^.Inf.lgota;
       f^.Inf.balls:=f^.link^.Inf.balls;
       f^.Inf.dir:=f^.link^.Inf.dir;

       f^.Link^.Inf.fio:=fio2;
       f^.Link^.Inf.adress:=adress2;
       f^.Link^.Inf.lgota:=lgota2;
       f^.Link^.Inf.balls:=balls2;
       f^.Link^.Inf.dir:=dir2;
      end;
     f:=f^.Link;
    end;
  end;
  end;
   print;//отображение в таблицу
end;


procedure TForm1.btn4Click(Sender: TObject);    // Информация о специальностях
begin
   form2.showmodal;
end;


procedure TForm1.btn5Click(Sender: TObject);  //Удаление по порядковому номеру
var
  numdel,i:Integer;
  Cur,rab:pnt;
begin

   if edt6.Text<>'' then
   begin
   numdel:=StrToInt(edt6.Text);
   if numdel<1 then
   ShowMessage('Введите корректные данные')
      else
      begin
  if head=nil then                  // Поиск элемента
   begin
     ShowMessage('Список пуст');
     exit;
   end;
   i:=1;
   cur:=head;
   while (cur<>nil) and (i<>numdel) do
   begin
     cur:=cur^.link;
     inc(i);
   end;
  if cur=nil then
   begin
    ShowMessage('Абитуриента с порядковым номером ' + inttostr(numdel) + ' нет в списке.');
    exit;
   end;


     if cur=head then       // Удаление элемента
       begin
        head:=cur^.link;
        Dispose(cur);
        StringGrid.RowCount:=StringGrid.RowCount-1;
        end
     else
      begin
         rab:=head;
        while rab^.link<>cur do
         rab:=rab^.link;
        rab^.link:=cur^.link;
        Dispose(cur);
        StringGrid.RowCount:=StringGrid.RowCount-1;
       end;

    print;
    end;
    end else ShowMessage('Введите корректные данные');
end;



procedure TForm1.btn6Click(Sender: TObject);    // Очистка всего списка

begin
if head<>nil then
  begin
   f:=head;
   While f<>nil do
    begin
     f:=head^.Link;
     Dispose(head);
     StringGrid.RowCount:=StringGrid.RowCount-1;
     head:=f;
    end;
end else ShowMessage('Список пуст');
print;
end;


procedure TForm1.btn7Click(Sender: TObject);   // Вывод "популярности"
type
  rec=record
   napr:string;
   kol:Integer;
   end;
   pnt1=^list1;
 list1=record
  inf:rec;
  link:pnt1;
 end;
var
  i,gkol,k,kol1,kol2,kol3,kol4,j:integer;
  g,ghead:pnt1;
  f1:pnt;
  gnapr:string;
begin
     kol1:=0;
     kol2:=0;
     kol3:=0;
     kol4:=0;
     f1:=head;
     while f1<>nil do
     begin
       if f1.inf.dir='02.03.03 "МОиАИС"' then
       Inc(kol1);
       if f1.inf.dir='09.03.01 "Инф-ка и выч. техника"' then
       Inc(kol2);
       if f1.inf.dir='09.03.04 "Программная инженерия"' then
       Inc(kol3);
       if f1.inf.dir='09.03.03 "Прикладная информатика"' then
       Inc(kol4);
       f1:=f1^.link;
     end;

     New(g);
     ghead:=g;
     g^.inf.napr:='02.03.03 "МОиАИС"';
     g^.inf.kol:=kol1;
     g^.link:=nil;

     New(g^.link);
     g:=g^.link;
     g^.inf.napr:='09.03.01 "Инф-ка и выч. техника"';
     g^.inf.kol:=kol2;
     g^.link:=nil;

     New(g^.link);
     g:=g^.link;
     g^.inf.napr:='09.03.04 "Программная инженерия"';
     g^.inf.kol:=kol3;
     g^.link:=nil;

     New(g^.link);
     g:=g^.link;
     g^.inf.napr:='09.03.03 "Прикладная информатика"';
     g^.inf.kol:=kol4;
     g^.link:=nil;

  for j:=1 to 3 do
  begin
   g:=ghead;
   for k:=1 to 3 do
    begin
     If g^.inf.kol<g^.link^.inf.kol then
      begin
       gkol:=g^.inf.kol;
       gnapr:=g^.inf.napr;

       g^.Inf.kol:=g^.link^.Inf.kol;
       g^.Inf.napr:=g^.link^.Inf.napr;

       g^.Link^.Inf.kol:=gkol;
       g^.Link^.Inf.napr:=gnapr;

      end;
     g:=g^.Link;
    end;
  end;


      for i:=1 to form3.StringGrid1.RowCount-1 do
      Form3.StringGrid1.Rows[i].Clear;

      Form3.stringGrid1.ColWidths[0]:=40;
   Form3.stringGrid1.colwidths[1]:=240;
   Form3.stringGrid1.ColWidths[2]:=160;
   Form3.stringGrid1.Cells[0,0]:='№';
   Form3.stringGrid1.Cells[1,0]:='Направление';
   Form3.stringGrid1.Cells[2,0]:='Количество абитуриентов';
   g:=ghead;
 i:=1;
  while g<>nil do
  begin
  form3.StringGrid1.cells[0,i]:=IntToStr(i);
  form3.StringGrid1.cells[1,i]:=g.inf.napr;
  form3.StringGrid1.cells[2,i]:=IntToStr(g.inf.kol);
  inc(i);
  g:=g^.link;
  end;
   Form3.ShowModal;
  end;



procedure TForm1.btn8Click(Sender: TObject);
begin
form4.ShowModal;
end;


procedure TForm1.N5Click(Sender: TObject);     //иногородние
var
  cur:pnt;
  j,k:Integer; //j -Рязанские , k - Всего
  q,q1:Real;  // q - иногородние; q1 -  рязанские
   alfa:real; //Угол
  x0,y0:integer;//центр диаграммы
  wx,wy:integer;//первая точка
  x1,y1:integer;//вторая точка
  r:integer;//радиус
begin
  if head<>nil then
  begin
   cur:=head;
   k:=0;
   j:=0;
   while cur<>nil do
   begin
     if (cur^.inf.adress='Рязань') or (cur^.inf.adress='рязань') then
     inc(j);
     cur:=cur^.link;
     Inc(k);
   end;
    q1:=(j/k)*100;  //процент рязанских
     q:=100-q1;  // процент иногородних

Form5.img1.Height:=200;
Form5.img1.Width:=200;
x0:=Form5.img1.Width div 2;
y0:=Form5.img1.Height div 2; //центр
r:=Form5.img1.Width div 2;
wx:=x0+r;wy:=y0; //певая точка
alfa:=(2*Pi*q)/100;//альфа
x1:=round(x0+r*cos(alfa));
y1:=round(y0+r*sin(alfa));

with form5.img1.Canvas do
  begin
    brush.color:=cllime;
    Pie(x0-r,y0-r,x0+r,y0+r,x1,y1,wx,wy);
    if q<>100 then
    brush.color:=clteal;
    Pie(x0-r,y0-r,x0+r,y0+r,wx,wy,x1,y1);
  end;

  with form5.img2.Canvas do
 begin
  brush.Color:=clteal;
  Rectangle(40,30,70,60);
  brush.Color:=cllime;
  Rectangle(40,100,70,130);
end;
Form5.lbl3.Caption:=(FloatToStrF(q1,ffFixed,3,1)+' '+'%');
Form5.lbl4.Caption:=(FloatToStrF(q,ffFixed,3,1)+' '+'%');
Form5.ShowModal;
end
else ShowMessage('Список пуст');

end;


procedure TForm1.N6Click(Sender: TObject);     //льготники
var
  cur:pnt;
  p1,p2,p3,p4,k:Integer; //j -без льготы , k - Всего
  q,q1:Real;  // q - льготники; q1 -  без льготы
   ps1,ps2,ps3,ps4:real; //Угол
  x0,y0:integer;//центр диаграммы
  wx,wy:integer;//первая точка
  x1,y1,x2,y2,x3,y3:integer;//вторая точка
  r:integer;//радиус
begin
  if head<>nil then
  begin
   cur:=head;
   k:=0;
   p1:=0;
   p2:=0;
   p3:=0;
   p4:=0;
   while cur<>nil do
   begin
     if cur^.inf.lgota='Отсутствует' then
     inc(p1);
     if cur^.inf.lgota='Инвалидность' then
     inc(p2);
     if cur^.inf.lgota='Сирота' then
     inc(p3);
     if cur^.inf.lgota='Целевой набор' then
     inc(p4);
     cur:=cur^.link;
     Inc(k);
   end;

  Form6.img1.Height:=200;
Form6.img1.Width:=200;
x0:=Form6.img1.Width div 2;
y0:=Form6.img1.Height div 2; //центр
r:=Form6.img1.Width div 2;


wx:=x0+r;wy:=y0; //певая точка
ps1:=2*pi*p1/k;//альфа
x1:=round(x0+r*cos(ps1));
y1:=round(y0+r*sin(ps1));

ps2:=ps1+2*pi*p2/k;
x2:=round(x0+r*cos(ps2));
y2:=round(y0+r*sin(ps2));

ps3:=ps2+2*pi*p3/k;
x3:=round(x0+r*cos(ps3));
y3:=round(y0+r*sin(ps3));

with form6.Img1.Canvas do
  begin
    brush.color:=clblue;
    Pie(x0-r,y0-r,x0+r,y0+r,x1,y1,wx,wy);
    brush.color:=clgreen;
    Pie(x0-r,y0-r,x0+r,y0+r,x2,y2,x1,y1);
    brush.color:=cllime;
    Pie(x0-r,y0-r,x0+r,y0+r,x3,y3,x2,y2);
    brush.color:=clred;
    Pie(x0-r,y0-r,x0+r,y0+r,wx,wy,x3,y3);


  end;




Form6.lbl3.Caption:=(FloatToStrF(p1/k*100,ffFixed,3,1)+' '+'%');
Form6.lbl4.Caption:=(FloatToStrF(p2/k*100,ffFixed,3,1)+' '+'%');
 Form6.lbl5.Caption:=(FloatToStrF(p3/k*100,ffFixed,3,1)+' '+'%');
Form6.lbl6.Caption:=(FloatToStrF(p4/k*100,ffFixed,3,1)+' '+'%');
Form6.ShowModal;
 end
else ShowMessage('Список пуст');


end;




procedure TForm1.N2Click(Sender: TObject);   //Сохранение
var
List: TStringList;
  cur:pnt;
begin
List:=TStringList.Create;
List.Duplicates:=dupAccept;  //  Не обращать внимание на дубликаты
  cur:=head;
  while cur<>nil do
  begin
   List.Add(cur^.inf.fio);
   List.Add(cur^.inf.adress);
   List.Add(cur^.inf.lgota);
   List.Add(inttostr(cur^.inf.balls));
   List.Add(cur^.inf.dir);
   cur:=cur^.link;
    end;
with SaveDialog do
  if Execute then
    List.SaveToFile(FileName);
end;



procedure TForm1.N3Click(Sender: TObject);     // Загрузка из файла
var
 List: TStringList;
 i,j: Integer;
begin
List:=TStringList.Create;
with openDialog do
  if Execute then
    List.loadfromFile(FileName);
    if head<>nil then
btn6Click(Sender);  // Предварительно очищаем список
i:=0;
  new(f);     //head
  head:=f;
  f^.inf.fio:=List[i];
  f^.inf.adress:=list[i+1];
  f^.inf.lgota:=List[i+2];
  f^.inf.balls:=StrToInt(List[i+3]);
  f^.inf.dir:=List[i+4];
  f^.link:=nil;
  StringGrid.RowCount:=StringGrid.RowCount+1;

  i:=5;
  while i<>List.Count do
  begin
   new(f^.link);
   f:=f^.link;
   f^.inf.fio:=List[i];
   f^.inf.adress:=list[i+1];
   f^.inf.lgota:=List[i+2];
   f^.inf.balls:=StrToInt(List[i+3]);
   f^.inf.dir:=List[i+4];
   f^.link:=nil;
   i:=i+5;
   StringGrid.RowCount:=StringGrid.RowCount+1;
  end;

  print;


end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
case Application.MessageBox('Сохранить таблицу перед выходом?', 'Выход',MB_YESNOCANCEL+MB_ICONQUESTION) of
IDyes:N2Click(Sender);
 idcancel: CanClose := false;
 end;


end;


procedure TForm1.N7Click(Sender: TObject);
begin
Form8.ShowModal;
end;

end.




