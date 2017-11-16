program testgif;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, FMain, LResources, AnimatedGif, MemBitmap;

{$IFDEF WINDOWS}{$R testgif.rc}{$ENDIF}

begin
  {$I testgif.lrs}
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

