object FormQuery: TFormQuery
  Left = 0
  Top = 0
  Caption = 'SQL query form'
  ClientHeight = 649
  ClientWidth = 932
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 221
    Width = 932
    Height = 6
    Cursor = crVSplit
    Align = alTop
    Beveled = True
    ExplicitTop = 97
    ExplicitWidth = 706
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 932
    Height = 221
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      932
      221)
    object ButtonSelect: TButton
      Left = 6
      Top = 6
      Width = 84
      Height = 23
      Caption = '&Select'
      TabOrder = 0
      OnClick = ButtonSelectClick
    end
    object ButtonCopy: TButton
      Left = 96
      Top = 6
      Width = 84
      Height = 23
      Caption = '&Copy Results'
      TabOrder = 1
      OnClick = ButtonCopyClick
    end
    object ButtonExecute: TButton
      Left = 186
      Top = 6
      Width = 75
      Height = 23
      Caption = '&Execute'
      TabOrder = 2
      OnClick = ButtonExecuteClick
    end
    object cbSplitExec: TCheckBox
      Left = 267
      Top = 9
      Width = 97
      Height = 17
      Caption = 'S&plit Execute'
      TabOrder = 3
    end
    object cbCreateTables: TCheckBox
      Left = 370
      Top = 9
      Width = 97
      Height = 17
      Caption = 'Create &Tables'
      TabOrder = 4
    end
    object cbCreateIndexes: TCheckBox
      Left = 472
      Top = 9
      Width = 105
      Height = 17
      Caption = 'Create &Indexes'
      TabOrder = 5
    end
    object cbExecOther: TCheckBox
      Left = 593
      Top = 9
      Width = 97
      Height = 17
      Caption = 'Execute &Other'
      TabOrder = 6
    end
    object ComboConnection: TComboBoxEx
      Left = 688
      Top = 7
      Width = 198
      Height = 22
      AutoCompleteOptions = [acoAutoSuggest, acoAutoAppend]
      ItemsEx = <>
      Anchors = [akTop, akRight]
      TabOrder = 7
      Text = 'JIVE'
      OnSelect = ComboConnectionSelect
    end
    object TopPanel: TPanel
      Left = 6
      Top = 35
      Width = 926
      Height = 180
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      TabOrder = 8
      object Splitter2: TSplitter
        Left = 679
        Top = 0
        Height = 180
        Align = alRight
        ExplicitLeft = 680
        ExplicitTop = 104
        ExplicitHeight = 100
      end
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 679
        Height = 180
        Align = alClient
        PopupMenu = PopupMenuSql
        ScrollBars = ssBoth
        TabOrder = 0
        WantTabs = True
        WordWrap = False
      end
      object ListTables: TListBox
        Left = 682
        Top = 0
        Width = 244
        Height = 180
        Align = alRight
        ItemHeight = 13
        PopupMenu = PopupMenuTableList
        TabOrder = 1
        OnDblClick = ListTablesDblClick
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 227
    Width = 932
    Height = 403
    Align = alClient
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 630
    Width = 932
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object QueryDb: TSQLConnection
    DriverName = 'InterBase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=DBXInterBase'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver150.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=15.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXInterbaseMetaDataCommandFactory,DbxInt' +
        'erBaseDriver150.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXInterbaseMetaDataCommand' +
        'Factory,Borland.Data.DbxInterBaseDriver,Version=15.0.0.0,Culture' +
        '=neutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxint.dll'
      'VendorLib=GDS32.DLL'
      'Database=database.gdb'
      'User_Name=sysdba'
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
    VendorLib = 'GDS32.DLL'
    Left = 26
    Top = 58
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = ClientDataSet1
    Left = 344
    Top = 64
  end
  object SQLDataSet1: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = QueryDb
    Left = 88
    Top = 64
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 168
    Top = 64
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 256
    Top = 64
  end
  object ActionManager1: TActionManager
    Images = ImageList1
    Left = 416
    Top = 72
    StyleName = 'Platform Default'
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 0
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 2
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 3
      ShortCut = 16474
    end
    object EditDelete1: TEditDelete
      Category = 'Edit'
      Caption = '&Delete'
      Hint = 'Delete|Erases the selection'
      ImageIndex = 4
      ShortCut = 46
    end
    object actFileOpen: TFileOpen
      Category = 'File'
      Caption = '&Open...'
      Dialog.DefaultExt = 'sql'
      Dialog.Filter = 'SQL commands|*.ddl;*.sql|Text files|*.txt;*.text|All files|*.*'
      Hint = 'Open|Opens an existing file'
      ImageIndex = 5
      ShortCut = 16463
      OnAccept = actFileOpenAccept
    end
    object actInsertTableName: TAction
      Category = 'TableList'
      Caption = '&Insert table name'
      Hint = 'Insert the selected table name into the editor'
      ShortCut = 32841
      OnExecute = actInsertTableNameExecute
      OnUpdate = actInsertTableNameUpdate
    end
    object ActLoadTable: TAction
      Category = 'TableList'
      Caption = '&Load table'
      ShortCut = 16460
      OnExecute = ActLoadTableExecute
      OnUpdate = ActLoadTableUpdate
    end
    object actFileSave: TFileSaveAs
      Category = 'File'
      Caption = 'Save &As...'
      Hint = 'Save As|Saves the active file with a new name'
      ImageIndex = 6
      OnAccept = actFileSaveAccept
      OnUpdate = actFileSaveUpdate
    end
    object SearchFind1: TSearchFind
      Category = 'Search'
      Caption = '&Find...'
      Hint = 'Find|Finds the specified text'
      ImageIndex = 7
      ShortCut = 16454
    end
    object SearchFindNext1: TSearchFindNext
      Category = 'Search'
      Caption = 'Find &Next'
      Hint = 'Find Next|Repeats the last find'
      ImageIndex = 8
      ShortCut = 114
    end
    object SearchReplace1: TSearchReplace
      Category = 'Search'
      Caption = '&Replace'
      Hint = 'Replace|Replaces specific text with different text'
      ImageIndex = 9
    end
    object SearchFindFirst1: TSearchFindFirst
      Category = 'Search'
      Caption = 'F&ind First'
      Hint = 'Find First|Finds the first occurance of specified text'
    end
  end
  object ImageList1: TImageList
    Left = 488
    Top = 72
    Bitmap = {
      494C01010A000C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001001000000000000018
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001863000000000000
      0000000000000000186300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010420000
      0000000010420000000000000000000000000000000000001863000000000000
      0000000000000000186300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010420000
      0000000010420000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001863000000000000
      0000186300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001863000000000000
      0000186300000000000000000000000000000000000000001863000000000000
      0000186300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001863000000000000
      0000186300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1042000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1042000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000420042004200420042
      0042004200420042000000000000000000000000000000000000004200420000
      0000000000001863000000420000000000000000FF7F00000000000000000000
      0000000000000000FF7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E07F00000042004200420042
      0042004200420042004200000000000000000000000000000000004200420000
      0000000000001863000000420000000000000000FF7F00000000000000000000
      0000000000000000FF7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FE07F0000004200420042
      0042004200420042004200420000000000000000000000000000004200420000
      0000000000000000000000420000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E07FFF7FE07F000000420042
      0042004200420042004200420042000000000000000000000000004200420042
      00420042004200420042004200000000000000000000FF7F0000000000000000
      00000000FF7F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FE07FFF7FE07F00000000
      0000000000000000000000000000000000000000000000000000004200420000
      00000000000000000042004200000000000000000000FF7F0000000000001863
      00000000FF7F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E07FFF7FE07FFF7FE07FFF7F
      E07FFF7FE07F0000000000000000000000000000000000000000004200001863
      18631863186318630000004200000000000000000000FF7F0000000000001863
      00000000FF7F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FE07FFF7FE07FFF7FE07F
      FF7FE07FFF7F0000000000000000000000000000000000000000004200001863
      1863186318631863000000420000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E07FFF7FE07F000000000000
      0000000000000000000000000000000000000000000000000000004200001863
      186318631863186300000000000000000000000000000000FF7F000000000000
      00000000FF7F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004200001863
      1863186318631863000018630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7F00000000
      000000000000FF7F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010001000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001000
      1000100010001000100010001000100010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100000000000
      1000000000001000100000000000000000000000000000000000000000000000
      1000100010001000100010001000100010000000000000000000000000001000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100000000000
      1000000010000000000010000000000000000000000000000000000000000000
      1000FF7FFF7FFF7FFF7FFF7FFF7FFF7F10000000104200421042004210421000
      FF7F000000000000000000000000FF7F10000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100000000000
      1000000010000000000010000000000000000000000000000000000000000000
      1000FF7F00000000000000000000FF7F10000000004210420042104200421000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010001000
      1000000010000000000010000000000000000000000000000000000000000000
      1000FF7FFF7FFF7FFF7FFF7FFF7FFF7F10000000104200421042004210421000
      FF7F000000000000FF7F10001000100010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      10000000100010001000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      1000FF7F00000000000000000000FF7F10000000004210420042104200421000
      FF7FFF7FFF7FFF7FFF7F1000FF7F1000000000000000CC00CC00CC00CC00CC00
      0000000000000000000000008C01000000000000000000000000000000000000
      10000000100000000000000000000000000000000000FF7F0000000000000000
      1000FF7FFF7FFF7FFF7FFF7FFF7FFF7F10000000104200421042004210421000
      FF7FFF7FFF7FFF7FFF7F10001000000000000000000093018C018C0193010000
      0000000000000000000000008C01000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      1000FF7F00000000FF7F10001000100010000000004210420042104200421000
      1000100010001000100010000000000000000000000093018C01930179320000
      0000000000000000000000008C01000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7F0000000000000000
      1000FF7FFF7FFF7FFF7F1000FF7F100000000000104200421042004210420042
      104200421042004210420042000000000000000000009301930179328C017932
      0000000000000000000079328C01000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      1000FF7FFF7FFF7FFF7F10001000000000000000004210420000000000000000
      0000000000000000104210420000000000000000000093010000000079328C01
      8C0179320000000079328C017932000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7F00000000FF7F0000
      1000100010001000100010000000000000000000104210420000000000000000
      0000000000000000104200420000000000000000000000000000000000000000
      79328C018C018C018C0179320000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F0000
      FF7F0000000000000000000000000000000000000042104200420000E07F0000
      0000E07F00001042004210420000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F0000
      000000000000000000000000000000000000000000000000000000000000E07F
      E07F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFB6E700000000FE49B76B00000000
      FE49842700000000FFFFB76B00000000FFFFCEE700000000C7C7FFFF00000000
      C7C7C7C700000000C387C7C700000000C007C38700000000C007C00700000000
      C007C00700000000C007C00700000000C007C00700000000F39FC00700000000
      F39FF39F00000000F39FF39F00000000FFFFFFFFFF7EFFFFFFFFFFFFBFFFFFFF
      EFFD001FF00307C1C7FF000FE00307C1C3FB0007E00307C1E3F70003E0030101
      F1E70001E0030001F8CF000020030001FC1F001FE0020001FE3F001FE0038003
      FC1F001FE003C107F8CF8FF1E003C107E1E7FFF9E003E38FC3F3FF75FFFFE38F
      C7FDFF8FBF7DE38FFFFFFFFF7F7EFFFFFFFFFFFFFFFFFFFFF9FFFFFFFC00FFFF
      F6CFFE008000FFFFF6B7FE000000FFFFF6B7FE000000FFFFF8B780000000FFFF
      FE8F80000001C1FBFE3F80000003C3FBFF7F80000003C3FBFE3F80010003C1F3
      FEBF80030003D863FC9F80070FC3FE07FDDF807F0003FFFFFDDF80FF8007FFFF
      FDDF81FFF87FFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenuSql: TPopupMenu
    Images = ImageList1
    Left = 552
    Top = 72
    object Open1: TMenuItem
      Action = actFileOpen
    end
    object SaveAs1: TMenuItem
      Action = actFileSave
      ShortCut = 16467
    end
    object Copy1: TMenuItem
      Action = EditCopy1
    end
    object Cut1: TMenuItem
      Action = EditCut1
    end
    object Delete1: TMenuItem
      Action = EditDelete1
    end
    object Paste1: TMenuItem
      Action = EditPaste1
    end
    object SelectAll1: TMenuItem
      Action = EditSelectAll1
    end
    object Undo1: TMenuItem
      Action = EditUndo1
    end
    object Find1: TMenuItem
      Action = SearchFind1
    end
    object FindNext1: TMenuItem
      Action = SearchFindNext1
    end
    object Replace1: TMenuItem
      Action = SearchReplace1
      ShortCut = 16466
    end
  end
  object PopupMenuTableList: TPopupMenu
    Left = 744
    Top = 80
    object Loadtable1: TMenuItem
      Action = ActLoadTable
    end
    object Inserttablename1: TMenuItem
      Action = actInsertTableName
    end
  end
end
