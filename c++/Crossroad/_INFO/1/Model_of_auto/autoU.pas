unit autoU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, ExtCtrls, Mask, ComCtrls;

type
  TForm1 = class(TForm)
    Speed: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Sfetofor: TSpinEdit;
    AutoTime: TTimer;
    SfetoforTime: TTimer;
    Move: TButton;
    Road: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Image: TImage;
    Color: TShape;
    Label8: TLabel;
    AllTime: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    P1: TImage;
    P2: TImage;
    P3: TImage;
    procedure MoveClick(Sender: TObject);
    procedure SfetoforTimeTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AutoTimeTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  svet:boolean;
  s,k,p,time:integer;
  t:real;
implementation

{$R *.DFM}

procedure TForm1.MoveClick(Sender: TObject);
begin
  k:=0;
  time:=0;
  Label10.Caption:='';
  svet:=true;
  AutoTime.Enabled:=true;
  SfetoforTime.Enabled:=true;
  Color.Brush.Color:=clGreen;
  t:=StrToInt(Speed.Text)/3.6;
  p:=trunc(t);
  s:=p;
  Move.Enabled:=false;
  Image1.Visible:=true;
  Image2.Visible:=false;
  Image3.Visible:=false;
  Image4.Visible:=false;
  Image5.Visible:=false;
  Image6.Visible:=false;
  Image7.Visible:=false;
  Image8.Visible:=false;
  Image9.Visible:=false;
  P1.Visible:=false;
  P2.Visible:=false;
  P3.Visible:=false;
end;

procedure TForm1.SfetoforTimeTimer(Sender: TObject);
begin
  if Sfetofor.Text=IntToStr(k) then
   begin
    k:=0;
    if svet=true then begin
                        svet:=false;
                        Color.Brush.Color:=clRed;
                        Image.Picture.LoadFromFile('road_red.bmp');
                      end
                 else begin
                       svet:=true;
                       Color.Brush.Color:=clGreen;
                       Image.Picture.LoadFromFile('road_green.bmp');
                       AutoTime.Enabled:=true;
                      end;
   end;
   k:=k+1;
   time:=time+1;
   AllTime.Text:=IntToStr(time);
  if (s>=80) and (s<=100) then begin
                               Image2.Visible:=true;
                               Image1.Visible:=false;
                             end;
  if (s>100) and (s<150) then begin
                                P1.Visible:=true;
                                Image2.Visible:=false;
                                Image1.Visible:=false;
                              end;
  if (s>=340) and (s<=375) then begin
                               Image3.Visible:=true;
                               P1.Visible:=false;
                              end;
  if (s>=570) and (s<=600) then begin
                               Image4.Visible:=true;
                               Image3.Visible:=false;
                              end;
  if (s>600) and (s<650) then begin
                               P2.Visible:=true;
                               Image4.Visible:=false;
                              end;
  if (s>=945) and (s<=990) then begin
                               Image5.Visible:=true;
                               P2.Visible:=false;
                              end;
  if (s>=1280) and (s<=1320) then begin
                                 Image6.Visible:=true;
                                 Image5.Visible:=false;
                                end;
  if (s>1320) and (s<1370) then begin
                                 P3.Visible:=true;
                                 Image6.Visible:=false;
                              end;
  if (s>=1680) and (s<=1712) then begin
                                 Image7.Visible:=true;
                                 P3.Visible:=false;
                                end;
  if (s>=2075) and (s<=2100) then begin
                                 Image8.Visible:=true;
                                 Image7.Visible:=false;
                                end;
  if (s>2100) then begin
                    Image9.Visible:=true;
                    Image8.Visible:=false;
                   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  k:=0;
  time:=0;
  Image1.Visible:=true;
  Image2.Visible:=false;
  Image3.Visible:=false;
  Image4.Visible:=false;
  Image5.Visible:=false;
  Image6.Visible:=false;
  Image7.Visible:=false;
  Image8.Visible:=false;
  Image9.Visible:=false;
  P1.Visible:=false;
  P2.Visible:=false;
  P3.Visible:=false;
end;

procedure TForm1.AutoTimeTimer(Sender: TObject);
begin
  Road.Text:=IntToStr(s);
if s>=2100 then begin
                AutoTime.Enabled:=false;
                SfetoforTime.Enabled:=false;
                Move.Enabled:=true;
                Label10.Caption:='Ñğåäíÿÿ ñêîğîñòü='+FloatToStr(trunc(s/time)*3.6)+' êì/÷';
               end;
  if (s>80) and (s<100) and (svet=false) then AutoTime.Enabled:=false;
  if (s>568) and (s<600) and (svet=false) then AutoTime.Enabled:=false;
  if (s>1280) and (s<1300) and (svet=false) then AutoTime.Enabled:=false;
  if (s>2075) and (s<2100) and (svet=false) then AutoTime.Enabled:=false;
  if AutoTime.Enabled=true then  s:=s+p;
end;

end.
