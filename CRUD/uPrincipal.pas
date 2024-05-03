unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXFirebird, Data.FMTBcd,
  Datasnap.Provider, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls, Data.DB,
  Vcl.StdCtrls, Vcl.Mask, Data.SqlExpr, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Winapi.ShellAPI;

type
  TFrmPrincipal = class(TForm)
    SQLConnection: TSQLConnection;
    SQLDataSet: TSQLDataSet;
    SQLDataSetCODIGO: TIntegerField;
    SQLDataSetQUANTIDADE: TFloatField;
    SQLDataSetLOCAL: TStringField;
    DataSource: TDataSource;
    DataSetProvider: TDataSetProvider;
    ClientDataSet: TClientDataSet;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure ClientDataSetAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ClientDataSetAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure OpenFolderWithExplorer(const FolderPath: string);
begin
  ShellExecute(0, 'open', 'explorer.exe', PChar(FolderPath), nil, SW_NORMAL);
end;

procedure TFrmPrincipal.ClientDataSetAfterDelete(DataSet: TDataSet);
begin
 ClientDataSet.ApplyUpdates(-1);
end;

procedure TFrmPrincipal.ClientDataSetAfterPost(DataSet: TDataSet);
begin
  ClientDataSet.ApplyUpdates(-1);
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  ClientDataSet.Open;
end;

procedure TFrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
 OpenFolderWithExplorer('C:\Delphi');
end;

procedure TFrmPrincipal.SpeedButton2Click(Sender: TObject);
begin
 ShowMessage('Nome da base: TESTEFB5_50.FDB' + #13 +
             'Nome da tabela: TESTE' + #13 +
             'Nome dos campos: ' + #13 +
             'CODIGO : INTEGER,' + #13 +
             'QUANTIDADE : DOUBLE PRECISION,' + #13 +
             'LOCAL : VARCHAR(2)'
             );
end;

end.
