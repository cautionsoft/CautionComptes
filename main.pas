unit Main;
{***********************************************************
  Nom ......... : Main;pas
  Role ........ : Affiche les caractéristiques numériques
                pour les types du langage C
  Auteur ...... : Nisavoi
  Version ..... : V0.0.1 du 08/09/2012
  Licence ..... : BSD Modifiee

  Compilation :
  Lazarus Linux
************************************************************}
{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  Menus, ActnList, Grids, ComCtrls, ExtCtrls, StdCtrls, Quitter;

type

  { TPrincipale }

  TPrincipale = class(TForm)
    SEntree: TButton;
    NEntree: TButton;
    MenuGeneral: TMainMenu;
    Fichier: TMenuItem;
    Comptes: TMenuItem;
    Aide: TMenuItem;
    APropos: TMenuItem;
    BarOutils: TToolBar;
    FondAccueil: TPanel;
    Gauche: TPanel;
    Grille: TStringGrid;
    ToggleBox1: TToggleBox;
    Vide2: TMenuItem;
    Quitter: TMenuItem;
    Vide: TMenuItem;
    procedure NEntreeClick(Sender: TObject);
    procedure QuitterClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Principale: TPrincipale;

implementation


{ TPrincipale }

// Quitter l'application
procedure TPrincipale.QuitterClick(Sender: TObject);
begin
     //Application.CreateForm(TConfQuitter, ConfQuitter);
     ConfQuitter.showmodal;
     ConfQuitter.Free;
end;

procedure TPrincipale.NEntreeClick(Sender: TObject);
begin
     Grille.Cells[2,2] := 'fff';
end;

initialization
  {$I main.lrs}

end.

