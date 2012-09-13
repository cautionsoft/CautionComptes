unit Quitter;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, Buttons;

type

  { TConfQuitter }

  TConfQuitter = class(TForm)
    Oui: TBitBtn;
    Non: TBitBtn;
    Annuler: TBitBtn;
    Texte1: TLabel;
    Texte2: TLabel;
    procedure AnnulerClick(Sender: TObject);
    procedure NonClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  ConfQuitter: TConfQuitter;

implementation

{ TConfQuitter }

procedure TConfQuitter.AnnulerClick(Sender: TObject);
begin
  close;
end;

procedure TConfQuitter.NonClick(Sender: TObject);
begin
  close;
end;

initialization
  {$I quitter.lrs}

end.

