unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, MatrixMaths, Vcl.Buttons,
  Vcl.Samples.Spin, Vcl.Menus;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    SaveDialog1: TSaveDialog;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label4: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label5: TLabel;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Txt00: TEdit;
    txt01: TEdit;
    txt02: TEdit;
    txt03: TEdit;
    Txt10: TEdit;
    txt11: TEdit;
    txt12: TEdit;
    txt13: TEdit;
    Txt20: TEdit;
    txt21: TEdit;
    txt22: TEdit;
    txt23: TEdit;
    Txt30: TEdit;
    txt31: TEdit;
    txt32: TEdit;
    txt33: TEdit;
    Button5: TButton;
    Button9: TButton;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Timer2: TTimer;
    Panel3: TPanel;
    Panel4: TPanel;
    ScrollBar1: TScrollBar;
    Image1: TImage;
    Panel6: TPanel;
    Panel5: TPanel;
    Image2: TImage;
    ScrollBar2: TScrollBar;
    Button10: TButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label6: TLabel;
    Label8: TLabel;
    GroupBox4: TGroupBox;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    SpinEdit6: TSpinEdit;
    SpinEdit7: TSpinEdit;
    ColorDialog1: TColorDialog;
    SpeedButton7: TSpeedButton;
    Button1: TButton;
    SpinEdit8: TSpinEdit;
    Button2: TButton;
    Button3: TButton;
    ComboBox1: TComboBox;
    Label9: TLabel;
    Label10: TLabel;
    SpinEdit9: TSpinEdit;
    Label11: TLabel;
    SpinEdit10: TSpinEdit;
    Label12: TLabel;
    PopupMenu1: TPopupMenu;
    Stalks1: TMenuItem;
    Rings1: TMenuItem;
    N1: TMenuItem;
    Panel7: TMenuItem;
    Bitmap1: TMenuItem;
    ExportFrames1: TMenuItem;
    N2: TMenuItem;
    BGRColor1: TMenuItem;
    Reset1: TMenuItem;
    N3: TMenuItem;
    Stop1: TMenuItem;
    AntiAliasingslow1: TMenuItem;
    Blur1: TMenuItem;
    Invert1: TMenuItem;
    DrawFrame1: TMenuItem;
    N4: TMenuItem;
    Highlight1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormResize(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure SpinEdit5Change(Sender: TObject);
    procedure SpinEdit6Change(Sender: TObject);
    procedure SpinEdit7Change(Sender: TObject);
    procedure Txt00KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpinEdit9Change(Sender: TObject);
    procedure SpinEdit10Change(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Bitmap1Click(Sender: TObject);
    procedure ExportFrames1Click(Sender: TObject);
    procedure BGRColor1Click(Sender: TObject);
    procedure Reset1Click(Sender: TObject);
    procedure Stop1Click(Sender: TObject);
  private
    { Private declarations }
    procedure AntiAlias(const i: TBitmap; var o: TBitmap);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  NumSides: integer = 20;
  ViewMat: Mat;
  Cube: array[0..100,0..1] of Vertex;
  CubeScreenPoints: array[0..100,0..1,0..1] of integer;
  mX,mY: integer;
  Down: boolean;
  colorImg : TColor;
  frame : integer = 0;
  abort : Boolean;

type
  PixelA3 = array[1..3] of Byte;
  PixelA15 = array[1..15] of Byte;

implementation

{$R *.dfm}
function InvertBitmap(MyBitmap: TBitmap): TBitmap;
var
  x, y: Integer;
  ByteArray: PByteArray;
begin
  MyBitmap.PixelFormat := pf24Bit;
  for y := 0 to MyBitmap.Height - 1 do
  begin
    ByteArray := MyBitmap.ScanLine[y];
    for x := 0 to MyBitmap.Width * 3 - 1 do
    begin
      ByteArray[x] := 255 - ByteArray[x];
    end;
  end;
  Result := MyBitmap;
end;

procedure BmpGBlur(Bmp: TBitmap; radius: Single);
type
  TRGB = packed Record b, g, r: Byte end;
  TRGBs = packed Record b, g, r: Single end;
  TRGBArray = Array[0..0] of TRGB;
Var
{$R-}
  MatrixRadius: Byte;
  Matrix : Array[-100..100] of Single;

  procedure CalculateMatrix;
  Var x: Integer; Divisor: Single;
  begin
    // the mean/zero point must be taken into account
    radius:=radius+1;
    MatrixRadius:=Trunc(radius);
    if Frac(radius)=0 then Dec(MatrixRadius);
    Divisor:=0;
      For x:=-MatrixRadius To MatrixRadius do
      begin
        Matrix[x]:=radius-abs(x);
        Divisor:=Divisor+Matrix[x];
      end;
    for x:=-MatrixRadius to MatrixRadius do
      Matrix[x]:=Matrix[x]/Divisor;
  end;

var
  BmpSL : ^TRGBArray;
  BmpRGB : ^TRGB;
  BmpCopy : array of array of TRGBs;
  BmpCopyRGB : ^TRGBs;
  R, G, B : Single;
  BmpWidth, BmpHeight: Integer;
  x, y, mx : Integer;
Begin
  Bmp.PixelFormat:=pf24bit;
  // Radius range 0 < radius < 99
  if radius<=0 then radius:=1 else if radius > 99 then radius:=99;
  CalculateMatrix;
  BmpWidth:=Bmp.Width;
  BmpHeight:=Bmp.Height;
  SetLength(BmpCopy,BmpHeight,BmpWidth);
  // Write all pixels into the BmpCopy array and blur HORIZONTALLY at the same time
  for y:=0 To Pred(BmpHeight) do
  begin
    BmpSL:=Bmp.Scanline[y];
    BmpCopyRGB:=@BmpCopy[y,0];
    For x:=0 to Pred(BmpWidth) do
    begin
      R:=0; G:=0; B:=0;
      For Mx:=-MatrixRadius to MatrixRadius do
      begin
        if x+mx<0 Then
          // first Pixel
          BmpRGB:=@BmpSL^[0]
        else if x+mx>=BmpWidth then
        // last Pixel
          BmpRGB:=@BmpSL^[Pred(BmpWidth)]
        else
          BmpRGB:=@BmpSL^[x+mx];
        B:=B+BmpRGB^.b*Matrix[mx];
        G:=G+BmpRGB^.g*Matrix[mx];
        R:=R+BmpRGB^.r*Matrix[mx];
      end;
      // Color values ​​are cached in the Single type!
      BmpCopyRGB^.b:=B;
      BmpCopyRGB^.g:=G;
      BmpCopyRGB^.r:=R;
      Inc(BmpCopyRGB);
    end;
  end;
  // Write all pixels back into the Bmp bitmap and blur VERTICALLY at the same time
  for y:=0 to Pred(BmpHeight) do
  begin
    BmpRGB:=Bmp.ScanLine[y];
    for x:=0 to Pred(BmpWidth) do
    begin
      R:=0; G:=0; B:=0;
      for mx:=-MatrixRadius To MatrixRadius do
      begin
        if y+mx<=0 then
          // first Pixel
          BmpCopyRGB:=@BmpCopy[0,x]
        else if y+mx>=BmpHeight then
          // last Pixel
          BmpCopyRGB:=@BmpCopy[Pred(BmpHeight),x]
        else
          BmpCopyRGB:=@BmpCopy[y+mx,x];
        B:=B+BmpCopyRGB^.b*Matrix[mx];
        G:=G+BmpCopyRGB^.g*Matrix[mx];
        R:=R+BmpCopyRGB^.r*Matrix[mx];
      end;
      BmpRGB^.b:=Round(B);
      BmpRGB^.g:=Round(G);
      BmpRGB^.r:=Round(R);
      Inc(BmpRGB);
    end;
  end;
  {$R+}
end;

procedure TForm1.AntiAlias(const i: TBitmap; var o: TBitmap);
var
  Po: ^PixelA3;
  P1, P2, P3, P4, P5: ^PixelA15;
  x, y: Cardinal;
  dekrement: Cardinal;
  AntAussen, AntMitte, AntInnen: double;
begin
{$R-}
  // Specify the proportions of the regions in the target pixel
  AntAussen := 12*4; // 12 pixels to 1/4 in target pixels
  AntMitte := 8*4; // 8 pixels to 1/4 in target pixels
  AntInnen := 2; // 1 pixel to 1/2 in target pixels

  dekrement := 3*(i.Width-3);

  // Pick up the scanline of the first 5 lines
  P1 := i.ScanLine[0];
  P2 := i.ScanLine[1];
  P3 := i.ScanLine[2];
  P4 := i.ScanLine[3];
  P5 := i.ScanLine[4];

  for y := 2 to i.Height-4 do
  begin
    // Pick up scanline of the target image
    Po := o.ScanLine[y];
    // and increase the x position by 2 (as I said, edge doesn't play a role)
    inc(Po, 2);
    for x := 2 to i.Width-2 do
    begin
      // Create the blue value of the target pixel from the blue values ​​of the source region
      Po^[1] := round(((P1^[4]+P1^[7]+P1^[10] +
                        P2^[1] + P2^[13] +
                        P3^[1] + P3^[13] +
                        P4^[1] + P4^[13] +
                        P5^[4]+P5^[7]+P5^[10]) / AntAussen) +

                      ((P2^[4]+P2^[7]+P2^[10] +
                        P3^[4] +P3^[10] +
                        P4^[4]+P4^[7]+P4^[10]) / AntMitte) +

                       (P3^[7] / AntInnen));

      // Like blue, now with green
      Po^[2] := round(((P1^[5]+P1^[8]+P1^[11] +
                        P2^[2] + P2^[14] +
                        P3^[2] + P3^[14] +
                        P4^[2] + P4^[14] +
                        P5^[5]+P5^[8]+P5^[11]) / AntAussen) +

                      ((P2^[5]+P2^[8]+P2^[11] +
                        P3^[5] +P3^[11] +
                        P4^[5]+P4^[8]+P4^[11]) / AntMitte) +

                       (P3^[8] / AntInnen));

        // and with red...
        Po^[3] := round((( P1^[6]+P1^[9]+P1^[12] +
                          P2^[3] + P2^[15] +
                          P3^[3] + P3^[15] +
                          P4^[3] + P4^[15] +
                          P5^[6]+P5^[9]+P5^[12]) / AntAussen) +

                        ((P2^[6]+P2^[9]+P2^[12] +
                          P3^[6] +P3^[12] +
                          P4^[6]+P4^[9]+P4^[12]) / AntMitte) +

                         (P3^[9] / AntInnen));

        // Increase all pointers by 3 bytes - one pixel to the right
        // (PByte because P1-P5 are 15 bytes in size, and otherwise too
        // 15 bytes would be moved.)
        inc(PByte(P1), 3);
        inc(PByte(P2), 3);
        inc(PByte(P3), 3);
        inc(PByte(P4), 3);
        inc(PByte(P5), 3);

        // Pointer of the target pixel one pixel to the right
        inc(Po, 1);
      end;

     // Drag all pointers to the pixel on the left
     dec(PByte(P2), dekrement);
     dec(PByte(P3), dekrement);
     dec(PByte(P4), dekrement);
     dec(PByte(P5), dekrement);

     // and then move the lines
     P1 := P2;
     P2 := P3;
     P3 := P4;
     P4 := P5;

     // and get the new line
     P5 := i.ScanLine[y+3];
   end;
   {$R+}
end;

Procedure DrawLine(X1,Y1,Z1, X2,Y2,Z2: single);
var
  Tx, Ty, Tz: single;
  X, Y, Z: integer;
begin
   //Draws a shaded line between 2 points.
   // X,Y in screen coords. Z is just colour.
   Tx := 0;
   Ty := 0;
   Tz := 0;

   with form1.Image1.Canvas do
   begin


     MoveTo(round(X1),Round(Y1));

     repeat
       Tx := Tx + 0.1;
       Ty := Ty + 0.1;
       Tz := Tz + 0.1;

       X := round(X2*Tx + (X1+0)  *(1.0-Tx));
       Y := round(Y2*Ty + (Y1+0)  *(1.0-Ty));


       //Z := round(Z1*Tz+Z2*(1.0-Tz));
       // if Z < 0 then Z := 0;
       // if Z > 255 then Z := 255;
       // Z := 255-Z;
       // Pen.Color := RGB(Z, Z, Z);

       Pen.Color := RGB(Form1.SpinEdit3.Value,
                        Form1.SpinEdit4.Value,
                        Form1.SpinEdit5.Value);

        LineTo(X, Y);
     until (Tx >= 1);
   end;
end;

Procedure PrintOutMatrix;
begin
  form1.Txt00.Text := floattostr(ViewMat[0,0]);
  form1.Txt10.Text := floattostr(ViewMat[1,0]);
  form1.Txt20.Text := floattostr(ViewMat[2,0]);
  form1.Txt30.Text := floattostr(ViewMat[3,0]);

  form1.Txt01.Text := floattostr(ViewMat[0,1]);
  form1.Txt11.Text := floattostr(ViewMat[1,1]);
  form1.Txt21.Text := floattostr(ViewMat[2,1]);
  form1.Txt31.Text := floattostr(ViewMat[3,1]);

  form1.Txt02.Text := floattostr(ViewMat[0,2]);
  form1.Txt12.Text := floattostr(ViewMat[1,2]);
  form1.Txt22.Text := floattostr(ViewMat[2,2]);
  form1.Txt32.Text := floattostr(ViewMat[3,2]);

  form1.Txt03.Text := floattostr(ViewMat[0,3]);
  form1.Txt13.Text := floattostr(ViewMat[1,3]);
  form1.Txt23.Text := floattostr(ViewMat[2,3]);
  form1.Txt33.Text := floattostr(ViewMat[3,3]);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Form1.DoubleBuffered := true;
  //Image1.Canvas.Pen.Color := clBlack;
  CopyMat(Identity, ViewMat);
  Image1.Picture.bitmap.Create;
  Image1.Picture.Bitmap.width := Image1.width;
  Image1.picture.bitmap.height := Image1.height;
  patblt(Image1.Picture.Bitmap.Canvas.Handle, 0,
                                              0,
                                              Image1.Width,
                                              Image1.height,
                                              BLACKNESS);
  StatusBar1.Panels[1].Text := IntToStr(Image1.Height) + 'x' +
                               IntToStr(Image1.Width);
  Button1.Click;
  Button5.Click;
end;

Procedure GetCubeScreenPoints;
var
  I, J: integer;
begin
 for I := 0 to NumSides-1 do
  for J := 0 to 1 do
   begin
    if Cube[I,J][2] > -100 then
    begin
     CubeScreenPoints[I,J,0] := round(Cube[I,J][0]* Form1.SpinEdit1.Value /(Cube[I,J][2]+100)+(form1.Image1.Width/2));
     CubeScreenPoints[I,J,1] := round(Cube[I,J][1]* Form1.SpinEdit2.Value /(Cube[I,J][2]+100)+(form1.Image1.Height/2));
    end;
   end;
end;

Procedure PlotVert(const V: Vertex);
var
  SX, SY: integer;
begin
    if V[2] > -100 then
    begin
     Sx := round(V[0]*500/(V[2]+100)+(form1.Image1.Width/2));
     Sy := round(V[1]*500/(V[2]+100)+(form1.Image1.Height/2));
     //Form1.Image1.Canvas.Pixels[Sx,Sy] := clRed;
    end;
end;

Procedure Draw;
var
  i, j : integer;
begin
  // gdi32
  patblt(Form1.Image1.Canvas.Handle, 0,
                                     0,
                                     Form1.Image1.Width,
                                     Form1.Image1.Height,
                                     BLACKNESS);

  //fill background with color
  Form1.Image1.Canvas.Brush.Color := ColorImg;

  // Frame
  if Form1.DrawFrame1.Checked = true then
  begin
    Form1.Image1.Canvas.Rectangle(0,                    // First pixel
                                  0,                    // First pixel
                                  Form1.Image1.Width,   // last pixel
                                  Form1.Image1.Height); // last pixel
  end else begin
    Form1.Image1.Canvas.Rectangle(-3,
                                  -3,
                                  Form1.Image1.Width+3,
                                  Form1.Image1.Height+3);
  end;

  //Apply Matrix to each vertex.
  for I := 0 to NumSides-1 do
   for J :=  0 to 1 do
   begin
    ApplyMatrix(Cube[I,J], ViewMat);
   end;

  //Convert 3D to 2D.
  GetCubeScreenPoints;
  // draw rings start endpoints
  if Form1.Rings1.Checked = true then
  Begin
      //Draw Top and Bottom rings
     for J :=  0 to 1 do
     begin
      for I := 0 to NumSides-2 do
       begin
        DRawLine(CubeScreenPoints[I,J,0],
                 CubeScreenPoints[I,J,1],
                 (Cube[I+1,J][2]+20)*5,
                 CubeScreenPoints[I+1,J,0],
                 CubeScreenPoints[I+1,J,1],
                 (Cube[I,J][2]+20)*5);

       end;
       //Join first and last points.
       DRawLine(CubeScreenPoints[0,J,0],
                CubeScreenPoints[0,J,1],
               (Cube[NumSides-1,J][2]+20)*5,
               CubeScreenPoints[NumSides-1,J,0],
               CubeScreenPoints[NumSides-1,J,1],
               (Cube[0,J][2]+20)*5);

     end;
  end;

  if Form1.Stalks1.Checked = true then
  begin
    //Stalks between rings.
    for I := 0 to NumSides-1 do
     begin
      DRawLine(CubeScreenPoints[I,1,0],
               CubeScreenPoints[I,1,1],
               (Cube[I,0][2]+20)*5,
               CubeScreenPoints[I,0,0],
               CubeScreenPoints[I,0,1],
               (Cube[I,1][2]+20)*5);
     end;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
Var
  J, I: integer;
  SideAng, Radius: single;
begin
 NumSides := SpinEdit6.Value;
 Radius := SpinEdit7.Value;

 if NumSides > 100 then NumSides := 100;
 SideAng := 360/NumSides;

 //Builds a cylinder with NumSides sides.
 for J := 0 to 1 do
  begin
   for I := 0 to NumSides-1 do
    CopyVert(MakeVert(Sin(Pi/ ScrollBar1.Position *(SideAng*I))*Radius,
                      Cos(Pi/ ScrollBar2.Position *(SideAng*I))*Radius,
                      -10+(J*SpinEdit9.Value)),
                      Cube[I,J]);
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  frame := 0;
  abort := false;
  Timer2.Enabled := true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  abort := true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  bmp1, bmp2 : TBitmap;
begin
  draw;

  if AntiAliasingslow1.Checked = true then
  begin
    bmp1 := TBitmap.Create;
    bmp1.Width := Image1.Picture.Bitmap.Width;
    bmp1.Height := Image1.Picture.Bitmap.Height;
    bmp1.PixelFormat := pf24Bit;
    bmp1.Assign(Image1.Picture.Bitmap);
    bmp2 := TBitmap.Create;
    bmp2.Width := Image1.Picture.Bitmap.Width;
    bmp2.Height := Image1.Picture.Bitmap.Height;
    bmp2.PixelFormat := pf24Bit;
    try
      AntiAlias(bmp1, bmp2);
      Image1.Picture.Bitmap.Assign(bmp2);
    finally
      bmp1.Free;
      bmp2.Free;
    end;
  end;

  if Blur1.Checked = true then
  begin
    bmp1 := TBitmap.Create;
    bmp1.Width := Image1.Picture.Bitmap.Width;
    bmp1.Height := Image1.Picture.Bitmap.Height;
    bmp1.PixelFormat := pf24Bit;
    bmp1.Assign(Image1.Picture.Bitmap);
    try
      BmpGBlur(Bmp1, 2);
      Image1.Picture.Bitmap.Assign(bmp1);
    finally
      bmp1.Free;
    end;
  end;

  if Invert1.Checked = true then
  begin
    Image1.Picture.Bitmap := InvertBitmap(Image1.Picture.Bitmap);
    Image1.Refresh;
  end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
  bmp : TBitmap;
begin
  bmp := TBitmap.Create;
  try
    frame := frame + 1;
    bmp.Assign(Image1.Picture.Bitmap);
    case ComboBox1.ItemIndex of
      0 : bmp.PixelFormat := pf4bit;
      1 : bmp.PixelFormat := pf8bit;
      2 : bmp.PixelFormat := pf24bit;
    end;
    bmp.Height := Image1.Picture.Bitmap.Height;
    bmp.Width := Image1.Picture.Bitmap.Width;
    bmp.SaveToFile(ExtractFilePath(Application.ExeName) + 'Data\frames\' +
                                   IntToStr(frame) + '.bmp') ;
    StatusBar1.Panels[5].Text := IntToStr(frame);

    if abort = true then Timer2.Enabled := false;
    if frame = SpinEdit8.Value then
    begin
    Timer2.Enabled := false;
    StatusBar1.Panels[5].Text := 'Export Frames done : ' + IntToStr(frame);
    end;


  finally
    bmp.Free;
  end;
end;

procedure TForm1.Txt00KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = '.' then
    Key := ',';
  if NOT (Key in [#8, '0'..'9', ',']) then
    Key := #0;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  CopyMat(Identity, ViewMat);
  PrintOutMatrix;
end;

Procedure SetMatrix;
begin
  ViewMat[0,0] := strtofloat(form1.txt00.text);
  ViewMat[1,0] := strtofloat(form1.txt10.text);
  ViewMat[2,0] := strtofloat(form1.txt20.text);
  ViewMat[3,0] := strtofloat(form1.txt30.text);

  ViewMat[0,1] := strtofloat(form1.txt01.text);
  ViewMat[1,1] := strtofloat(form1.txt11.text);
  ViewMat[2,1] := strtofloat(form1.txt21.text);
  ViewMat[3,1] := strtofloat(form1.txt31.text);

  ViewMat[0,2] := strtofloat(form1.txt02.text);
  ViewMat[1,2] := strtofloat(form1.txt12.text);
  ViewMat[2,2] := strtofloat(form1.txt22.text);
  ViewMat[3,2] := strtofloat(form1.txt32.text);

  ViewMat[0,3] := strtofloat(form1.txt03.text);
  ViewMat[1,3] := strtofloat(form1.txt13.text);
  ViewMat[2,3] := strtofloat(form1.txt23.text);
  ViewMat[3,3] := strtofloat(form1.txt33.text);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  SetMatrix;
end;

procedure TForm1.ExportFrames1Click(Sender: TObject);
begin
  Button2.Click;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Down := true;
  Mx := x;
  My := y;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Down := false;
end;

procedure TForm1.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ScrollBar1.Position := 180;
  ScrollBar2.Position := 180;
  Button1.Click;
end;

procedure TForm1.Panel7Click(Sender: TObject);
begin
  Panel1.Visible := Panel7.Checked;
  Form1.OnResize(sender);
end;

procedure TForm1.Reset1Click(Sender: TObject);
begin
  ScrollBar1.Position := 180;
  ScrollBar2.Position := 180;
  Button5.Click;
  Button1.Click;
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
  Button1.Click;
  StatusBar1.Panels[3].Text := IntToStr(ScrollBar2.Position) + '°x' +
                               IntToStr(ScrollBar1.Position) + '°';
end;

procedure TForm1.ScrollBar2Change(Sender: TObject);
begin
  Button1.Click;
  StatusBar1.Panels[3].Text := IntToStr(ScrollBar2.Position) + '°x' +
                               IntToStr(ScrollBar1.Position) + '°';
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  CConcatMatrix(XRot(0.002), ViewMat);
  PrintOutMatrix;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  CConcatMatrix(XRot(-0.002), ViewMat);
  PrintOutMatrix;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  CConcatMatrix(YRot(0.002), ViewMat);
  PrintOutMatrix;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  CConcatMatrix(YRot(-0.002), ViewMat);
  PrintOutMatrix;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  CConcatMatrix(ZRot(0.002), ViewMat);
  PrintOutMatrix;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
  CConcatMatrix(ZRot(-0.002), ViewMat);
  PrintOutMatrix;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
  if ColorDialog1.Execute then ColorImg := ColorDialog1.Color;
end;

procedure TForm1.SpinEdit10Change(Sender: TObject);
begin
  Timer2.Interval := SpinEdit10.Value;
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.SpinEdit2Change(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.SpinEdit3Change(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.SpinEdit4Change(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.SpinEdit5Change(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.SpinEdit6Change(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.SpinEdit7Change(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.SpinEdit9Change(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.Stop1Click(Sender: TObject);
begin
  Button5.Click;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if Down then
  begin
    CopyMat(Identity, ViewMat);
    CConcatMatrix(YRot(((X-Mx)/1000)), ViewMat);
    CConcatMatrix(XRot(((MY-y)/1000)), ViewMat);
    PrintOutMatrix;
  end;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  //Image1.Canvas.Pen.Color := clWhite;
  try
    CopyMat(Identity, ViewMat);
    image1.Picture.bitmap.Create;
    image1.Picture.Bitmap.width := Image1.width;
    image1.picture.bitmap.height := Image1.height;
    patblt(image1.Picture.Bitmap.Canvas.Handle, 0,
                                                0,
                                                Image1.Width,
                                                Image1.height,
                                                BLACKNESS);
  except
  end;
  StatusBar1.Panels[1].Text := IntToStr(Image1.Height) + 'x' +
                               IntToStr(Image1.Width);
end;

procedure TForm1.BGRColor1Click(Sender: TObject);
begin
  SpeedButton7.Click;
end;

procedure TForm1.Bitmap1Click(Sender: TObject);
begin
  Button10.Click;
end;

procedure TForm1.Button10Click(Sender: TObject);
var
  bmp : TBitmap;
begin
  bmp := TBitmap.Create;
  try
    bmp.Assign(Image1.Picture.Bitmap);

    case ComboBox1.ItemIndex of
      0 : bmp.PixelFormat := pf4bit;
      1 : bmp.PixelFormat := pf8bit;
      2 : bmp.PixelFormat := pf24bit;
    end;

    bmp.Height := Image1.Picture.Bitmap.Height;
    bmp.Width := Image1.Picture.Bitmap.Width;

    if SaveDialog1.Execute then
    bmp.SaveToFile(SaveDialog1.FileName + '.bmp') ;
  finally
    bmp.Free;
  end;
end;

end.
