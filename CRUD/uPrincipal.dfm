object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'CRUD DataSnap'
  ClientHeight = 274
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 187
    Width = 569
    Height = 46
    DataSource = DataSource
    Align = alBottom
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 569
    Height = 187
    Align = alClient
    DataSource = DataSource
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 233
    Width = 569
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 0
      Top = 6
      Width = 137
      Height = 35
      Caption = 'Local da conex'#227'o'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 143
      Top = 6
      Width = 130
      Height = 35
      Caption = 'Informa'#231#245'es da base'
      Flat = True
      OnClick = SpeedButton2Click
    end
  end
  object SQLConnection: TSQLConnection
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver290.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver290.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=24.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=C:\Delphi\TESTEFB5_50.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Left = 40
    Top = 64
  end
  object SQLDataSet: TSQLDataSet
    CommandText = 'select * from teste'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 32
    Top = 120
    object SQLDataSetCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SQLDataSetQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object SQLDataSetLOCAL: TStringField
      FieldName = 'LOCAL'
      Size = 2
    end
  end
  object DataSource: TDataSource
    DataSet = ClientDataSet
    Left = 240
    Top = 64
  end
  object DataSetProvider: TDataSetProvider
    DataSet = SQLDataSet
    Left = 136
    Top = 64
  end
  object ClientDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider'
    AfterPost = ClientDataSetAfterPost
    AfterDelete = ClientDataSetAfterDelete
    Left = 128
    Top = 128
  end
end
