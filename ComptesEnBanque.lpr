program ComptesEnBanque;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Main, LResources, Quitter;

{$IFDEF WINDOWS}{$R ComptesEnBanque.rc}{$ENDIF}

begin
  {$I ComptesEnBanque.lrs}
  Application.Initialize;
  Application.CreateForm(TPrincipale, Principale);
  Application.CreateForm(TConfQuitter, ConfQuitter);
  Application.Run;
end.

