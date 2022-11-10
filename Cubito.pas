unit Cubito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type
  TPoint3D=packed record
    x: real;
    y: real;
    z: real;
  end;

  Const
  TamFig=1;

var
  Form1: TForm1;

  var
  cubo:array[1..10] of TPoint3D;
  P,Q:TPoint;
  xaux, yaux, zaux: real;
  i,angulo:integer;
  alpha:real;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
alpha:=(angulo*PI)/180.0;
for i := 1 to 10 do
begin
  yaux:=Cubo[i].y*cos(-alpha)+Cubo[i].z*sin(-alpha);
  zaux:=-Cubo[i].y*sin(-alpha)+Cubo[i].z*cos(-alpha);
  Cubo[i].y:=round(yaux);
  Cubo[i].z:=round(zaux);
end;
image1.Canvas.Rectangle(0,0,500,500);
for I := 1 to 4 do
  begin
    P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+1].x+250);
    Q.Y:=round(Cubo[i+1].y+250);
    Image1.Canvas.Pen.Color:=clblue;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;

  end;

  for I := 6 to 9 do
  begin
    P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+1].x+250);
    Q.Y:=round(Cubo[i+1].y+250);
    Image1.Canvas.Pen.Color:=clred;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;
  end;

  for I := 1 to 4 do
    begin
      P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+5].x+250);
    Q.Y:=round(Cubo[i+5].y+250);
    Image1.Canvas.Pen.Color:=clGreen;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;
    end;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
alpha:=(-angulo*PI)/180.0;
for i := 1 to 10 do
begin
  yaux:=Cubo[i].y*cos(-alpha)+Cubo[i].z*sin(-alpha);
  zaux:=-Cubo[i].y*sin(-alpha)+Cubo[i].z*cos(-alpha);
  Cubo[i].y:=round(yaux);
  Cubo[i].z:=round(zaux);
end;
image1.Canvas.Rectangle(0,0,500,500);
for I := 1 to 4 do
  begin
    P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+1].x+250);
    Q.Y:=round(Cubo[i+1].y+250);
    Image1.Canvas.Pen.Color:=clblue;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;

  end;

  for I := 6 to 9 do
  begin
    P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+1].x+250);
    Q.Y:=round(Cubo[i+1].y+250);
    Image1.Canvas.Pen.Color:=clred;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;
  end;

  for I := 1 to 4 do
    begin
      P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+5].x+250);
    Q.Y:=round(Cubo[i+5].y+250);
    Image1.Canvas.Pen.Color:=clGreen;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;
    end;


end;

procedure TForm1.Button3Click(Sender: TObject);
begin

alpha:=(angulo*PI)/180.0;
for i := 1 to 10 do
begin
  zaux:=Cubo[i].z*cos(-alpha)+Cubo[i].x*sin(-alpha);
  xaux:=-Cubo[i].z*sin(-alpha)+Cubo[i].x*cos(-alpha);
  Cubo[i].z:=round(zaux);
  Cubo[i].x:=round(xaux);
end;
image1.Canvas.Rectangle(0,0,500,500);
for I := 1 to 4 do
  begin
    P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+1].x+250);
    Q.Y:=round(Cubo[i+1].y+250);
    Image1.Canvas.Pen.Color:=clBlue;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;

  end;

  for I := 6 to 9 do
  begin
    P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+1].x+250);
    Q.Y:=round(Cubo[i+1].y+250);
    Image1.Canvas.Pen.Color:=clred;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;
  end;

  for I := 1 to 4 do
    begin
      P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+5].x+250);
    Q.Y:=round(Cubo[i+5].y+250);
    Image1.Canvas.Pen.Color:=clGreen;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;
    end;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
alpha:=(-angulo*PI)/180.0;
for i := 1 to 10 do
begin
  zaux:=Cubo[i].z*cos(-alpha)+Cubo[i].x*sin(-alpha);
  xaux:=-Cubo[i].z*sin(-alpha)+Cubo[i].x*cos(-alpha);
  Cubo[i].z:=round(zaux);
  Cubo[i].x:=round(xaux);
end;
image1.Canvas.Rectangle(0,0,500,500);
for I := 1 to 4 do
  begin
    P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+1].x+250);
    Q.Y:=round(Cubo[i+1].y+250);
    Image1.Canvas.Pen.Color:=clBlue;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;

  end;

  for I := 6 to 9 do
  begin
    P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+1].x+250);
    Q.Y:=round(Cubo[i+1].y+250);
    Image1.Canvas.Pen.Color:=clred;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;
  end;

  for I := 1 to 4 do
    begin
      P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+5].x+250);
    Q.Y:=round(Cubo[i+5].y+250);
    Image1.Canvas.Pen.Color:=clGreen;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;
    end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
alpha:=(angulo*PI)/180.0;
for i := 1 to 10 do
begin
  xaux:=Cubo[i].x*cos(-alpha)+Cubo[i].y*sin(-alpha);
  yaux:=-Cubo[i].x*sin(-alpha)+Cubo[i].y*cos(-alpha);
  Cubo[i].x:=round(xaux);
  Cubo[i].y:=round(yaux);
end;
image1.Canvas.Rectangle(0,0,500,500);
for I := 1 to 4 do
  begin
    P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+1].x+250);
    Q.Y:=round(Cubo[i+1].y+250);
    Image1.Canvas.Pen.Color:=clBlue;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;

  end;

  for I := 6 to 9 do
  begin
    P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+1].x+250);
    Q.Y:=round(Cubo[i+1].y+250);
    Image1.Canvas.Pen.Color:=clred;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;
  end;

  for I := 1 to 4 do
    begin
      P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+5].x+250);
    Q.Y:=round(Cubo[i+5].y+250);
    Image1.Canvas.Pen.Color:=clGreen;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;
    end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
alpha:=(-angulo*PI)/180.0;
for i := 1 to 10 do
begin
  xaux:=Cubo[i].x*cos(-alpha)+Cubo[i].y*sin(-alpha);
  yaux:=-Cubo[i].x*sin(-alpha)+Cubo[i].y*cos(-alpha);
  Cubo[i].x:=round(xaux);
  Cubo[i].y:=round(yaux);
end;
image1.Canvas.Rectangle(0,0,500,500);
for I := 1 to 4 do
  begin
    P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+1].x+250);
    Q.Y:=round(Cubo[i+1].y+250);
    Image1.Canvas.Pen.Color:=clBlue;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;

  end;

  for I := 6 to 9 do
  begin
    P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+1].x+250);
    Q.Y:=round(Cubo[i+1].y+250);
    Image1.Canvas.Pen.Color:=clred;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;
  end;

  for I := 1 to 4 do
    begin
      P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+5].x+250);
    Q.Y:=round(Cubo[i+5].y+250);
    Image1.Canvas.Pen.Color:=clGreen;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;
    end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
image1.Canvas.Rectangle(0,0,500,500);

Cubo[1].x:=TamFig;
Cubo[1].y:=TamFig;
Cubo[1].z:=-TamFig;

Cubo[2].x:=TamFig;
Cubo[2].y:=-TamFig;
Cubo[2].z:=-TamFig;

Cubo[3].x:=-TamFig;
Cubo[3].y:=-TamFig;
Cubo[3].z:=-TamFig;

Cubo[4].x:=-TamFig;
Cubo[4].y:=TamFig;
Cubo[4].z:=-TamFig;

Cubo[5].x:=TamFig;
Cubo[5].y:=TamFig;
Cubo[5].z:=-TamFig;

Cubo[6].x:=TamFig;
Cubo[6].y:=TamFig;
Cubo[6].z:=TamFig;

Cubo[7].x:=TamFig;
Cubo[7].y:=-TamFig;
Cubo[7].z:=TamFig;

Cubo[8].x:=-TamFig;
Cubo[8].y:=-TamFig;
Cubo[8].z:=TamFig;

Cubo[9].x:=-TamFig;
Cubo[9].y:=TamFig;
Cubo[9].z:=TamFig;

Cubo[10].x:=TamFig;
Cubo[10].y:=TamFig;
Cubo[10].z:=TamFig;

for I := 1 to 10 do
  begin
    Cubo[i].x:=Cubo[i].x*20;
    Cubo[i].y:=Cubo[i].y*20;
    Cubo[i].z:=Cubo[i].z*20;

  end;

for I := 1 to 4 do
  begin
    P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+1].x+250);
    Q.Y:=round(Cubo[i+1].y+250);
    Image1.Canvas.Pen.Color:=clBlue;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;

  end;

  for I := 6 to 9 do
  begin
    P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+1].x+250);
    Q.Y:=round(Cubo[i+1].y+250);
    Image1.Canvas.Pen.Color:=clred;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;
  end;

  for I := 1 to 4 do
    begin
      P.X:=round(Cubo[i].x+250);
    P.Y:=round(Cubo[i].y+250);
    Q.X:=round(Cubo[i+5].x+250);
    Q.Y:=round(Cubo[i+5].y+250);
    Image1.Canvas.Pen.Color:=clGreen;
    Image1.Canvas.MoveTo(p.X,p.Y);
    Image1.Canvas.LineTo(Q.X,q.Y);
    image1.Canvas.Pen.Color:=clblack;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Cubo[1].x:=TamFig;
Cubo[1].y:=TamFig;
Cubo[1].z:=-TamFig;

Cubo[2].x:=TamFig;
Cubo[2].y:=-TamFig;
Cubo[2].z:=-TamFig;

Cubo[3].x:=-TamFig;
Cubo[3].y:=-TamFig;
Cubo[3].z:=-TamFig;

Cubo[4].x:=-TamFig;
Cubo[4].y:=TamFig;
Cubo[4].z:=-TamFig;

Cubo[5].x:=TamFig;
Cubo[5].y:=TamFig;
Cubo[5].z:=-TamFig;

Cubo[6].x:=TamFig;
Cubo[6].y:=TamFig;
Cubo[6].z:=TamFig;

Cubo[7].x:=TamFig;
Cubo[7].y:=-TamFig;
Cubo[7].z:=TamFig;

Cubo[8].x:=-TamFig;
Cubo[8].y:=-TamFig;
Cubo[8].z:=TamFig;

Cubo[9].x:=-TamFig;
Cubo[9].y:=TamFig;
Cubo[9].z:=TamFig;

Cubo[10].x:=TamFig;
Cubo[10].y:=TamFig;
Cubo[10].z:=TamFig;

for I := 1 to 10 do
  begin
    Cubo[i].x:=Cubo[i].x*20;
    Cubo[i].y:=Cubo[i].y*20;
    Cubo[i].z:=Cubo[i].z*20;

  end;

  angulo:=15;

end;

end.
