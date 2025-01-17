unit uDCLData;
{$I DefineType.pas}

interface

uses
  StdCtrls, ComCtrls, Controls, Graphics, ExtCtrls, DB, Buttons, Classes,
{$IFDEF FPC}
  EditBtn,
{$ENDIF}
{$IFnDEF FPC}
  Vcl.DBCtrls,
{$ELSE}
  DBCtrls,
{$ENDIF}
  uDCLConst, uDCLTypes;

type
  {$IFNDEF FPC}
  DateTimePicker=TDateTimePicker;
  TNavButtons=TNavButton;
  TNavButtonsSet=TNavButtonSet;
  {$ENDIF}
  {$IFDEF FPC}
  DateTimePicker={$IFDEF ZVComponents}TZVDateTimePicker; {$ELSE}TDateEdit; {$ENDIF}
  TNavButtons=TDBNavButton;
  TNavButtonsSet=TDBNavButtonSet;
  {$ENDIF}
  TDialogLabel=TLabel;
  TOrientation=(oVertical, oHorizontal);

  TGPT=record
  // EnableSQLTrace,
    OldStyle, DebugMesseges, OneCopy, ExitCnf, UseMessages, UserLogging, UserLoggingHistory, DebugOn,
    DisableFieldsList, HashPass, ShowPicture, DialogsSettings, DisableColors,
    DisableIniPasword, IBAll: Boolean;
    CurrentRunningScrString, CurrentRunningCmdString, Port: Integer;
    DateSeparator, TimeSeparator: Char;
    ServerCodePage, DateFormat, TimeFormat, Viewer, ConnectionString, MainFormCaption,
    NewConnectionString, DBPath, ServerName, NewDBUserName, DBType, GeneratorName: String;
    SQLDialect:Byte;
    NoParamsTable, NoUsersTable, DisableLogOnWithoutUser, MultiRolesMode: Boolean;
    DBUserName, DCLUserName, DCLUserPass, EnterPass, LongRoleName, GetValueSeparator, UpperString,
    UpperStringEnd, NotifycationsTable, IdentifyField, ParentFlgField, CommandField, NumSeqField,
    GPTTableName, GPTNameField, GPTValueField, GPTUserIDField, IniFileName, TemplatesTable,
    StringTypeChar, DCLNameField, DCLTextField, DCLTable, ShowRoleField, ACTIVE_USERS_TABLE,
    USER_LOGIN_HISTORY_TABLE, TemplatesNameField, TemplatesKeyField, TemplatesDataField,
    UserAdminField, {INITable,} RolesMenuTable, TimeStampFormat, DCLLongUserName, UserID, RoleID,
    DCLRoleName, NewDBPassword, DBPassword, LibPath, LaunchScrFile, LaunchForm: String;
    FormPosInDB:TIniStore;
    OfficeDocumentFormat: TOfficeDocumentFormat;
    OfficeFormat: TOfficeFormat;
  end;

TLogonParams=record
//
end;

TVariable=Record
  Name: String[25];
  Value:String;
End;

RField=record
  FType: TFieldType;
  CharCase:TEditCharCase;
  FieldName, Caption, Hint, OPL, ComponentName, Variable, CheckValue, UnCheckValue: String;
  PasswordChar:Char;
  IsFieldWidth, IsFieldHeight, CurrentEdit, ReadOnly, NoDataField: Boolean;
  Top, Left, Width, Height, StepLeft: Word;
  DataFieldType:TDataFieldTypeType;
  FieldTypeFormat:TFieldFormat;
end;

RCalendar=record
  Control: DateTimePicker;
  Caption, Field, VarName: string;
  Value:TDate;
  Num:Integer;
  ReOpen:Boolean;
end;

TExpr=Record
  Oper1, Oper2, ValResult: Real;
  Sign, Result: String;
End;

TSignInfo=Record
  SignPos: Word;
  SignLong:Byte;
End;

RDependFind=Record
  GetResultFields, ReturnFields: Array Of String;
  GetToResultTable:String;
  DependFindMode:Byte;
End;

RButtonParams=record
  Caption, Hint, Command, Pict: string;
  Top, Left, Width, Height: Word;
  Default, Cancel: Boolean;
  FontStyle:TFontStyles;
end;

TDateTimeItem=Record
  Hour, Min, Sec, mSec, Year, Month, Day: Word;
End;

TDCLSession=Record
  LoginTime, ComputerName, MAC, IPAdress, UserSystemName: String;
End;

RStructModify=Record
  ColumnsListCaption, FieldsListCaption: String;
  ColumnsListField, FieldsListField: String;
End;

TDCLDataFields=record
  Name, Caption: string;
  ReadOnly:Boolean;
  Width:Word;
end;

TDCLQueryStore=record
  QueryStr: String;
  QueryRaights:TUserLevelsType;
  QuryType:TQueryType;
end;

TDBFilter=record
  FilterNum, Between, WaitForKey: Integer;
  Partial, NotLike, CaseC, NotFilter: Boolean;
  FilterName, FilterString, Field, KeyField, ListField: String;
  Lookup:TDBLookupComboBox;
  Edit:TEdit;
  FilterType:TFilterType;
  FilterQuery:TDCLDialogQuery;
  FilterData:TDataSource;
  FilterKey, VarName, Caption, SQL, KeyValue: String;
  FilterChengFlag:Integer;
  Width, MaxLength: Word;
  NotCheck: TCheckBox;
end;

TDCLEdits=record
  Edit: TEdit;
  EditsPasswordChar:Char;
  EditsType:TFieldBoxType;
  EditsToFields:String;
  EditsToGetResultFields:RDependFind;
  PostModes, ModifyEdit: Byte;
  EditToVariables:String;
  DCLField:RField;
end;

TDateBox=record
  DateBox: DateTimePicker;
  ModifyDateBox, DateBoxType: Byte;
  DateBoxToFields, DateBoxToVariables: String;
  NoDataField:Boolean;
end;

RCheckBox=record
  CheckBox: TCheckBox;
  CheckBoxToVars, CheckBoxToFields: string;
  NoDataField:Boolean;
end;

RLookups=record
  Lookup: TDBLookupComboBox;
  LookupQuery:TDCLDialogQuery;
  LookupToVars:String;
  LookupData:TDataSource;
  NoDataField:Boolean;
  ModifyEdits:String;
end;

TContextFieldButton=Record
  Button: TDialogSpeedButton;
  Command:String;
End;

TRollBar=record
  RollBar: TTrackBar;
  Event, Variable, Field: String;
end;

TBrushColors=record
  Color: TColor;
  Value, Key: String;
end;

TContextList=record
  ContextList: TComboBox;
  SQL, Table, Field, KeyField, DataField, ListField, Variable: String;
  NoData: Boolean;
end;

TDropBox=record
  DropList: TComboBox;
  FieldName, Variable: String;
end;

RKeyBookMarks=Record
  KeyField, KeyValue, Title: String;
End;

TKeyBookmarks=record
  KeyField, TitleField: String;
  KeyBookMarks:Array Of RKeyBookMarks;
end;

TFontStyleRec=Record
  Italic, Bold, Undeline, StrikeThrough: Byte;
  Center:Boolean;
End;

TReturnFormValue=Record
  Key, Val, KeyModifyField, ValueModifyField,
    KeyEditName, ValueEditName, KeyVar, ValueVar:String;
  Choosen:Boolean;
end;

RVirtualScript=Record
  ScriptName, ScrCommand, ScrText:string;
End;

{ TReturnValueParams }

TReturnValueParams=class
public
  KeyField, ValueField, KeyEditName, ValueEditName, KeyModifyField, ValueModifyField,
    KeyVar, ValueVar:String;
  constructor Create(aKeyField, aValueField, aKeyEditName, aValueEditName, aKeyModifyField, aValueModifyField,
    aKeyVar, aValueVar:String);
end;

TStrArray=Array of String;

procedure ResetButtonParams(var ButtonParams: RButtonParams);
procedure ResetFilterParams(var FilterParams: TDBFilter);
procedure ResetCalendarParams(var Calendar: RCalendar);
procedure ResetFieldParams(var Field: RField);
procedure ResetChooseValue(var Val:TReturnFormValue);
procedure ResetDCLField(var F:TDCLDataFields);
procedure RVirtualScriptsClear(var ScrStruct:RVirtualScript);


var
  GPT: TGPT;
  ConnectErrorCode: Byte;
  TransParams, ScriptRunCreated, ShowFormPanel: Boolean;
  DefaultSystemEncoding, Path, AppConfigDir, UserProfileDir: string;
{$IFDEF MSWINDOWS}
  ScriptRun: Variant;
{$ENDIF}
  NavigVisiButtonsVar: Array [1..10] Of TNavButtonsSet;
  TDataGrid: set of TDataControlType;
  TDataFields: set of TDataControlType;
  DefaultOrientation: TOrientation;
  TBlobFields: set of TFieldType;
  TIntegerTypedFields: set of TFieldType;
  TStringTypedFields: set of TFieldType;
  TFloatTypedFields: set of TFieldType;
  TDateTimeTypedFields: set of TFieldType;
  EvalResultScript: string;

implementation

procedure ResetButtonParams(var ButtonParams: RButtonParams);
begin
  ButtonParams.Caption:='';
  ButtonParams.Hint:='';
  ButtonParams.Command:='';
  ButtonParams.Pict:='';
  ButtonParams.Top:=0;
  ButtonParams.Left:=0;
  ButtonParams.Width:=0;
  ButtonParams.Height:=0;
  ButtonParams.Default:=False;
  ButtonParams.Cancel:=False;
  ButtonParams.FontStyle:=[];
end;

procedure ResetFilterParams(var FilterParams: TDBFilter);
begin
  FilterParams.FilterType:=ftNone;
  FilterParams.FilterKey:='';
  FilterParams.VarName:='';
  FilterParams.FilterChengFlag:=0;
  FilterParams.FilterNum:=0;
  FilterParams.NotLike:=False;
  FilterParams.CaseC:=False;
  FilterParams.Between:=0;
  FilterParams.FilterName:='';
  FilterParams.FilterString:='';
  FilterParams.Field:='';
  FilterParams.KeyField:='';
  FilterParams.ListField:='';
  FilterParams.Width:=FilterWidth;
  FilterParams.FilterString:='';
  FilterParams.KeyValue:='';
  FilterParams.WaitForKey:=0;
  FilterParams.MaxLength:=0;
end;

procedure ResetCalendarParams(var Calendar: RCalendar);
begin
  Calendar.Caption:='';
  Calendar.Field:='';
  Calendar.VarName:='';
  // Calendar.Value:=Date;
  Calendar.ReOpen:=True;
  Calendar.Num:=-1;
end;

procedure ResetFieldParams(var Field: RField);
begin
  Field.CheckValue:='1';
  Field.UnCheckValue:='0';
  Field.FType:=ftString;
  Field.CharCase:=ecNormal;
  Field.FieldName:='';
  Field.Caption:='';
  Field.Hint:='';
  Field.OPL:='';
  Field.ComponentName:='';
  Field.PasswordChar:=#0;
  Field.IsFieldWidth:=False;
  Field.IsFieldHeight:=False;
  Field.CurrentEdit:=False;
  Field.ReadOnly:=False;
  Field.NoDataField:=False;
  Field.DataFieldType:=dftDefault;
  // Field.Top:=0; Field.Left:=0;
  Field.Width:=0;
  Field.Height:=0;
  Field.StepLeft:=0;
end;

procedure ResetChooseValue(var Val:TReturnFormValue);
Begin
  Val.Val:='';
  Val.Key:='';
  Val.Choosen:=False;
End;

procedure ResetDCLField(var F:TDCLDataFields);
Begin
  F.Name:='';
  F.Caption:='';
  F.ReadOnly:=False;
  F.Width:=0;
End;

procedure RVirtualScriptsClear(var ScrStruct:RVirtualScript);
Begin
  ScrStruct.ScriptName:='';
  ScrStruct.ScrCommand:='';
  ScrStruct.ScrText:='';
End;

{ TReturnValueParams }

constructor TReturnValueParams.Create(aKeyField, aValueField, aKeyEditName, aValueEditName, aKeyModifyField, aValueModifyField,
    aKeyVar, aValueVar: String);
begin
  KeyField:=aKeyField;
  ValueField:=aValueField;
  KeyEditName:=aKeyEditName;
  ValueEditName:=aValueEditName;
  KeyModifyField:=aKeyModifyField;
  ValueModifyField:=aValueModifyField;
  KeyVar:=aKeyVar;
  ValueVar:=aValueVar;
end;

Initialization

  TDataGrid:=[dctMainGrid..dctLookupGrid];
  TDataFields:=[dctFields..dctFieldsStep];
  DefaultOrientation:=oVertical;

  TBlobFields:=[ftBytes, ftVarBytes, ftBlob, ftGraphic, ftMemo, ftFmtMemo, ftTypedBinary, ftWideMemo];
  TStringTypedFields:=[ftUnknown, ftString, ftFixedChar, ftWideString, ftVariant, ftGuid, ftFixedWideChar, ftWideMemo];
  TIntegerTypedFields:=[ftSmallint, ftInteger, ftWord, ftBoolean, ftAutoInc, ftLargeint, ftBytes, ftVarBytes{$IFNDEF FPC}, ftOraInterval{$ENDIF}];
  TFloatTypedFields:=[ftBCD, ftFloat, ftCurrency];
  TDateTimeTypedFields:=[ftDate, ftTime, ftDateTime, ftTimeStamp {$IFNDEF FPC}, ftOraTimeStamp{$ENDIF}];

end.
