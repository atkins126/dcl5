{$IFDEF FPC}
{$MODE Delphi}
{$codepage utf8}
{$GOTO OFF}
{$ENDIF}
{$IFNDEF FPC}
{$DEFINE DELPHI}
{$ENDIF}

{$IFDEF DELPHI32}
{$DEFINE DELPHI}
{$ENDIF}
{$IFDEF DELPHI64}
{$DEFINE DELPHI}
{$ENDIF}

{$IFDEF DELPHI}
{$IFDEF CPUX86}
{$DEFINE CPU32}
{$ENDIF}
{$IFDEF CPUX64}
{$DEFINE CPU64}
{$ENDIF}
{$ENDIF}
{$IFNDEF FPC}
{$IFDEF CPU64}
{$DEFINE CPUX64}
{$ENDIF}
{$IFDEF CPU32}
{$DEFINE CPUX86}
{$ENDIF}
{$ENDIF}

//{$DEFINE REDGREEN}
{$DEFINE BLACKWHITE}
{$DEFINE ThemedDBGrid}
//{$DEFINE USEDELPHIThemes}
{$DEFINE NOFASTREPORTS}

//{$DEFINE DEVELOPERMODE}

//{$DEFINE DCLDEBUG}
//{$DEFINE DCLDEBUG2}

//{$DEFINE EMBEDDED}

{$IFNDEF FPC}
// {$DEFINE ADO}
// {$DEFINE ZEOS}
  {$DEFINE IBX}
{$ENDIF}
{$IFDEF FPC}
//  {$DEFINE ZEOS}
//  {$DEFINE SQLdb}
  {$DEFINE SQLdbIB}
//  {$DEFINE IBX}

//  {$DEFINE ZVComponents}
{$ENDIF}

{$IFDEF ADO}
{$DEFINE PARAMS2}
{$DEFINE PARAMETERS}
{$DEFINE WITH_WIDEDATASET}
{$ENDIF}

{$IFDEF IBX}
{$DEFINE TRANSACTIONDB}
{$DEFINE CACHEDDB}
{$DEFINE UPDATESQLDB}
{$DEFINE REFRESHSQLDB}
{$DEFINE FREQUIREDDB}
{$DEFINE PARAMS}
{$DEFINE IBALL}
{$DEFINE CACHEON}
{$DEFINE SERVERDB}
{$ENDIF}

{$IFDEF ZEOS}
{$DEFINE CACHEDDB}
{$DEFINE UPDATESQLDB}
{$DEFINE REFRESHSQLDB}
{$DEFINE FREQUIREDDB}
{$DEFINE PARAMS2}
{$DEFINE PARAMS}
{$DEFINE CACHEON}
{$DEFINE SERVERDB}
{$DEFINE NODSUPDATEOBJ}
{$ENDIF}

{$IFDEF SQLdbIB}
{$DEFINE TRANSACTIONDB}
{$DEFINE REFRESHSQLDB}
{$DEFINE FREQUIREDDB}
{$DEFINE IBALL}
{$DEFINE CACHEON}
{$DEFINE PARAMS2}
{$DEFINE PARAMS}
{$DEFINE SERVERDB}
{$DEFINE SQLdbFamily}
{$ENDIF}

{$IFDEF SQLdb}
{$DEFINE TRANSACTIONDB}
{$DEFINE REFRESHSQLDB}
{$DEFINE FREQUIREDDB}
{$DEFINE CACHEON}
{$DEFINE PARAMS2}
{$DEFINE PARAMS}
{$DEFINE SERVERDB}
{$DEFINE SQLdbFamily}
{$ENDIF}

{$IFDEF USEDELPHIThemes}
{$UNDEF ThemedDBGrid}
{$ENDIF}

{$IFDEF EMBEDDED}
{$DEFINE NODCLMESSAGES}
{$ENDIF}

