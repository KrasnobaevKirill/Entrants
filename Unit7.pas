unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg;

type
  Tfrmsplash = class(TForm)
    tmr1: TTimer;
    img1: TImage;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormHide(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsplash: Tfrmsplash;

implementation

{$R *.dfm}

procedure Delay(MSecs: Longint); var FirstTickCount, Now: Longint;
 begin FirstTickCount := GetTickCount;
 repeat Application.ProcessMessages;
  Now := GetTickCount;
  until (Now - FirstTickCount >= MSecs) or (Now < FirstTickCount);
  end;


procedure TfrmSplash.Tmr1Timer(Sender: TObject);
 begin
 Tmr1.Enabled:= False;
 end;

procedure TfrmSplash.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
 begin
  CanClose:= Tmr1.Enabled = False
  end;

  procedure TfrmSplash.FormHide(Sender: TObject);
   begin
    repeat Application.ProcessMessages;
     until frmSplash.CloseQuery
     end;




procedure Tfrmsplash.FormShow(Sender: TObject);
begin
AlphaBlend:= TRUE;
AlphaBlendValue:= 0;
end;

procedure Tfrmsplash.FormActivate(Sender: TObject);
 var i, n: integer;
 begin
  n:= 100;
         for i := 0 to n do
          begin AlphaBlendValue:= 255 * i div n;//-100
          delay(10);
           end;
 end;



procedure Tfrmsplash.FormClose(Sender: TObject; var Action: TCloseAction);
var i,n: integer;
 begin
 n:= 100;
for I := n downto 0 do
begin AlphaBlendValue:= 255 * i div n;
delay(10);
 end;
end;




end.
          