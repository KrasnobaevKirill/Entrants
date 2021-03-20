unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type

anketa2=record
  fio2:string;
  adress2:string;
  lgota2:string;
  balls2:Integer;
  dir2:string;
  end;

 pnt2=^list2;
 list2=record
  inf:anketa2;
  link:pnt2;
 end;

  TForm4 = class(TForm)
    edt1: TEdit;
    cbb1: TComboBox;
    stringgrid2: TStringGrid;
    btn1: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
 


  private
    { Private declarations }
    procedure print1;
    procedure clear;
    procedure add;
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  post,posthead:pnt2;
implementation

uses Unit2, Unit1;

{$R *.dfm}



procedure TForm4.print1; // Вывод списка
var
  i:integer;
begin
     for i:=1 to StringGrid2.RowCount-1 do
 StringGrid2.Rows[i].Clear;
  post:=posthead;
  i:=1;
  while post<>nil do
  begin
  StringGrid2.cells[0,i]:=IntToStr(i);
  StringGrid2.cells[1,i]:=post^.inf.fio2;
  StringGrid2.cells[2,i]:=post^.inf.adress2;
  StringGrid2.Cells[5,i]:=post^.inf.lgota2;
  StringGrid2.Cells[3,i]:=inttostr(post^.inf.balls2);
  StringGrid2.Cells[4,i]:=post^.inf.dir2;
  inc(i);
  post:=post^.link;
  end;
end;

procedure tform4.clear; //Удаление списка
begin
 if posthead<>nil then
  begin
   post:=posthead;
   While post^.Link<>nil do
    begin
     post:=posthead^.Link;
     Dispose(posthead);
     posthead:=post;
    end;
   Dispose(posthead);
   posthead:=nil;
end;
end;

procedure tform4.add;  //Добавление
 begin
      if posthead=nil then
      begin
    new(post); //  список поступивших
    posthead:=post;
    post^.inf.fio2:=Form1.Cur1^.inf.fio;
    post^.inf.adress2:=form1.Cur1^.inf.adress;
    post^.inf.lgota2:=form1.Cur1^.inf.lgota;
    post^.inf.balls2:=form1.Cur1^.inf.balls;
    post^.inf.dir2:=Form1.Cur1^.inf.dir;
    post^.link:=nil;
    StringGrid2.RowCount:=StringGrid2.RowCount+1;
    end
    else
    begin
      New(post^.link);
    post:=post^.link;
    post^.inf.fio2:=Form1.Cur1^.inf.fio;
    post^.inf.adress2:=form1.Cur1^.inf.adress;
    post^.inf.lgota2:=form1.Cur1^.inf.lgota;
    post^.inf.balls2:=form1.Cur1^.inf.balls;
    post^.inf.dir2:=Form1.Cur1^.inf.dir;
    post^.link:=nil;
    StringGrid2.RowCount:=StringGrid2.RowCount+1;
    end;
  end;


procedure TForm4.btn1Click(Sender: TObject);   //Основной блок
begin
StringGrid2.RowCount:=1; //  оистка стринггрид
clear;// Предварительная очистка списка
if (edt1.Text='') or (StrToInt(edt1.Text)>300) or (StrToInt(edt1.Text)<0)  then
ShowMessage('Введите корректные данные')
else
begin
  if cbb1.ItemIndex=0 then
  begin
    form1.cur1:=head;
   while Form1.cur1<>nil do
   begin
   if (Form1.cur1^.inf.lgota<>'Отсутствует') and (Form1.cur1^.inf.dir='02.03.03 "МОиАИС"') then
   Add
   else
   begin
   if (Form1.cur1^.inf.dir='02.03.03 "МОиАИС"') and (Form1.cur1^.inf.balls>=StrToInt(edt1.Text)) then
    Add;
   end;
   Form1.cur1:=Form1.cur1^.link;
   end;
  end;

  if cbb1.ItemIndex=1 then
  begin
    form1.cur1:=head;
   while Form1.cur1<>nil do
   begin
   if (Form1.cur1^.inf.lgota<>'Отсутствует') and (Form1.cur1^.inf.dir='09.03.01 "Инф-ка и выч. техника"') then
   Add
   else
   begin
   if (Form1.cur1^.inf.dir='09.03.01 "Инф-ка и выч. техника"') and (Form1.cur1^.inf.balls>=StrToInt(edt1.Text)) then
    Add;
   end;
   Form1.cur1:=Form1.cur1^.link;
   end;
  end;

  
     if cbb1.ItemIndex=2 then
  begin
    form1.cur1:=head;
   while Form1.cur1<>nil do
   begin
   if (Form1.cur1^.inf.lgota<>'Отсутствует') and (Form1.cur1^.inf.dir='09.03.04 "Программная инженерия"') then
   Add
   else
   begin
   if (Form1.cur1^.inf.dir='09.03.04 "Программная инженерия"') and (Form1.cur1^.inf.balls>=StrToInt(edt1.Text)) then
    Add;
   end;
   Form1.cur1:=Form1.cur1^.link;
   end;
  end;

   if cbb1.ItemIndex=3 then
  begin
    form1.cur1:=head;
   while Form1.cur1<>nil do
   begin
   if (Form1.cur1^.inf.lgota<>'Отсутствует') and (Form1.cur1^.inf.dir='09.03.03 "Прикладная информатика"') then
   Add
   else
   begin
   if (Form1.cur1^.inf.dir='09.03.03 "Прикладная информатика"') and (Form1.cur1^.inf.balls>=StrToInt(edt1.Text)) then
    Add;
   end;
   Form1.cur1:=Form1.cur1^.link;
   end;
  end;

  print1;
  end;

end;

procedure TForm4.FormShow(Sender: TObject);
begin
StringGrid2.ColWidths[0]:=40;
   stringgrid2.colwidths[3]:=130;
   StringGrid2.ColWidths[5]:=180;
   StringGrid2.ColWidths[1]:=250;
   stringgrid2.colwidths[4]:=220;
   StringGrid2.ColWidths[2]:=240;
   StringGrid2.Cells[0,0]:='№';
   StringGrid2.Cells[1,0]:='Ф.И.О';
   StringGrid2.Cells[2,0]:='Адрес';
   StringGrid2.Cells[3,0]:='Сумма баллов';
   StringGrid2.Cells[4,0]:='Направление';
   StringGrid2.Cells[5,0]:='Льгота';
end;

end.












