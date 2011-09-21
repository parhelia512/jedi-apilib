{******************************************************************************}
{                                                                              }
{ Windows Base Services API interface Unit for Object Pascal                   }
{                                                                              }
{ Portions created by Microsoft are Copyright (C) 1995-2001 Microsoft          }
{ Corporation. All Rights Reserved.                                            }
{                                                                              }
{ The original file is: winbase.h, released August 2001. The original Pascal   }
{ code is: WinBase.pas, released December 2000. The initial developer of the   }
{ Pascal code is Marcel van Brakel (brakelm att chello dott nl).               }
{                                                                              }
{ Portions created by Marcel van Brakel are Copyright (C) 1999-2001            }
{ Marcel van Brakel. All Rights Reserved.                                      }
{                                                                              }
{ Obtained through: Joint Endeavour of Delphi Innovators (Project JEDI)        }
{                                                                              }
{ You may retrieve the latest version of this file at the Project JEDI         }
{ APILIB home page, located at http://jedi-apilib.sourceforge.net              }
{                                                                              }
{ The contents of this file are used with permission, subject to the Mozilla   }
{ Public License Version 1.1 (the "License"); you may not use this file except }
{ in compliance with the License. You may obtain a copy of the License at      }
{ http://www.mozilla.org/MPL/MPL-1.1.html                                      }
{                                                                              }
{ Software distributed under the License is distributed on an "AS IS" basis,   }
{ WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for }
{ the specific language governing rights and limitations under the License.    }
{                                                                              }
{ Alternatively, the contents of this file may be used under the terms of the  }
{ GNU Lesser General Public License (the  "LGPL License"), in which case the   }
{ provisions of the LGPL License are applicable instead of those above.        }
{ If you wish to allow use of your version of this file only under the terms   }
{ of the LGPL License and not to allow others to use your version of this file }
{ under the MPL, indicate your decision by deleting  the provisions above and  }
{ replace  them with the notice and other provisions required by the LGPL      }
{ License.  If you do not delete the provisions above, a recipient may use     }
{ your version of this file under either the MPL or the LGPL License.          }
{                                                                              }
{ For more information about the LGPL: http://www.gnu.org/copyleft/lesser.html }
{                                                                              }
{******************************************************************************}

// $Id: JwaWinBase.pas,v 1.17 2007/09/14 06:48:47 marquardt Exp $
{$IFNDEF JWA_OMIT_SECTIONS}
unit JwaWinBase;
{$ENDIF JWA_OMIT_SECTIONS}

{$WEAKPACKAGEUNIT}

{$HPPEMIT ''}
{$HPPEMIT '#include "WinBase.h"'}
{$HPPEMIT ''}

{$IFNDEF JWA_OMIT_SECTIONS}

{$I ..\Includes\JediAPILib.inc}

{$STACKFRAMES ON} // must be after include. FPC's $MODE command resets this

interface

uses
  {$IFDEF USE_DELPHI_TYPES}
  Windows,
  {$ENDIF USE_DELPHI_TYPES}
  JwaNtStatus, JwaWinNT, JwaWinType;
{$ENDIF JWA_OMIT_SECTIONS}

{$IFNDEF JWA_IMPLEMENTATIONSECTION}

const
  INVALID_HANDLE_VALUE     = HANDLE(-1);
  {$EXTERNALSYM INVALID_HANDLE_VALUE}
  INVALID_FILE_SIZE        = DWORD($FFFFFFFF);
  {$EXTERNALSYM INVALID_FILE_SIZE}
  INVALID_SET_FILE_POINTER = DWORD(-1);
  {$EXTERNALSYM INVALID_SET_FILE_POINTER}
  INVALID_FILE_ATTRIBUTES  = DWORD(-1);
  {$EXTERNALSYM INVALID_FILE_ATTRIBUTES}

  FILE_BEGIN   = 0;
  {$EXTERNALSYM FILE_BEGIN}
  FILE_CURRENT = 1;
  {$EXTERNALSYM FILE_CURRENT}
  FILE_END     = 2;
  {$EXTERNALSYM FILE_END}

  TIME_ZONE_ID_INVALID = DWORD($FFFFFFFF);
  {$EXTERNALSYM TIME_ZONE_ID_INVALID}

  WAIT_FAILED   = DWORD($FFFFFFFF);
  {$EXTERNALSYM WAIT_FAILED}
  WAIT_OBJECT_0 = STATUS_WAIT_0 + 0;
  {$EXTERNALSYM WAIT_OBJECT_0}

  WAIT_ABANDONED   = STATUS_ABANDONED_WAIT_0 + 0;
  {$EXTERNALSYM WAIT_ABANDONED}
  WAIT_ABANDONED_0 = STATUS_ABANDONED_WAIT_0 + 0;
  {$EXTERNALSYM WAIT_ABANDONED_0}

  WAIT_IO_COMPLETION                 = STATUS_USER_APC;
  {$EXTERNALSYM WAIT_IO_COMPLETION}
  STILL_ACTIVE                       = STATUS_PENDING;
  {$EXTERNALSYM STILL_ACTIVE}
  EXCEPTION_ACCESS_VIOLATION         = STATUS_ACCESS_VIOLATION;
  {$EXTERNALSYM EXCEPTION_ACCESS_VIOLATION}
  EXCEPTION_DATATYPE_MISALIGNMENT    = STATUS_DATATYPE_MISALIGNMENT;
  {$EXTERNALSYM EXCEPTION_DATATYPE_MISALIGNMENT}
  EXCEPTION_BREAKPOINT               = STATUS_BREAKPOINT;
  {$EXTERNALSYM EXCEPTION_BREAKPOINT}
  EXCEPTION_SINGLE_STEP              = STATUS_SINGLE_STEP;
  {$EXTERNALSYM EXCEPTION_SINGLE_STEP}
  EXCEPTION_ARRAY_BOUNDS_EXCEEDED    = STATUS_ARRAY_BOUNDS_EXCEEDED;
  {$EXTERNALSYM EXCEPTION_ARRAY_BOUNDS_EXCEEDED}
  EXCEPTION_FLT_DENORMAL_OPERAND     = STATUS_FLOAT_DENORMAL_OPERAND;
  {$EXTERNALSYM EXCEPTION_FLT_DENORMAL_OPERAND}
  EXCEPTION_FLT_DIVIDE_BY_ZERO       = STATUS_FLOAT_DIVIDE_BY_ZERO;
  {$EXTERNALSYM EXCEPTION_FLT_DIVIDE_BY_ZERO}
  EXCEPTION_FLT_INEXACT_RESULT       = STATUS_FLOAT_INEXACT_RESULT;
  {$EXTERNALSYM EXCEPTION_FLT_INEXACT_RESULT}
  EXCEPTION_FLT_INVALID_OPERATION    = STATUS_FLOAT_INVALID_OPERATION;
  {$EXTERNALSYM EXCEPTION_FLT_INVALID_OPERATION}
  EXCEPTION_FLT_OVERFLOW             = STATUS_FLOAT_OVERFLOW;
  {$EXTERNALSYM EXCEPTION_FLT_OVERFLOW}
  EXCEPTION_FLT_STACK_CHECK          = STATUS_FLOAT_STACK_CHECK;
  {$EXTERNALSYM EXCEPTION_FLT_STACK_CHECK}
  EXCEPTION_FLT_UNDERFLOW            = STATUS_FLOAT_UNDERFLOW;
  {$EXTERNALSYM EXCEPTION_FLT_UNDERFLOW}
  EXCEPTION_INT_DIVIDE_BY_ZERO       = STATUS_INTEGER_DIVIDE_BY_ZERO;
  {$EXTERNALSYM EXCEPTION_INT_DIVIDE_BY_ZERO}
  EXCEPTION_INT_OVERFLOW             = STATUS_INTEGER_OVERFLOW;
  {$EXTERNALSYM EXCEPTION_INT_OVERFLOW}
  EXCEPTION_PRIV_INSTRUCTION         = STATUS_PRIVILEGED_INSTRUCTION;
  {$EXTERNALSYM EXCEPTION_PRIV_INSTRUCTION}
  EXCEPTION_IN_PAGE_ERROR            = STATUS_IN_PAGE_ERROR;
  {$EXTERNALSYM EXCEPTION_IN_PAGE_ERROR}
  EXCEPTION_ILLEGAL_INSTRUCTION      = STATUS_ILLEGAL_INSTRUCTION;
  {$EXTERNALSYM EXCEPTION_ILLEGAL_INSTRUCTION}
  EXCEPTION_NONCONTINUABLE_EXCEPTION = STATUS_NONCONTINUABLE_EXCEPTION;
  {$EXTERNALSYM EXCEPTION_NONCONTINUABLE_EXCEPTION}
  EXCEPTION_STACK_OVERFLOW           = STATUS_STACK_OVERFLOW;
  {$EXTERNALSYM EXCEPTION_STACK_OVERFLOW}
  EXCEPTION_INVALID_DISPOSITION      = STATUS_INVALID_DISPOSITION;
  {$EXTERNALSYM EXCEPTION_INVALID_DISPOSITION}
  EXCEPTION_GUARD_PAGE               = STATUS_GUARD_PAGE_VIOLATION;
  {$EXTERNALSYM EXCEPTION_GUARD_PAGE}
  EXCEPTION_INVALID_HANDLE           = STATUS_INVALID_HANDLE;
  {$EXTERNALSYM EXCEPTION_INVALID_HANDLE}
  EXCEPTION_POSSIBLE_DEADLOCK        = STATUS_POSSIBLE_DEADLOCK;
  {$EXTERNALSYM EXCEPTION_POSSIBLE_DEADLOCK}
  CONTROL_C_EXIT                     = STATUS_CONTROL_C_EXIT;
  {$EXTERNALSYM CONTROL_C_EXIT}

procedure MoveMemory(Destination, Source: PVOID; Length: SIZE_T);
{$EXTERNALSYM MoveMemory}
procedure CopyMemory(Destination, Source: PVOID; Length: SIZE_T);
{$EXTERNALSYM CopyMemory}
procedure FillMemory(Destination: PVOID; Length: SIZE_T; Fill: BYTE);
{$EXTERNALSYM FillMemory}
procedure ZeroMemory(Destination: PVOID; Length: SIZE_T);
{$EXTERNALSYM ZeroMemory}


function SecureZeroMemory({__in}ptr : PVOID;{__in}cnt : SIZE_T) : Pointer;{$IFDEF DELPHI2005_UP}inline;{$ENDIF}
{$EXTERNALSYM ZeroMemory}

//
// File creation flags must start at the high end since they
// are combined with the attributes
//

const
  FILE_FLAG_WRITE_THROUGH      = DWORD($80000000);
  {$EXTERNALSYM FILE_FLAG_WRITE_THROUGH}
  FILE_FLAG_OVERLAPPED         = $40000000;
  {$EXTERNALSYM FILE_FLAG_OVERLAPPED}
  FILE_FLAG_NO_BUFFERING       = $20000000;
  {$EXTERNALSYM FILE_FLAG_NO_BUFFERING}
  FILE_FLAG_RANDOM_ACCESS      = $10000000;
  {$EXTERNALSYM FILE_FLAG_RANDOM_ACCESS}
  FILE_FLAG_SEQUENTIAL_SCAN    = $08000000;
  {$EXTERNALSYM FILE_FLAG_SEQUENTIAL_SCAN}
  FILE_FLAG_DELETE_ON_CLOSE    = $04000000;
  {$EXTERNALSYM FILE_FLAG_DELETE_ON_CLOSE}
  FILE_FLAG_BACKUP_SEMANTICS   = $02000000;
  {$EXTERNALSYM FILE_FLAG_BACKUP_SEMANTICS}
  FILE_FLAG_POSIX_SEMANTICS    = $01000000;
  {$EXTERNALSYM FILE_FLAG_POSIX_SEMANTICS}
  FILE_FLAG_OPEN_REPARSE_POINT = $00200000;
  {$EXTERNALSYM FILE_FLAG_OPEN_REPARSE_POINT}
  FILE_FLAG_OPEN_NO_RECALL     = $00100000;
  {$EXTERNALSYM FILE_FLAG_OPEN_NO_RECALL}
  FILE_FLAG_FIRST_PIPE_INSTANCE = $00080000;
  {$EXTERNALSYM FILE_FLAG_FIRST_PIPE_INSTANCE}

  CREATE_NEW        = 1;
  {$EXTERNALSYM CREATE_NEW}
  CREATE_ALWAYS     = 2;
  {$EXTERNALSYM CREATE_ALWAYS}
  OPEN_EXISTING     = 3;
  {$EXTERNALSYM OPEN_EXISTING}
  OPEN_ALWAYS       = 4;
  {$EXTERNALSYM OPEN_ALWAYS}
  TRUNCATE_EXISTING = 5;
  {$EXTERNALSYM TRUNCATE_EXISTING}

//
// Define possible return codes from the CopyFileEx callback routine
//

  PROGRESS_CONTINUE = 0;
  {$EXTERNALSYM PROGRESS_CONTINUE}
  PROGRESS_CANCEL   = 1;
  {$EXTERNALSYM PROGRESS_CANCEL}
  PROGRESS_STOP     = 2;
  {$EXTERNALSYM PROGRESS_STOP}
  PROGRESS_QUIET    = 3;
  {$EXTERNALSYM PROGRESS_QUIET}

//
// Define CopyFileEx callback routine state change values
//

  CALLBACK_CHUNK_FINISHED = $00000000;
  {$EXTERNALSYM CALLBACK_CHUNK_FINISHED}
  CALLBACK_STREAM_SWITCH  = $00000001;
  {$EXTERNALSYM CALLBACK_STREAM_SWITCH}

//
// Define CopyFileEx option flags
//

  COPY_FILE_FAIL_IF_EXISTS        = $00000001;
  {$EXTERNALSYM COPY_FILE_FAIL_IF_EXISTS}
  COPY_FILE_RESTARTABLE           = $00000002;
  {$EXTERNALSYM COPY_FILE_RESTARTABLE}
  COPY_FILE_OPEN_SOURCE_FOR_WRITE = $00000004;
  {$EXTERNALSYM COPY_FILE_OPEN_SOURCE_FOR_WRITE}
  COPY_FILE_ALLOW_DECRYPTED_DESTINATION = $00000008;
  {$EXTERNALSYM COPY_FILE_ALLOW_DECRYPTED_DESTINATION}

//
// Define ReplaceFile option flags
//

  REPLACEFILE_WRITE_THROUGH       = $00000001;
  {$EXTERNALSYM REPLACEFILE_WRITE_THROUGH}
  REPLACEFILE_IGNORE_MERGE_ERRORS = $00000002;
  {$EXTERNALSYM REPLACEFILE_IGNORE_MERGE_ERRORS}

//
// Define the NamedPipe definitions
//

//
// Define the dwOpenMode values for CreateNamedPipe
//

  PIPE_ACCESS_INBOUND  = $00000001;
  {$EXTERNALSYM PIPE_ACCESS_INBOUND}
  PIPE_ACCESS_OUTBOUND = $00000002;
  {$EXTERNALSYM PIPE_ACCESS_OUTBOUND}
  PIPE_ACCESS_DUPLEX   = $00000003;
  {$EXTERNALSYM PIPE_ACCESS_DUPLEX}

//
// Define the Named Pipe End flags for GetNamedPipeInfo
//

  PIPE_CLIENT_END = $00000000;
  {$EXTERNALSYM PIPE_CLIENT_END}
  PIPE_SERVER_END = $00000001;
  {$EXTERNALSYM PIPE_SERVER_END}

//
// Define the dwPipeMode values for CreateNamedPipe
//

  PIPE_WAIT             = $00000000;
  {$EXTERNALSYM PIPE_WAIT}
  PIPE_NOWAIT           = $00000001;
  {$EXTERNALSYM PIPE_NOWAIT}
  PIPE_READMODE_BYTE    = $00000000;
  {$EXTERNALSYM PIPE_READMODE_BYTE}
  PIPE_READMODE_MESSAGE = $00000002;
  {$EXTERNALSYM PIPE_READMODE_MESSAGE}
  PIPE_TYPE_BYTE        = $00000000;
  {$EXTERNALSYM PIPE_TYPE_BYTE}
  PIPE_TYPE_MESSAGE     = $00000004;
  {$EXTERNALSYM PIPE_TYPE_MESSAGE}

//
// Define the well known values for CreateNamedPipe nMaxInstances
//

  PIPE_UNLIMITED_INSTANCES = 255;
  {$EXTERNALSYM PIPE_UNLIMITED_INSTANCES}

//
// Define the Security Quality of Service bits to be passed
// into CreateFile
//

  SECURITY_ANONYMOUS      = Ord(SecurityAnonymous) shl 16;
  {$EXTERNALSYM SECURITY_ANONYMOUS}
  SECURITY_IDENTIFICATION = Ord(SecurityIdentification) shl 16;
  {$EXTERNALSYM SECURITY_IDENTIFICATION}
  SECURITY_IMPERSONATION  = Ord(SecurityImpersonation) shl 16;
  {$EXTERNALSYM SECURITY_IMPERSONATION}
  SECURITY_DELEGATION     = Ord(SecurityDelegation) shl 16;
  {$EXTERNALSYM SECURITY_DELEGATION}

  SECURITY_CONTEXT_TRACKING = $00040000;
  {$EXTERNALSYM SECURITY_CONTEXT_TRACKING}
  SECURITY_EFFECTIVE_ONLY   = $00080000;
  {$EXTERNALSYM SECURITY_EFFECTIVE_ONLY}

  SECURITY_SQOS_PRESENT     = $00100000;
  {$EXTERNALSYM SECURITY_SQOS_PRESENT}
  SECURITY_VALID_SQOS_FLAGS = $001F0000;
  {$EXTERNALSYM SECURITY_VALID_SQOS_FLAGS}

//
//  File structures
//

type
  LPOVERLAPPED = ^OVERLAPPED;
  {$EXTERNALSYM LPOVERLAPPED}
  _OVERLAPPED = record
    Internal: ULONG_PTR;
    InternalHigh: ULONG_PTR;
    Union: record
    case Integer of
      0: (
        Offset: DWORD;
        OffsetHigh: DWORD);
      1: (
        Pointer: PVOID);
    end;
    hEvent: HANDLE;
  end;
  {$EXTERNALSYM _OVERLAPPED}
  OVERLAPPED = _OVERLAPPED;
  {$EXTERNALSYM OVERLAPPED}
  TOverlapped = OVERLAPPED;
  POverlapped = LPOVERLAPPED;

  PSECURITY_ATTRIBUTES = ^SECURITY_ATTRIBUTES;
  {$EXTERNALSYM PSECURITY_ATTRIBUTES}
  _SECURITY_ATTRIBUTES = record
    nLength: DWORD;
    lpSecurityDescriptor: LPVOID;
    bInheritHandle: BOOL;
  end;
  {$EXTERNALSYM _SECURITY_ATTRIBUTES}
  SECURITY_ATTRIBUTES = _SECURITY_ATTRIBUTES;
  {$EXTERNALSYM SECURITY_ATTRIBUTES}
  LPSECURITY_ATTRIBUTES = PSECURITY_ATTRIBUTES;
  {$EXTERNALSYM LPSECURITY_ATTRIBUTES}
  TSecurityAttributes = SECURITY_ATTRIBUTES;
  PSecurityAttributes = LPSECURITY_ATTRIBUTES;

  PPROCESS_INFORMATION = ^PROCESS_INFORMATION;
  {$EXTERNALSYM PPROCESS_INFORMATION}
  _PROCESS_INFORMATION = record
    hProcess: HANDLE;
    hThread: HANDLE;
    dwProcessId: DWORD;
    dwThreadId: DWORD;
  end;
  {$EXTERNALSYM _PROCESS_INFORMATION}
  PROCESS_INFORMATION = _PROCESS_INFORMATION;
  {$EXTERNALSYM PROCESS_INFORMATION}
  LPPROCESS_INFORMATION = PPROCESS_INFORMATION;
  {$EXTERNALSYM LPPROCESS_INFORMATION}
  TProcessInformation = PROCESS_INFORMATION;
  PProcessInformation = LPPROCESS_INFORMATION;

//
//  File System time stamps are represented with the following structure:
//
  {$IFNDEF JWA_INCLUDEMODE}
  LPFILETIME = ^FILETIME;
  {$EXTERNALSYM LPFILETIME}
  _FILETIME = record
    dwLowDateTime: DWORD;
    dwHighDateTime: DWORD;
  end;
  {$EXTERNALSYM _FILETIME}
  FILETIME = _FILETIME;
  {$EXTERNALSYM FILETIME}
  TFileTime = FILETIME;
  PFileTime = LPFILETIME;
  {$ENDIF JWA_INCLUDEMODE}

//
// System time is represented with the following structure:
//

  LPSYSTEMTIME = ^SYSTEMTIME;
  {$EXTERNALSYM LPSYSTEMTIME}
  {$IFDEF USE_DELPHI_TYPES}
  _SYSTEMTIME = Windows._SYSTEMTIME;
  SYSTEMTIME = Windows.SYSTEMTIME;
  TSystemTime = Windows.TSystemTime;
  PSystemtime = Windows.PSystemTime;
  {$ELSE}
  _SYSTEMTIME = record
    wYear: Word;
    wMonth: Word;
    wDayOfWeek: Word;
    wDay: Word;
    wHour: Word;
    wMinute: Word;
    wSecond: Word;
    wMilliseconds: Word;
  end;
  {$EXTERNALSYM _SYSTEMTIME}
  SYSTEMTIME = _SYSTEMTIME;
  {$EXTERNALSYM SYSTEMTIME}
  TSystemTime = SYSTEMTIME;
  PSystemTime = LPSYSTEMTIME;
  {$ENDIF USE_DELPHI_TYPES}

  PTHREAD_START_ROUTINE = function(lpThreadParameter: LPVOID): DWORD; stdcall;
  {$EXTERNALSYM PTHREAD_START_ROUTINE}
  LPTHREAD_START_ROUTINE = PTHREAD_START_ROUTINE;
  {$EXTERNALSYM LPTHREAD_START_ROUTINE}
  TThreadStartRoutine = PTHREAD_START_ROUTINE;

  PFIBER_START_ROUTINE = procedure(lpFiberParameter: LPVOID); stdcall;
  {$EXTERNALSYM PFIBER_START_ROUTINE}
  LPFIBER_START_ROUTINE = PFIBER_START_ROUTINE;
  {$EXTERNALSYM LPFIBER_START_ROUTINE}
  TFiberStartRoutine = PFIBER_START_ROUTINE;

  CRITICAL_SECTION = RTL_CRITICAL_SECTION;
  {$EXTERNALSYM CRITICAL_SECTION}
  PCRITICAL_SECTION = PRTL_CRITICAL_SECTION;
  {$EXTERNALSYM PCRITICAL_SECTION}
  LPCRITICAL_SECTION = PRTL_CRITICAL_SECTION;
  {$EXTERNALSYM LPCRITICAL_SECTION}
  TCriticalSection = CRITICAL_SECTION;
  PCriticalSection = PCRITICAL_SECTION;

  CRITICAL_SECTION_DEBUG = RTL_CRITICAL_SECTION_DEBUG;
  {$EXTERNALSYM CRITICAL_SECTION_DEBUG}
  PCRITICAL_SECTION_DEBUG = PRTL_CRITICAL_SECTION_DEBUG;
  {$EXTERNALSYM PCRITICAL_SECTION_DEBUG}
  LPCRITICAL_SECTION_DEBUG = PRTL_CRITICAL_SECTION_DEBUG;
  {$EXTERNALSYM LPCRITICAL_SECTION_DEBUG}
  TCriticalSectionDebug = CRITICAL_SECTION_DEBUG;
  PCriticalSectionDebug = PCRITICAL_SECTION_DEBUG;

{$IFDEF WINVISTA_UP}

//
// Define the slim r/w lock
//

  SRWLOCK = RTL_SRWLOCK;
  {$EXTERNALSYM SRWLOCK}
  PSRWLOCK = PRTL_SRWLOCK;
  {$EXTERNALSYM PSRWLOCK}
  TSrwLock = SRWLOCK;
  //const SRWLOCK_INIT = RTL_SRWLOCK_INIT; //doesnt work

  procedure InitializeSRWLock(var SRWLock : SRWLOCK); stdcall;
  {$EXTERNALSYM InitializeSRWLock}

  procedure ReleaseSRWLockExclusive(var SRWLock : SRWLOCK); stdcall;
  {$EXTERNALSYM ReleaseSRWLockExclusive}

  procedure ReleaseSRWLockShared(var SRWLock : SRWLOCK); stdcall;
  {$EXTERNALSYM ReleaseSRWLockShared}

  procedure AcquireSRWLockExclusive(var SRWLock : SRWLOCK); stdcall;
  {$EXTERNALSYM AcquireSRWLockExclusive}

  procedure AcquireSRWLockShared(var SRWLock : SRWLOCK); stdcall;
  {$EXTERNALSYM AcquireSRWLockShared}

  function TryAcquireSRWLockExclusive(var SRWLock : SRWLOCK) : BOOL; stdcall;
  {$EXTERNALSYM TryAcquireSRWLockExclusive}

  function TryAcquireSRWLockShared(var SRWLock : SRWLOCK) : BOOL; stdcall;
  {$EXTERNALSYM TryAcquireSRWLockShared}

//
// Define condition variable
//

type
  CONDITION_VARIABLE = RTL_CONDITION_VARIABLE;
  {$EXTERNALSYM CONDITION_VARIABLE}
  PCONDITION_VARIABLE = ^CONDITION_VARIABLE;
  {$EXTERNALSYM PCONDITION_VARIABLE}
  TConditionVariable = CONDITION_VARIABLE;
  PConditionVariable = PCONDITION_VARIABLE;

  procedure InitializeConditionVariable(out ConditionVariable : CONDITION_VARIABLE); stdcall;
  {$EXTERNALSYM InitializeConditionVariable}

  procedure WakeConditionVariable(var ConditionVariable : CONDITION_VARIABLE); stdcall;
  {$EXTERNALSYM WakeConditionVariable}

  procedure WakeAllConditionVariable(var ConditionVariable : CONDITION_VARIABLE); stdcall;
  {$EXTERNALSYM WakeAllConditionVariable}

  function SleepConditionVariableCS(var ConditionVariable : CONDITION_VARIABLE;
                                    var CriticalSection : CRITICAL_SECTION;
                                    dwMilliseconds : DWORD) : BOOL; stdcall;
  {$EXTERNALSYM SleepConditionVariableCS}

  function SleepConditionVariableSRW(var ConditionVariable : CONDITION_VARIABLE;
                                     var SRWLock : SRWLOCK;
                                     dwMilliseconds : DWORD;
                                     Flags : ULONG) : BOOL; stdcall;
  {$EXTERNALSYM SleepConditionVariableSRW}

const
  CONDITION_VARIABLE_LOCKMODE_SHARED = RTL_CONDITION_VARIABLE_LOCKMODE_SHARED;
  
{$ENDIF WINVISTA_UP}

type
  LPLDT_ENTRY = PLDT_ENTRY;
  {$EXTERNALSYM LPLDT_ENTRY}

  {$IFNDEF JWA_INCLUDEMODE}
  PLdtEntry = LPLDT_ENTRY;
  {$ENDIF JWA_INCLUDEMODE}

const
  MUTEX_MODIFY_STATE = MUTANT_QUERY_STATE;
  {$EXTERNALSYM MUTEX_MODIFY_STATE}
  MUTEX_ALL_ACCESS   = MUTANT_ALL_ACCESS;
  {$EXTERNALSYM MUTEX_ALL_ACCESS}

//
// Serial provider type.
//

  SP_SERIALCOMM = DWORD($00000001);
  {$EXTERNALSYM SP_SERIALCOMM}

//
// Provider SubTypes
//

  PST_UNSPECIFIED    = DWORD($00000000);
  {$EXTERNALSYM PST_UNSPECIFIED}
  PST_RS232          = DWORD($00000001);
  {$EXTERNALSYM PST_RS232}
  PST_PARALLELPORT   = DWORD($00000002);
  {$EXTERNALSYM PST_PARALLELPORT}
  PST_RS422          = DWORD($00000003);
  {$EXTERNALSYM PST_RS422}
  PST_RS423          = DWORD($00000004);
  {$EXTERNALSYM PST_RS423}
  PST_RS449          = DWORD($00000005);
  {$EXTERNALSYM PST_RS449}
  PST_MODEM          = DWORD($00000006);
  {$EXTERNALSYM PST_MODEM}
  PST_FAX            = DWORD($00000021);
  {$EXTERNALSYM PST_FAX}
  PST_SCANNER        = DWORD($00000022);
  {$EXTERNALSYM PST_SCANNER}
  PST_NETWORK_BRIDGE = DWORD($00000100);
  {$EXTERNALSYM PST_NETWORK_BRIDGE}
  PST_LAT            = DWORD($00000101);
  {$EXTERNALSYM PST_LAT}
  PST_TCPIP_TELNET   = DWORD($00000102);
  {$EXTERNALSYM PST_TCPIP_TELNET}
  PST_X25            = DWORD($00000103);
  {$EXTERNALSYM PST_X25}

//
// Provider capabilities flags.
//

  PCF_DTRDSR        = DWORD($0001);
  {$EXTERNALSYM PCF_DTRDSR}
  PCF_RTSCTS        = DWORD($0002);
  {$EXTERNALSYM PCF_RTSCTS}
  PCF_RLSD          = DWORD($0004);
  {$EXTERNALSYM PCF_RLSD}
  PCF_PARITY_CHECK  = DWORD($0008);
  {$EXTERNALSYM PCF_PARITY_CHECK}
  PCF_XONXOFF       = DWORD($0010);
  {$EXTERNALSYM PCF_XONXOFF}
  PCF_SETXCHAR      = DWORD($0020);
  {$EXTERNALSYM PCF_SETXCHAR}
  PCF_TOTALTIMEOUTS = DWORD($0040);
  {$EXTERNALSYM PCF_TOTALTIMEOUTS}
  PCF_INTTIMEOUTS   = DWORD($0080);
  {$EXTERNALSYM PCF_INTTIMEOUTS}
  PCF_SPECIALCHARS  = DWORD($0100);
  {$EXTERNALSYM PCF_SPECIALCHARS}
  PCF_16BITMODE     = DWORD($0200);
  {$EXTERNALSYM PCF_16BITMODE}

//
// Comm provider settable parameters.
//

  SP_PARITY       = DWORD($0001);
  {$EXTERNALSYM SP_PARITY}
  SP_BAUD         = DWORD($0002);
  {$EXTERNALSYM SP_BAUD}
  SP_DATABITS     = DWORD($0004);
  {$EXTERNALSYM SP_DATABITS}
  SP_STOPBITS     = DWORD($0008);
  {$EXTERNALSYM SP_STOPBITS}
  SP_HANDSHAKING  = DWORD($0010);
  {$EXTERNALSYM SP_HANDSHAKING}
  SP_PARITY_CHECK = DWORD($0020);
  {$EXTERNALSYM SP_PARITY_CHECK}
  SP_RLSD         = DWORD($0040);
  {$EXTERNALSYM SP_RLSD}

//
// Settable baud rates in the provider.
//

  BAUD_075    = DWORD($00000001);
  {$EXTERNALSYM BAUD_075}
  BAUD_110    = DWORD($00000002);
  {$EXTERNALSYM BAUD_110}
  BAUD_134_5  = DWORD($00000004);
  {$EXTERNALSYM BAUD_134_5}
  BAUD_150    = DWORD($00000008);
  {$EXTERNALSYM BAUD_150}
  BAUD_300    = DWORD($00000010);
  {$EXTERNALSYM BAUD_300}
  BAUD_600    = DWORD($00000020);
  {$EXTERNALSYM BAUD_600}
  BAUD_1200   = DWORD($00000040);
  {$EXTERNALSYM BAUD_1200}
  BAUD_1800   = DWORD($00000080);
  {$EXTERNALSYM BAUD_1800}
  BAUD_2400   = DWORD($00000100);
  {$EXTERNALSYM BAUD_2400}
  BAUD_4800   = DWORD($00000200);
  {$EXTERNALSYM BAUD_4800}
  BAUD_7200   = DWORD($00000400);
  {$EXTERNALSYM BAUD_7200}
  BAUD_9600   = DWORD($00000800);
  {$EXTERNALSYM BAUD_9600}
  BAUD_14400  = DWORD($00001000);
  {$EXTERNALSYM BAUD_14400}
  BAUD_19200  = DWORD($00002000);
  {$EXTERNALSYM BAUD_19200}
  BAUD_38400  = DWORD($00004000);
  {$EXTERNALSYM BAUD_38400}
  BAUD_56K    = DWORD($00008000);
  {$EXTERNALSYM BAUD_56K}
  BAUD_128K   = DWORD($00010000);
  {$EXTERNALSYM BAUD_128K}
  BAUD_115200 = DWORD($00020000);
  {$EXTERNALSYM BAUD_115200}
  BAUD_57600  = DWORD($00040000);
  {$EXTERNALSYM BAUD_57600}
  BAUD_USER   = DWORD($10000000);
  {$EXTERNALSYM BAUD_USER}

//
// Settable Data Bits
//

  DATABITS_5   = WORD($0001);
  {$EXTERNALSYM DATABITS_5}
  DATABITS_6   = WORD($0002);
  {$EXTERNALSYM DATABITS_6}
  DATABITS_7   = WORD($0004);
  {$EXTERNALSYM DATABITS_7}
  DATABITS_8   = WORD($0008);
  {$EXTERNALSYM DATABITS_8}
  DATABITS_16  = WORD($0010);
  {$EXTERNALSYM DATABITS_16}
  DATABITS_16X = WORD($0020);
  {$EXTERNALSYM DATABITS_16X}

//
// Settable Stop and Parity bits.
//

  STOPBITS_10  = WORD($0001);
  {$EXTERNALSYM STOPBITS_10}
  STOPBITS_15  = WORD($0002);
  {$EXTERNALSYM STOPBITS_15}
  STOPBITS_20  = WORD($0004);
  {$EXTERNALSYM STOPBITS_20}
  PARITY_NONE  = WORD($0100);
  {$EXTERNALSYM PARITY_NONE}
  PARITY_ODD   = WORD($0200);
  {$EXTERNALSYM PARITY_ODD}
  PARITY_EVEN  = WORD($0400);
  {$EXTERNALSYM PARITY_EVEN}
  PARITY_MARK  = WORD($0800);
  {$EXTERNALSYM PARITY_MARK}
  PARITY_SPACE = WORD($1000);
  {$EXTERNALSYM PARITY_SPACE}

type
  LPCOMMPROP = ^COMMPROP;
  {$EXTERNALSYM LPCOMMPROP}
  _COMMPROP = record
    wPacketLength: Word;
    wPacketVersion: Word;
    dwServiceMask: DWORD;
    dwReserved1: DWORD;
    dwMaxTxQueue: DWORD;
    dwMaxRxQueue: DWORD;
    dwMaxBaud: DWORD;
    dwProvSubType: DWORD;
    dwProvCapabilities: DWORD;
    dwSettableParams: DWORD;
    dwSettableBaud: DWORD;
    wSettableData: Word;
    wSettableStopParity: Word;
    dwCurrentTxQueue: DWORD;
    dwCurrentRxQueue: DWORD;
    dwProvSpec1: DWORD;
    dwProvSpec2: DWORD;
    wcProvChar: array [0..0] of WCHAR;
  end;
  {$EXTERNALSYM _COMMPROP}
  COMMPROP = _COMMPROP;
  {$EXTERNALSYM COMMPROP}
  TCommProp = COMMPROP;
  PCommProp = LPCOMMPROP;

//
// Set dwProvSpec1 to COMMPROP_INITIALIZED to indicate that wPacketLength
// is valid before a call to GetCommProperties().
//

const
  COMMPROP_INITIALIZED = DWORD($E73CF52E);
  {$EXTERNALSYM COMMPROP_INITIALIZED}

//_COMSTAT Flags (bitfield)

  COMSTAT_CTS_HOLD   = 1 shl 0;
  COMSTAT_DSR_HOLD   = 1 shl 1;
  COMSTAT_RLSD_HOLD  = 1 shl 2;
  COMSTAT_XOFF_HOLD  = 1 shl 3;
  COMSTAT_XOFF_SENT  = 1 shl 4;
  COMSTAT_F_EOF      = 1 shl 5;
  COMSTAT_F_TXIM     = 1 shl 6;

type
  LPCOMSTAT = ^COMSTAT;
  {$EXTERNALSYM LPCOMSTAT}
  _COMSTAT = record
    Flags: DWORD;
    cbInQue: DWORD;
    cbOutQue: DWORD;
  end;
  {$EXTERNALSYM _COMSTAT}
  COMSTAT = _COMSTAT;
  {$EXTERNALSYM COMSTAT}
  TComstat = COMSTAT;
  PComstat = LPCOMSTAT;

//
// DTR Control Flow Values.
//

const
  DTR_CONTROL_DISABLE   = $00;
  {$EXTERNALSYM DTR_CONTROL_DISABLE}
  DTR_CONTROL_ENABLE    = $01;
  {$EXTERNALSYM DTR_CONTROL_ENABLE}
  DTR_CONTROL_HANDSHAKE = $02;
  {$EXTERNALSYM DTR_CONTROL_HANDSHAKE}

//
// RTS Control Flow Values
//

  RTS_CONTROL_DISABLE   = $00;
  {$EXTERNALSYM RTS_CONTROL_DISABLE}
  RTS_CONTROL_ENABLE    = $01;
  {$EXTERNALSYM RTS_CONTROL_ENABLE}
  RTS_CONTROL_HANDSHAKE = $02;
  {$EXTERNALSYM RTS_CONTROL_HANDSHAKE}
  RTS_CONTROL_TOGGLE    = $03;
  {$EXTERNALSYM RTS_CONTROL_TOGGLE}

// _DCB.Flags

const
  fDcbBinary = 1 shl 0;           // Binary Mode (skip EOF check)
  fDcbParity = 1 shl 1;           // Enable parity checking
  fDcbOutxCtsFlow = 1 shl 2;      // CTS handshaking on output
  fDcbOutxDsrFlow = 1 shl 3;      // DSR handshaking on output
  fDcbDtrControl = $0030;         // DTR Flow control
  fDcbDsrSensitivity = 1 shl 6;   // DSR Sensitivity
  fDcbTXContinueOnXoff = 1 shl 7; // Continue TX when Xoff sent
  fDcbOutX = 1 shl 8;             // Enable output X-ON/X-OFF
  fDcbInX = 1 shl 9;              // Enable input X-ON/X-OFF
  fDcbErrorChar = 1 shl 10;       // Enable Err Replacement
  fDcbNull = 1 shl 11;            // Enable Null stripping
  fDcbRtsControl = $3000;         // Rts Flow control
  fAbortOnError = 1 shl 14;       // Abort all reads and writes on Error

type
  LPDCB = ^DCB;
  {$EXTERNALSYM LPDCB}
  _DCB = record
    DCBlength: DWORD;      // sizeof(DCB)
    BaudRate: DWORD;       // Baudrate at which running
    Flags: DWORD;          // See constants above
    wReserved: WORD;       // Not currently used
    XonLim: WORD;          // Transmit X-ON threshold
    XoffLim: WORD;         // Transmit X-OFF threshold
    ByteSize: BYTE;        // Number of bits/byte, 4-8
    Parity: BYTE;          // 0-4=None,Odd,Even,Mark,Space
    StopBits: BYTE;        // 0,1,2 = 1, 1.5, 2
    XonChar: AnsiChar;         // Tx and Rx X-ON character
    XoffChar: AnsiChar;        // Tx and Rx X-OFF character
    ErrorChar: AnsiChar;       // Error replacement AnsiChar
    EofChar: AnsiChar;         // End of Input character
    EvtChar: AnsiChar;         // Received Event character
    wReserved1: WORD;      // Fill for now.
  end;
  {$EXTERNALSYM _DCB}
  DCB = _DCB;
  {$EXTERNALSYM DCB}
  TDCB = DCB;
  PDCB = LPDCB;

  LPCOMMTIMEOUTS = ^COMMTIMEOUTS;
  {$EXTERNALSYM LPCOMMTIMEOUTS}
  _COMMTIMEOUTS = record
    ReadIntervalTimeout: DWORD;         // Maximum time between read chars.
    ReadTotalTimeoutMultiplier: DWORD;  // Multiplier of characters.
    ReadTotalTimeoutConstant: DWORD;    // Constant in milliseconds.
    WriteTotalTimeoutMultiplier: DWORD; // Multiplier of characters.
    WriteTotalTimeoutConstant: DWORD;   // Constant in milliseconds.
  end;
  {$EXTERNALSYM _COMMTIMEOUTS}
  COMMTIMEOUTS = _COMMTIMEOUTS;
  {$EXTERNALSYM COMMTIMEOUTS}
  TCommTimeouts = COMMTIMEOUTS;
  PCommTimeouts = LPCOMMTIMEOUTS;

  LPCOMMCONFIG = ^COMMCONFIG;
  {$EXTERNALSYM LPCOMMCONFIG}
  _COMMCONFIG = record
    dwSize: DWORD;            // Size of the entire struct
    wVersion: Word;           // version of the structure
    wReserved: Word;          // alignment
    dcb: DCB;                 // device control block
    dwProviderSubType: DWORD; // ordinal value for identifying
                              // provider-defined data structure format
    dwProviderOffset: DWORD;  // Specifies the offset of provider specific
                              // data field in bytes from the start
    dwProviderSize: DWORD;    // size of the provider-specific data field
    wcProviderData: array [0..0] of WCHAR; // provider-specific data
  end;
  {$EXTERNALSYM _COMMCONFIG}
  COMMCONFIG = _COMMCONFIG;
  {$EXTERNALSYM COMMCONFIG}
  TCommConfig = COMMCONFIG;
  PCommConfig = LPCOMMCONFIG;

  LPSYSTEM_INFO = ^SYSTEM_INFO;
  {$EXTERNALSYM LPSYSTEM_INFO}
  _SYSTEM_INFO = record
    case Integer of
    0: (
      dwOemId: DWORD); // absolete, do not use
    1: (
      wProcessorArchitecture: WORD;
      wReserved: WORD;
      dwPageSize: DWORD;
      lpMinimumApplicationAddress: LPVOID;
      lpMaximumApplicationAddress: LPVOID;
      dwActiveProcessorMask: DWORD_PTR;
      dwNumberOfProcessors: DWORD;
      dwProcessorType: DWORD;
      dwAllocationGranularity: DWORD;
      wProcessorLevel: WORD;
      wProcessorRevision: WORD);
  end;
  {$EXTERNALSYM _SYSTEM_INFO}
  SYSTEM_INFO = _SYSTEM_INFO;
  {$EXTERNALSYM SYSTEM_INFO}
  TSystemInfo = SYSTEM_INFO;
  PSystemInfo = LPSYSTEM_INFO;

//
//

function FreeModule(hLibModule: HMODULE): BOOL;
{$EXTERNALSYM FreeModule}
function MakeProcInstance(lpProc: FARPROC; hInstance: HINST): FARPROC;
{$EXTERNALSYM MakeProcInstance}
procedure FreeProcInstance(lpProc: FARPROC);
{$EXTERNALSYM FreeProcInstance}

// Global Memory Flags

const
  GMEM_FIXED          = $0000;
  {$EXTERNALSYM GMEM_FIXED}
  GMEM_MOVEABLE       = $0002;
  {$EXTERNALSYM GMEM_MOVEABLE}
  GMEM_NOCOMPACT      = $0010;
  {$EXTERNALSYM GMEM_NOCOMPACT}
  GMEM_NODISCARD      = $0020;
  {$EXTERNALSYM GMEM_NODISCARD}
  GMEM_ZEROINIT       = $0040;
  {$EXTERNALSYM GMEM_ZEROINIT}
  GMEM_MODIFY         = $0080;
  {$EXTERNALSYM GMEM_MODIFY}
  GMEM_DISCARDABLE    = $0100;
  {$EXTERNALSYM GMEM_DISCARDABLE}
  GMEM_NOT_BANKED     = $1000;
  {$EXTERNALSYM GMEM_NOT_BANKED}
  GMEM_SHARE          = $2000;
  {$EXTERNALSYM GMEM_SHARE}
  GMEM_DDESHARE       = $2000;
  {$EXTERNALSYM GMEM_DDESHARE}
  GMEM_NOTIFY         = $4000;
  {$EXTERNALSYM GMEM_NOTIFY}
  GMEM_LOWER          = GMEM_NOT_BANKED;
  {$EXTERNALSYM GMEM_LOWER}
  GMEM_VALID_FLAGS    = $7F72;
  {$EXTERNALSYM GMEM_VALID_FLAGS}
  GMEM_INVALID_HANDLE = $8000;
  {$EXTERNALSYM GMEM_INVALID_HANDLE}

  GHND = GMEM_MOVEABLE or GMEM_ZEROINIT;
  {$EXTERNALSYM GHND}
  GPTR = GMEM_FIXED or GMEM_ZEROINIT;
  {$EXTERNALSYM GPTR}

function GlobalLRUNewest(h: HANDLE): HANDLE;
{$EXTERNALSYM GlobalLRUNewest}
function GlobalLRUOldest(h: HANDLE): HANDLE;
{$EXTERNALSYM GlobalLRUOldest}
function GlobalDiscard(h: HANDLE): HANDLE;
{$EXTERNALSYM GlobalDiscard}

// Flags returned by GlobalFlags (in addition to GMEM_DISCARDABLE)

const
  GMEM_DISCARDED = $4000;
  {$EXTERNALSYM GMEM_DISCARDED}
  GMEM_LOCKCOUNT = $00FF;
  {$EXTERNALSYM GMEM_LOCKCOUNT}

type
  LPMEMORYSTATUS = ^MEMORYSTATUS;
  {$EXTERNALSYM LPMEMORYSTATUS}
  _MEMORYSTATUS = record
    dwLength: DWORD;
    dwMemoryLoad: DWORD;
    dwTotalPhys: SIZE_T;
    dwAvailPhys: SIZE_T;
    dwTotalPageFile: SIZE_T;
    dwAvailPageFile: SIZE_T;
    dwTotalVirtual: SIZE_T;
    dwAvailVirtual: SIZE_T;
  end;
  {$EXTERNALSYM _MEMORYSTATUS}
  MEMORYSTATUS = _MEMORYSTATUS;
  {$EXTERNALSYM MEMORYSTATUS}
  TMemoryStatus = MEMORYSTATUS;
  PMemoryStatus = LPMEMORYSTATUS;

// Local Memory Flags

const
  LMEM_FIXED          = $0000;
  {$EXTERNALSYM LMEM_FIXED}
  LMEM_MOVEABLE       = $0002;
  {$EXTERNALSYM LMEM_MOVEABLE}
  LMEM_NOCOMPACT      = $0010;
  {$EXTERNALSYM LMEM_NOCOMPACT}
  LMEM_NODISCARD      = $0020;
  {$EXTERNALSYM LMEM_NODISCARD}
  LMEM_ZEROINIT       = $0040;
  {$EXTERNALSYM LMEM_ZEROINIT}
  LMEM_MODIFY         = $0080;
  {$EXTERNALSYM LMEM_MODIFY}
  LMEM_DISCARDABLE    = $0F00;
  {$EXTERNALSYM LMEM_DISCARDABLE}
  LMEM_VALID_FLAGS    = $0F72;
  {$EXTERNALSYM LMEM_VALID_FLAGS}
  LMEM_INVALID_HANDLE = $8000;
  {$EXTERNALSYM LMEM_INVALID_HANDLE}

  LHND = LMEM_MOVEABLE or LMEM_ZEROINIT;
  {$EXTERNALSYM LHND}
  LPTR = LMEM_FIXED or LMEM_ZEROINIT;
  {$EXTERNALSYM LPTR}

  NONZEROLHND = LMEM_MOVEABLE;
  {$EXTERNALSYM NONZEROLHND}
  NONZEROLPTR = LMEM_FIXED;
  {$EXTERNALSYM NONZEROLPTR}

function LocalDiscard(h: HLOCAL): HLOCAL;
{$EXTERNALSYM LocalDiscard}

// Flags returned by LocalFlags (in addition to LMEM_DISCARDABLE)

const
  LMEM_DISCARDED = $4000;
  {$EXTERNALSYM LMEM_DISCARDED}
  LMEM_LOCKCOUNT = $00FF;
  {$EXTERNALSYM LMEM_LOCKCOUNT}

//
// dwCreationFlag values
//

  DEBUG_PROCESS           = $00000001;
  {$EXTERNALSYM DEBUG_PROCESS}
  DEBUG_ONLY_THIS_PROCESS = $00000002;
  {$EXTERNALSYM DEBUG_ONLY_THIS_PROCESS}

  CREATE_SUSPENDED = $00000004;
  {$EXTERNALSYM CREATE_SUSPENDED}

  DETACHED_PROCESS = $00000008;
  {$EXTERNALSYM DETACHED_PROCESS}

  CREATE_NEW_CONSOLE = $00000010;
  {$EXTERNALSYM CREATE_NEW_CONSOLE}

  NORMAL_PRIORITY_CLASS   = $00000020;
  {$EXTERNALSYM NORMAL_PRIORITY_CLASS}
  IDLE_PRIORITY_CLASS     = $00000040;
  {$EXTERNALSYM IDLE_PRIORITY_CLASS}
  HIGH_PRIORITY_CLASS     = $00000080;
  {$EXTERNALSYM HIGH_PRIORITY_CLASS}
  REALTIME_PRIORITY_CLASS = $00000100;
  {$EXTERNALSYM REALTIME_PRIORITY_CLASS}

  CREATE_NEW_PROCESS_GROUP   = $00000200;
  {$EXTERNALSYM CREATE_NEW_PROCESS_GROUP}
  CREATE_UNICODE_ENVIRONMENT = $00000400;
  {$EXTERNALSYM CREATE_UNICODE_ENVIRONMENT}

  CREATE_SEPARATE_WOW_VDM = $00000800;
  {$EXTERNALSYM CREATE_SEPARATE_WOW_VDM}
  CREATE_SHARED_WOW_VDM   = $00001000;
  {$EXTERNALSYM CREATE_SHARED_WOW_VDM}
  CREATE_FORCEDOS         = $00002000;
  {$EXTERNALSYM CREATE_FORCEDOS}

  CREATE_PROTECTED_PROCESS  = $00040000;
  {$EXTERNALSYM CREATE_PROTECTED_PROCESS}

  EXTENDED_STARTUPINFO_PRESENT = $00080000;
  {$EXTERNALSYM EXTENDED_STARTUPINFO_PRESENT}

  BELOW_NORMAL_PRIORITY_CLASS = $00004000;
  {$EXTERNALSYM BELOW_NORMAL_PRIORITY_CLASS}
  ABOVE_NORMAL_PRIORITY_CLASS = $00008000;
  {$EXTERNALSYM ABOVE_NORMAL_PRIORITY_CLASS}
  STACK_SIZE_PARAM_IS_A_RESERVATION = $00010000;
  {$EXTERNALSYM STACK_SIZE_PARAM_IS_A_RESERVATION}

  CREATE_BREAKAWAY_FROM_JOB = $01000000;
  {$EXTERNALSYM CREATE_BREAKAWAY_FROM_JOB}
  CREATE_PRESERVE_CODE_AUTHZ_LEVEL = $02000000;
  {$EXTERNALSYM CREATE_PRESERVE_CODE_AUTHZ_LEVEL}

  CREATE_DEFAULT_ERROR_MODE = $04000000;
  {$EXTERNALSYM CREATE_DEFAULT_ERROR_MODE}
  CREATE_NO_WINDOW          = $08000000;
  {$EXTERNALSYM CREATE_NO_WINDOW}

  PROFILE_USER   = $10000000;
  {$EXTERNALSYM PROFILE_USER}
  PROFILE_KERNEL = $20000000;
  {$EXTERNALSYM PROFILE_KERNEL}
  PROFILE_SERVER = $40000000;
  {$EXTERNALSYM PROFILE_SERVER}

  CREATE_IGNORE_SYSTEM_DEFAULT = DWORD($80000000);
  {$EXTERNALSYM CREATE_IGNORE_SYSTEM_DEFAULT}

  THREAD_PRIORITY_LOWEST       = THREAD_BASE_PRIORITY_MIN;
  {$EXTERNALSYM THREAD_PRIORITY_LOWEST}
  THREAD_PRIORITY_BELOW_NORMAL = THREAD_PRIORITY_LOWEST + 1;
  {$EXTERNALSYM THREAD_PRIORITY_BELOW_NORMAL}
  THREAD_PRIORITY_NORMAL       = 0;
  {$EXTERNALSYM THREAD_PRIORITY_NORMAL}
  THREAD_PRIORITY_HIGHEST      = THREAD_BASE_PRIORITY_MAX;
  {$EXTERNALSYM THREAD_PRIORITY_HIGHEST}
  THREAD_PRIORITY_ABOVE_NORMAL = THREAD_PRIORITY_HIGHEST - 1;
  {$EXTERNALSYM THREAD_PRIORITY_ABOVE_NORMAL}
  THREAD_PRIORITY_ERROR_RETURN = MAXLONG;
  {$EXTERNALSYM THREAD_PRIORITY_ERROR_RETURN}

  THREAD_PRIORITY_TIME_CRITICAL = THREAD_BASE_PRIORITY_LOWRT;
  {$EXTERNALSYM THREAD_PRIORITY_TIME_CRITICAL}
  THREAD_PRIORITY_IDLE          = THREAD_BASE_PRIORITY_IDLE;
  {$EXTERNALSYM THREAD_PRIORITY_IDLE}

//
// Debug APIs
//

  EXCEPTION_DEBUG_EVENT      = 1;
  {$EXTERNALSYM EXCEPTION_DEBUG_EVENT}
  CREATE_THREAD_DEBUG_EVENT  = 2;
  {$EXTERNALSYM CREATE_THREAD_DEBUG_EVENT}
  CREATE_PROCESS_DEBUG_EVENT = 3;
  {$EXTERNALSYM CREATE_PROCESS_DEBUG_EVENT}
  EXIT_THREAD_DEBUG_EVENT    = 4;
  {$EXTERNALSYM EXIT_THREAD_DEBUG_EVENT}
  EXIT_PROCESS_DEBUG_EVENT   = 5;
  {$EXTERNALSYM EXIT_PROCESS_DEBUG_EVENT}
  LOAD_DLL_DEBUG_EVENT       = 6;
  {$EXTERNALSYM LOAD_DLL_DEBUG_EVENT}
  UNLOAD_DLL_DEBUG_EVENT     = 7;
  {$EXTERNALSYM UNLOAD_DLL_DEBUG_EVENT}
  OUTPUT_DEBUG_STRING_EVENT  = 8;
  {$EXTERNALSYM OUTPUT_DEBUG_STRING_EVENT}
  RIP_EVENT                  = 9;
  {$EXTERNALSYM RIP_EVENT}

type
  LPEXCEPTION_DEBUG_INFO = ^EXCEPTION_DEBUG_INFO;
  {$EXTERNALSYM LPEXCEPTION_DEBUG_INFO}
  _EXCEPTION_DEBUG_INFO = record
    ExceptionRecord: EXCEPTION_RECORD;
    dwFirstChance: DWORD;
  end;
  {$EXTERNALSYM _EXCEPTION_DEBUG_INFO}
  EXCEPTION_DEBUG_INFO = _EXCEPTION_DEBUG_INFO;
  {$EXTERNALSYM EXCEPTION_DEBUG_INFO}
  TExceptionDebugInfo = EXCEPTION_DEBUG_INFO;
  PExceptionDebugInfo = LPEXCEPTION_DEBUG_INFO;

  LPCREATE_THREAD_DEBUG_INFO = ^CREATE_THREAD_DEBUG_INFO;
  {$EXTERNALSYM LPCREATE_THREAD_DEBUG_INFO}
  _CREATE_THREAD_DEBUG_INFO = record
    hThread: HANDLE;
    lpThreadLocalBase: LPVOID;
    lpStartAddress: LPTHREAD_START_ROUTINE;
  end;
  {$EXTERNALSYM _CREATE_THREAD_DEBUG_INFO}
  CREATE_THREAD_DEBUG_INFO = _CREATE_THREAD_DEBUG_INFO;
  {$EXTERNALSYM CREATE_THREAD_DEBUG_INFO}
  TCreateThreadDebugInfo = CREATE_THREAD_DEBUG_INFO;
  PCreateThreadDebugInfo = LPCREATE_THREAD_DEBUG_INFO;

  LPCREATE_PROCESS_DEBUG_INFO = ^CREATE_PROCESS_DEBUG_INFO;
  {$EXTERNALSYM LPCREATE_PROCESS_DEBUG_INFO}
  _CREATE_PROCESS_DEBUG_INFO = record
    hFile: HANDLE;
    hProcess: HANDLE;
    hThread: HANDLE;
    lpBaseOfImage: LPVOID;
    dwDebugInfoFileOffset: DWORD;
    nDebugInfoSize: DWORD;
    lpThreadLocalBase: LPVOID;
    lpStartAddress: LPTHREAD_START_ROUTINE;
    lpImageName: LPVOID;
    fUnicode: Word;
  end;
  {$EXTERNALSYM _CREATE_PROCESS_DEBUG_INFO}
  CREATE_PROCESS_DEBUG_INFO = _CREATE_PROCESS_DEBUG_INFO;
  {$EXTERNALSYM CREATE_PROCESS_DEBUG_INFO}
  TCreateProcessDebugInfo = CREATE_PROCESS_DEBUG_INFO;
  PCreateProcessDebugInfo = LPCREATE_PROCESS_DEBUG_INFO;

  LPEXIT_THREAD_DEBUG_INFO = ^EXIT_THREAD_DEBUG_INFO;
  {$EXTERNALSYM LPEXIT_THREAD_DEBUG_INFO}
  _EXIT_THREAD_DEBUG_INFO = record
    dwExitCode: DWORD;
  end;
  {$EXTERNALSYM _EXIT_THREAD_DEBUG_INFO}
  EXIT_THREAD_DEBUG_INFO = _EXIT_THREAD_DEBUG_INFO;
  {$EXTERNALSYM EXIT_THREAD_DEBUG_INFO}
  TExitThreadDebugInfo = EXIT_THREAD_DEBUG_INFO;
  PExitThreadDebugInfo = LPEXIT_THREAD_DEBUG_INFO;

  LPEXIT_PROCESS_DEBUG_INFO = ^EXIT_PROCESS_DEBUG_INFO;
  {$EXTERNALSYM LPEXIT_PROCESS_DEBUG_INFO}
  _EXIT_PROCESS_DEBUG_INFO = record
    dwExitCode: DWORD;
  end;
  {$EXTERNALSYM _EXIT_PROCESS_DEBUG_INFO}
  EXIT_PROCESS_DEBUG_INFO = _EXIT_PROCESS_DEBUG_INFO;
  {$EXTERNALSYM EXIT_PROCESS_DEBUG_INFO}
  TExitProcessDebugInfo = EXIT_PROCESS_DEBUG_INFO;
  PExitProcessDebugInfo = LPEXIT_PROCESS_DEBUG_INFO;

  LPLOAD_DLL_DEBUG_INFO = ^LOAD_DLL_DEBUG_INFO;
  {$EXTERNALSYM LPLOAD_DLL_DEBUG_INFO}
  _LOAD_DLL_DEBUG_INFO = record
    hFile: HANDLE;
    lpBaseOfDll: LPVOID;
    dwDebugInfoFileOffset: DWORD;
    nDebugInfoSize: DWORD;
    lpImageName: LPVOID;
    fUnicode: Word;
  end;
  {$EXTERNALSYM _LOAD_DLL_DEBUG_INFO}
  LOAD_DLL_DEBUG_INFO = _LOAD_DLL_DEBUG_INFO;
  {$EXTERNALSYM LOAD_DLL_DEBUG_INFO}
  TLoadDllDebugInfo = LOAD_DLL_DEBUG_INFO;
  PLoadDllDebugInfo = LPLOAD_DLL_DEBUG_INFO;

  LPUNLOAD_DLL_DEBUG_INFO = ^UNLOAD_DLL_DEBUG_INFO;
  {$EXTERNALSYM LPUNLOAD_DLL_DEBUG_INFO}
  _UNLOAD_DLL_DEBUG_INFO = record
    lpBaseOfDll: LPVOID;
  end;
  {$EXTERNALSYM _UNLOAD_DLL_DEBUG_INFO}
  UNLOAD_DLL_DEBUG_INFO = _UNLOAD_DLL_DEBUG_INFO;
  {$EXTERNALSYM UNLOAD_DLL_DEBUG_INFO}
  TUnloadDllDebugInfo = UNLOAD_DLL_DEBUG_INFO;
  PUnloadDllDebugInfo = LPUNLOAD_DLL_DEBUG_INFO;

  LPOUTPUT_DEBUG_STRING_INFO = ^OUTPUT_DEBUG_STRING_INFO;
  {$EXTERNALSYM LPOUTPUT_DEBUG_STRING_INFO}
  _OUTPUT_DEBUG_STRING_INFO = record
    lpDebugStringData: LPSTR;
    fUnicode: Word;
    nDebugStringLength: Word;
  end;
  {$EXTERNALSYM _OUTPUT_DEBUG_STRING_INFO}
  OUTPUT_DEBUG_STRING_INFO = _OUTPUT_DEBUG_STRING_INFO;
  {$EXTERNALSYM OUTPUT_DEBUG_STRING_INFO}
  TOutputDebugStringInfo = OUTPUT_DEBUG_STRING_INFO;
  POutputDebugStringInfo = LPOUTPUT_DEBUG_STRING_INFO;

  LPRIP_INFO = ^RIP_INFO;
  {$EXTERNALSYM LPRIP_INFO}
  _RIP_INFO = record
    dwError: DWORD;
    dwType: DWORD;
  end;
  {$EXTERNALSYM _RIP_INFO}
  RIP_INFO = _RIP_INFO;
  {$EXTERNALSYM RIP_INFO}
  TRipInfo = RIP_INFO;
  PRipInfo = LPRIP_INFO;

  LPDEBUG_EVENT = ^DEBUG_EVENT;
  {$EXTERNALSYM LPDEBUG_EVENT}
  _DEBUG_EVENT = record
    dwDebugEventCode: DWORD;
    dwProcessId: DWORD;
    dwThreadId: DWORD;
    case Integer of
      0: (Exception: EXCEPTION_DEBUG_INFO);
      1: (CreateThread: CREATE_THREAD_DEBUG_INFO);
      2: (CreateProcessInfo: CREATE_PROCESS_DEBUG_INFO);
      3: (ExitThread: EXIT_THREAD_DEBUG_INFO);
      4: (ExitProcess: EXIT_PROCESS_DEBUG_INFO);
      5: (LoadDll: LOAD_DLL_DEBUG_INFO);
      6: (UnloadDll: UNLOAD_DLL_DEBUG_INFO);
      7: (DebugString: OUTPUT_DEBUG_STRING_INFO);
      8: (RipInfo: RIP_INFO);
  end;
  {$EXTERNALSYM _DEBUG_EVENT}
  DEBUG_EVENT = _DEBUG_EVENT;
  {$EXTERNALSYM DEBUG_EVENT}
  TDebugEvent = DEBUG_EVENT;
  PDebugEvent = LPDEBUG_EVENT;

  LPCONTEXT = PCONTEXT;
  {$EXTERNALSYM LPCONTEXT}
  LPEXCEPTION_RECORD = PEXCEPTION_RECORD;
  {$EXTERNALSYM LPEXCEPTION_RECORD}
  LPEXCEPTION_POINTERS = PEXCEPTION_POINTERS;
  {$EXTERNALSYM LPEXCEPTION_POINTERS}

const
  DRIVE_UNKNOWN     = 0;
  {$EXTERNALSYM DRIVE_UNKNOWN}
  DRIVE_NO_ROOT_DIR = 1;
  {$EXTERNALSYM DRIVE_NO_ROOT_DIR}
  DRIVE_REMOVABLE   = 2;
  {$EXTERNALSYM DRIVE_REMOVABLE}
  DRIVE_FIXED       = 3;
  {$EXTERNALSYM DRIVE_FIXED}
  DRIVE_REMOTE      = 4;
  {$EXTERNALSYM DRIVE_REMOTE}
  DRIVE_CDROM       = 5;
  {$EXTERNALSYM DRIVE_CDROM}
  DRIVE_RAMDISK     = 6;
  {$EXTERNALSYM DRIVE_RAMDISK}

function GetFreeSpace(w: WORD): DWORD;
{$EXTERNALSYM GetFreeSpace}

const
  FILE_TYPE_UNKNOWN = $0000;
  {$EXTERNALSYM FILE_TYPE_UNKNOWN}
  FILE_TYPE_DISK    = $0001;
  {$EXTERNALSYM FILE_TYPE_DISK}
  FILE_TYPE_CHAR    = $0002;
  {$EXTERNALSYM FILE_TYPE_CHAR}
  FILE_TYPE_PIPE    = $0003;
  {$EXTERNALSYM FILE_TYPE_PIPE}
  FILE_TYPE_REMOTE  = $8000;
  {$EXTERNALSYM FILE_TYPE_REMOTE}

  STD_INPUT_HANDLE  = DWORD(-10);
  {$EXTERNALSYM STD_INPUT_HANDLE}
  STD_OUTPUT_HANDLE = DWORD(-11);
  {$EXTERNALSYM STD_OUTPUT_HANDLE}
  STD_ERROR_HANDLE  = DWORD(-12);
  {$EXTERNALSYM STD_ERROR_HANDLE}

  NOPARITY    = 0;
  {$EXTERNALSYM NOPARITY}
  ODDPARITY   = 1;
  {$EXTERNALSYM ODDPARITY}
  EVENPARITY  = 2;
  {$EXTERNALSYM EVENPARITY}
  MARKPARITY  = 3;
  {$EXTERNALSYM MARKPARITY}
  SPACEPARITY = 4;
  {$EXTERNALSYM SPACEPARITY}

  ONESTOPBIT   = 0;
  {$EXTERNALSYM ONESTOPBIT}
  ONE5STOPBITS = 1;
  {$EXTERNALSYM ONE5STOPBITS}
  TWOSTOPBITS  = 2;
  {$EXTERNALSYM TWOSTOPBITS}

  IGNORE   = 0;                // Ignore signal
  {$EXTERNALSYM IGNORE}
  INFINITE = DWORD($FFFFFFFF); // Infinite timeout
  {$EXTERNALSYM INFINITE}

//
// Baud rates at which the communication device operates
//

  CBR_110    = 110;
  {$EXTERNALSYM CBR_110}
  CBR_300    = 300;
  {$EXTERNALSYM CBR_300}
  CBR_600    = 600;
  {$EXTERNALSYM CBR_600}
  CBR_1200   = 1200;
  {$EXTERNALSYM CBR_1200}
  CBR_2400   = 2400;
  {$EXTERNALSYM CBR_2400}
  CBR_4800   = 4800;
  {$EXTERNALSYM CBR_4800}
  CBR_9600   = 9600;
  {$EXTERNALSYM CBR_9600}
  CBR_14400  = 14400;
  {$EXTERNALSYM CBR_14400}
  CBR_19200  = 19200;
  {$EXTERNALSYM CBR_19200}
  CBR_38400  = 38400;
  {$EXTERNALSYM CBR_38400}
  CBR_56000  = 56000;
  {$EXTERNALSYM CBR_56000}
  CBR_57600  = 57600;
  {$EXTERNALSYM CBR_57600}
  CBR_115200 = 115200;
  {$EXTERNALSYM CBR_115200}
  CBR_128000 = 128000;
  {$EXTERNALSYM CBR_128000}
  CBR_256000 = 256000;
  {$EXTERNALSYM CBR_256000}

//
// Error Flags
//

  CE_RXOVER   = $0001; // Receive Queue overflow
  {$EXTERNALSYM CE_RXOVER}
  CE_OVERRUN  = $0002; // Receive Overrun Error
  {$EXTERNALSYM CE_OVERRUN}
  CE_RXPARITY = $0004; // Receive Parity Error
  {$EXTERNALSYM CE_RXPARITY}
  CE_FRAME    = $0008; // Receive Framing error
  {$EXTERNALSYM CE_FRAME}
  CE_BREAK    = $0010; // Break Detected
  {$EXTERNALSYM CE_BREAK}
  CE_TXFULL   = $0100; // TX Queue is full
  {$EXTERNALSYM CE_TXFULL}
  CE_PTO      = $0200; // LPTx Timeout
  {$EXTERNALSYM CE_PTO}
  CE_IOE      = $0400; // LPTx I/O Error
  {$EXTERNALSYM CE_IOE}
  CE_DNS      = $0800; // LPTx Device not selected
  {$EXTERNALSYM CE_DNS}
  CE_OOP      = $1000; // LPTx Out-Of-Paper
  {$EXTERNALSYM CE_OOP}
  CE_MODE     = $8000; // Requested mode unsupported
  {$EXTERNALSYM CE_MODE}

  IE_BADID    = DWORD(-1); // Invalid or unsupported id
  {$EXTERNALSYM IE_BADID}
  IE_OPEN     = DWORD(-2); // Device Already Open
  {$EXTERNALSYM IE_OPEN}
  IE_NOPEN    = DWORD(-3); // Device Not Open
  {$EXTERNALSYM IE_NOPEN}
  IE_MEMORY   = DWORD(-4); // Unable to allocate queues
  {$EXTERNALSYM IE_MEMORY}
  IE_DEFAULT  = DWORD(-5); // Error in default parameters
  {$EXTERNALSYM IE_DEFAULT}
  IE_HARDWARE = DWORD(-10); // Hardware Not Present
  {$EXTERNALSYM IE_HARDWARE}
  IE_BYTESIZE = DWORD(-11); // Illegal Byte Size
  {$EXTERNALSYM IE_BYTESIZE}
  IE_BAUDRATE = DWORD(-12); // Unsupported BaudRate
  {$EXTERNALSYM IE_BAUDRATE}

//
// Events
//

  EV_RXCHAR   = $0001; // Any Character received
  {$EXTERNALSYM EV_RXCHAR}
  EV_RXFLAG   = $0002; // Received certain character
  {$EXTERNALSYM EV_RXFLAG}
  EV_TXEMPTY  = $0004; // Transmitt Queue Empty
  {$EXTERNALSYM EV_TXEMPTY}
  EV_CTS      = $0008; // CTS changed state
  {$EXTERNALSYM EV_CTS}
  EV_DSR      = $0010; // DSR changed state
  {$EXTERNALSYM EV_DSR}
  EV_RLSD     = $0020; // RLSD changed state
  {$EXTERNALSYM EV_RLSD}
  EV_BREAK    = $0040; // BREAK received
  {$EXTERNALSYM EV_BREAK}
  EV_ERR      = $0080; // Line status error occurred
  {$EXTERNALSYM EV_ERR}
  EV_RING     = $0100; // Ring signal detected
  {$EXTERNALSYM EV_RING}
  EV_PERR     = $0200; // Printer error occured
  {$EXTERNALSYM EV_PERR}
  EV_RX80FULL = $0400; // Receive buffer is 80 percent full
  {$EXTERNALSYM EV_RX80FULL}
  EV_EVENT1   = $0800; // Provider specific event 1
  {$EXTERNALSYM EV_EVENT1}
  EV_EVENT2   = $1000; // Provider specific event 2
  {$EXTERNALSYM EV_EVENT2}

//
// Escape Functions
//

  SETXOFF  = 1; // Simulate XOFF received
  {$EXTERNALSYM SETXOFF}
  SETXON   = 2; // Simulate XON received
  {$EXTERNALSYM SETXON}
  SETRTS   = 3; // Set RTS high
  {$EXTERNALSYM SETRTS}
  CLRRTS   = 4; // Set RTS low
  {$EXTERNALSYM CLRRTS}
  SETDTR   = 5; // Set DTR high
  {$EXTERNALSYM SETDTR}
  CLRDTR   = 6; // Set DTR low
  {$EXTERNALSYM CLRDTR}
  RESETDEV = 7; // Reset device if possible
  {$EXTERNALSYM RESETDEV}
  SETBREAK = 8; // Set the device break line.
  {$EXTERNALSYM SETBREAK}
  CLRBREAK = 9; // Clear the device break line.
  {$EXTERNALSYM CLRBREAK}

//
// PURGE function flags.
//

  PURGE_TXABORT = $0001; // Kill the pending/current writes to the comm port.
  {$EXTERNALSYM PURGE_TXABORT}
  PURGE_RXABORT = $0002; // Kill the pending/current reads to the comm port.
  {$EXTERNALSYM PURGE_RXABORT}
  PURGE_TXCLEAR = $0004; // Kill the transmit queue if there.
  {$EXTERNALSYM PURGE_TXCLEAR}
  PURGE_RXCLEAR = $0008; // Kill the typeahead buffer if there.
  {$EXTERNALSYM PURGE_RXCLEAR}

  LPTx = $80; // Set if ID is for LPT device
  {$EXTERNALSYM LPTx}

//
// Modem Status Flags
//

  MS_CTS_ON  = DWORD($0010);
  {$EXTERNALSYM MS_CTS_ON}
  MS_DSR_ON  = DWORD($0020);
  {$EXTERNALSYM MS_DSR_ON}
  MS_RING_ON = DWORD($0040);
  {$EXTERNALSYM MS_RING_ON}
  MS_RLSD_ON = DWORD($0080);
  {$EXTERNALSYM MS_RLSD_ON}

//
// WaitSoundState() Constants
//

  S_QUEUEEMPTY   = 0;
  {$EXTERNALSYM S_QUEUEEMPTY}
  S_THRESHOLD    = 1;
  {$EXTERNALSYM S_THRESHOLD}
  S_ALLTHRESHOLD = 2;
  {$EXTERNALSYM S_ALLTHRESHOLD}

//
// Accent Modes
//

  S_NORMAL   = 0;
  {$EXTERNALSYM S_NORMAL}
  S_LEGATO   = 1;
  {$EXTERNALSYM S_LEGATO}
  S_STACCATO = 2;
  {$EXTERNALSYM S_STACCATO}

//
// SetSoundNoise() Sources
//

  S_PERIOD512   = 0; // Freq = N/512 high pitch, less coarse hiss
  {$EXTERNALSYM S_PERIOD512}
  S_PERIOD1024  = 1; // Freq = N/1024
  {$EXTERNALSYM S_PERIOD1024}
  S_PERIOD2048  = 2; // Freq = N/2048 low pitch, more coarse hiss
  {$EXTERNALSYM S_PERIOD2048}
  S_PERIODVOICE = 3; // Source is frequency from voice channel (3)
  {$EXTERNALSYM S_PERIODVOICE}
  S_WHITE512    = 4; // Freq = N/512 high pitch, less coarse hiss
  {$EXTERNALSYM S_WHITE512}
  S_WHITE1024   = 5; // Freq = N/1024
  {$EXTERNALSYM S_WHITE1024}
  S_WHITE2048   = 6; // Freq = N/2048 low pitch, more coarse hiss
  {$EXTERNALSYM S_WHITE2048}
  S_WHITEVOICE  = 7; // Source is frequency from voice channel (3)
  {$EXTERNALSYM S_WHITEVOICE}

  S_SERDVNA = DWORD(-1); // Device not available
  {$EXTERNALSYM S_SERDVNA}
  S_SEROFM  = DWORD(-2); // Out of memory
  {$EXTERNALSYM S_SEROFM}
  S_SERMACT = DWORD(-3); // Music active
  {$EXTERNALSYM S_SERMACT}
  S_SERQFUL = DWORD(-4); // Queue full
  {$EXTERNALSYM S_SERQFUL}
  S_SERBDNT = DWORD(-5); // Invalid note
  {$EXTERNALSYM S_SERBDNT}
  S_SERDLN  = DWORD(-6); // Invalid note length
  {$EXTERNALSYM S_SERDLN}
  S_SERDCC  = DWORD(-7); // Invalid note count
  {$EXTERNALSYM S_SERDCC}
  S_SERDTP  = DWORD(-8); // Invalid tempo
  {$EXTERNALSYM S_SERDTP}
  S_SERDVL  = DWORD(-9); // Invalid volume
  {$EXTERNALSYM S_SERDVL}
  S_SERDMD  = DWORD(-10); // Invalid mode
  {$EXTERNALSYM S_SERDMD}
  S_SERDSH  = DWORD(-11); // Invalid shape
  {$EXTERNALSYM S_SERDSH}
  S_SERDPT  = DWORD(-12); // Invalid pitch
  {$EXTERNALSYM S_SERDPT}
  S_SERDFQ  = DWORD(-13); // Invalid frequency
  {$EXTERNALSYM S_SERDFQ}
  S_SERDDR  = DWORD(-14); // Invalid duration
  {$EXTERNALSYM S_SERDDR}
  S_SERDSR  = DWORD(-15); // Invalid source
  {$EXTERNALSYM S_SERDSR}
  S_SERDST  = DWORD(-16); // Invalid state
  {$EXTERNALSYM S_SERDST}

  NMPWAIT_WAIT_FOREVER     = DWORD($ffffffff);
  {$EXTERNALSYM NMPWAIT_WAIT_FOREVER}
  NMPWAIT_NOWAIT           = $00000001;
  {$EXTERNALSYM NMPWAIT_NOWAIT}
  NMPWAIT_USE_DEFAULT_WAIT = $00000000;
  {$EXTERNALSYM NMPWAIT_USE_DEFAULT_WAIT}

  FS_CASE_IS_PRESERVED      = FILE_CASE_PRESERVED_NAMES;
  {$EXTERNALSYM FS_CASE_IS_PRESERVED}
  FS_CASE_SENSITIVE         = FILE_CASE_SENSITIVE_SEARCH;
  {$EXTERNALSYM FS_CASE_SENSITIVE}
  FS_UNICODE_STORED_ON_DISK = FILE_UNICODE_ON_DISK;
  {$EXTERNALSYM FS_UNICODE_STORED_ON_DISK}
  FS_PERSISTENT_ACLS        = FILE_PERSISTENT_ACLS;
  {$EXTERNALSYM FS_PERSISTENT_ACLS}
  FS_VOL_IS_COMPRESSED      = FILE_VOLUME_IS_COMPRESSED;
  {$EXTERNALSYM FS_VOL_IS_COMPRESSED}
  FS_FILE_COMPRESSION       = FILE_FILE_COMPRESSION;
  {$EXTERNALSYM FS_FILE_COMPRESSION}
  FS_FILE_ENCRYPTION        = FILE_SUPPORTS_ENCRYPTION;
  {$EXTERNALSYM FS_FILE_ENCRYPTION}

  FILE_MAP_COPY       = SECTION_QUERY;
  {$EXTERNALSYM FILE_MAP_COPY}
  FILE_MAP_WRITE      = SECTION_MAP_WRITE;
  {$EXTERNALSYM FILE_MAP_WRITE}
  FILE_MAP_READ       = SECTION_MAP_READ;
  {$EXTERNALSYM FILE_MAP_READ}
  FILE_MAP_ALL_ACCESS = SECTION_ALL_ACCESS;
  {$EXTERNALSYM FILE_MAP_ALL_ACCESS}

  OF_READ             = $00000000;
  {$EXTERNALSYM OF_READ}
  OF_WRITE            = $00000001;
  {$EXTERNALSYM OF_WRITE}
  OF_READWRITE        = $00000002;
  {$EXTERNALSYM OF_READWRITE}
  OF_SHARE_COMPAT     = $00000000;
  {$EXTERNALSYM OF_SHARE_COMPAT}
  OF_SHARE_EXCLUSIVE  = $00000010;
  {$EXTERNALSYM OF_SHARE_EXCLUSIVE}
  OF_SHARE_DENY_WRITE = $00000020;
  {$EXTERNALSYM OF_SHARE_DENY_WRITE}
  OF_SHARE_DENY_READ  = $00000030;
  {$EXTERNALSYM OF_SHARE_DENY_READ}
  OF_SHARE_DENY_NONE  = $00000040;
  {$EXTERNALSYM OF_SHARE_DENY_NONE}
  OF_PARSE            = $00000100;
  {$EXTERNALSYM OF_PARSE}
  OF_DELETE           = $00000200;
  {$EXTERNALSYM OF_DELETE}
  OF_VERIFY           = $00000400;
  {$EXTERNALSYM OF_VERIFY}
  OF_CANCEL           = $00000800;
  {$EXTERNALSYM OF_CANCEL}
  OF_CREATE           = $00001000;
  {$EXTERNALSYM OF_CREATE}
  OF_PROMPT           = $00002000;
  {$EXTERNALSYM OF_PROMPT}
  OF_EXIST            = $00004000;
  {$EXTERNALSYM OF_EXIST}
  OF_REOPEN           = $00008000;
  {$EXTERNALSYM OF_REOPEN}

  OFS_MAXPATHNAME = 128;
  {$EXTERNALSYM OFS_MAXPATHNAME}

type
  LPOFSTRUCT = ^OFSTRUCT;
  {$EXTERNALSYM LPOFSTRUCT}
  _OFSTRUCT = record
    cBytes: Byte;
    fFixedDisk: Byte;
    nErrCode: Word;
    Reserved1: Word;
    Reserved2: Word;
    szPathName: array [0..OFS_MAXPATHNAME - 1] of AnsiChar;
  end;
  {$EXTERNALSYM _OFSTRUCT}
  OFSTRUCT = _OFSTRUCT;
  {$EXTERNALSYM OFSTRUCT}
  TOfStruct = OFSTRUCT;
  POfStruct = LPOFSTRUCT;

// 64 bit interlocked functions, donated by Will DeWitt Jr.

function  InterlockedCompareExchange64(var Destination: LONGLONG; Exchange, Comperand: LONGLONG): LONGLONG; stdcall;
{$EXTERNALSYM InterlockedCompareExchange64}

function  InterlockedAnd64(var Destination: LONGLONG; Value: LONGLONG): LONGLONG;
{$EXTERNALSYM InterlockedAnd64}

function  InterlockedOr64(var Destination: LONGLONG; Value: LONGLONG): LONGLONG;
{$EXTERNALSYM InterlockedOr64}

function  InterlockedXor64(var Destination: LONGLONG; Value: LONGLONG): LONGLONG;
{$EXTERNALSYM InterlockedXor64}

function  InterlockedIncrement64(var Addend: LONGLONG): LONGLONG;
{$EXTERNALSYM InterlockedIncrement64}

function  InterlockedDecrement64(var Addend: LONGLONG): LONGLONG;
{$EXTERNALSYM InterlockedDecrement}

function  InterlockedExchange64(var Target: LONGLONG; Value: LONGLONG): LONGLONG;
{$EXTERNALSYM InterlockedExchange64}

function  InterlockedExchangeAdd64(var Addend: LONGLONG; Value: LONGLONG): LONGLONG;
{$EXTERNALSYM InterlockedExchangeAdd64}

//
// The Risc compilers support intrinsic functions for interlocked
// increment, decrement, and exchange.
//

function InterlockedIncrement(var lpAddend: LONG): LONG; stdcall;
{$EXTERNALSYM InterlockedIncrement}

function InterlockedDecrement(var lpAddend: LONG): LONG; stdcall;
{$EXTERNALSYM InterlockedDecrement}

function InterlockedExchange(var Target: LONG; Value: LONG): LONG; stdcall;
{$EXTERNALSYM InterlockedExchange}

function InterlockedExchangePointer(var Target: PVOID; Value: PVOID): PVOID;
{$EXTERNALSYM InterlockedExchangePointer}

function InterlockedExchangeAdd(var Addend: LONG; Value: LONG): LONG; stdcall;
{$EXTERNALSYM InterlockedExchangeAdd}

function InterlockedCompareExchange(var Destination: LONG; Exchange: LONG;
  Comperand: LONG): LONG; stdcall;
{$EXTERNALSYM InterlockedCompareExchange}

function InterlockedCompareExchangePointer(var Destination: PVOID;
  Exchange, Comperand: PVOID): PVOID;
{$EXTERNALSYM InterlockedCompareExchangePointer}

{
#define InterlockedIncrementAcquire InterlockedIncrement
#define InterlockedIncrementRelease InterlockedIncrement
#define InterlockedDecrementAcquire InterlockedDecrement
#define InterlockedDecrementRelease InterlockedDecrement
#define InterlockedIncrementAcquire InterlockedIncrement
#define InterlockedIncrementRelease InterlockedIncrement
#define InterlockedCompareExchangeAcquire InterlockedCompareExchange
#define InterlockedCompareExchangeRelease InterlockedCompareExchange
#define InterlockedCompareExchangeAcquire64 InterlockedCompareExchange64
#define InterlockedCompareExchangeRelease64 InterlockedCompareExchange64
}

procedure InitializeSListHead(ListHead: PSLIST_HEADER); stdcall;
{$EXTERNALSYM InitializeSListHead}

function InterlockedPopEntrySList(ListHead: PSLIST_HEADER): PSLIST_ENTRY; stdcall;
{$EXTERNALSYM InterlockedPopEntrySList}

function InterlockedPushEntrySList(ListHead: PSLIST_HEADER; ListEntry: PSLIST_ENTRY): PSLIST_ENTRY; stdcall;
{$EXTERNALSYM InterlockedPushEntrySList}

function InterlockedFlushSList(ListHead: PSLIST_HEADER): PSLIST_ENTRY; stdcall;
{$EXTERNALSYM InterlockedFlushSList}

function QueryDepthSList(ListHead: PSLIST_HEADER): USHORT; stdcall;
{$EXTERNALSYM QueryDepthSList}

function FreeResource(hResData: HGLOBAL): BOOL; stdcall;
{$EXTERNALSYM FreeResource}

function LockResource(hResData: HGLOBAL): LPVOID; stdcall;
{$EXTERNALSYM LockResource}

function UnlockResource(hResData: HANDLE): BOOL;
{$EXTERNALSYM UnlockResource}

const
  MAXINTATOM = $C000;
  {$EXTERNALSYM MAXINTATOM}
  INVALID_ATOM = ATOM(0);
  {$EXTERNALSYM INVALID_ATOM}

type
  MAKEINTATOMA = PAnsiChar;
  MAKEINTATOMW = PWideChar;
  {$IFDEF UNICODE}
  MAKEINTATOM = MAKEINTATOMW;
  {$EXTERNALSYM MAKEINTATOM}
  {$ELSE}
  MAKEINTATOM = MAKEINTATOMA;
  {$EXTERNALSYM MAKEINTATOM}
  {$ENDIF UNICODE}

function FreeLibrary(hLibModule: HMODULE): BOOL; stdcall;
{$EXTERNALSYM FreeLibrary}

procedure FreeLibraryAndExitThread(hLibModule: HMODULE; dwExitCode: DWORD); stdcall;
{$EXTERNALSYM FreeLibraryAndExitThread}

function DisableThreadLibraryCalls(hLibModule: HMODULE): BOOL; stdcall;
{$EXTERNALSYM DisableThreadLibraryCalls}

function GetProcAddress(hModule: HMODULE; lpProcName: LPCSTR): FARPROC; stdcall;
{$EXTERNALSYM GetProcAddress}

function GetVersion: DWORD; stdcall;
{$EXTERNALSYM GetVersion)}

function GlobalAlloc(uFlags: UINT; dwBytes: SIZE_T): HGLOBAL; stdcall;
{$EXTERNALSYM GlobalAlloc}

function GlobalReAlloc(hMem: HGLOBAL; dwBytes: SIZE_T; uFlags: UINT): HGLOBAL; stdcall;
{$EXTERNALSYM GlobalReAlloc}

function GlobalSize(hMem: HGLOBAL): SIZE_T; stdcall;
{$EXTERNALSYM GlobalSize}

function GlobalFlags(hMem: HGLOBAL): UINT; stdcall;
{$EXTERNALSYM GlobalFlags}

function GlobalLock(hMem: HGLOBAL): LPVOID; stdcall;
{$EXTERNALSYM GlobalLock}

//!!!MWH My version  win31 = DWORD WINAPI GlobalHandle(UINT)

function GlobalHandle(pMem: LPCVOID): HGLOBAL; stdcall;
{$EXTERNALSYM GlobalHandle}

function GlobalUnlock(hMem: HGLOBAL): BOOL; stdcall;
{$EXTERNALSYM GlobalUnlock}

function GlobalFree(hMem: HGLOBAL): HGLOBAL; stdcall;
{$EXTERNALSYM GlobalFree}

function GlobalCompact(dwMinFree: DWORD): SIZE_T; stdcall;
{$EXTERNALSYM GlobalCompact}

procedure GlobalFix(hMem: HGLOBAL); stdcall;
{$EXTERNALSYM GlobalFix}

procedure GlobalUnfix(hMem: HGLOBAL); stdcall;
{$EXTERNALSYM GlobalUnfix}

function GlobalWire(hMem: HGLOBAL): LPVOID; stdcall;
{$EXTERNALSYM GlobalWire}

function GlobalUnWire(hMem: HGLOBAL): BOOL; stdcall;
{$EXTERNALSYM GlobalUnWire}

procedure GlobalMemoryStatus(var lpBuffer: MEMORYSTATUS); stdcall;
{$EXTERNALSYM GlobalMemoryStatus}

type
  LPMEMORYSTATUSEX = ^MEMORYSTATUSEX;
  {$EXTERNALSYM LPMEMORYSTATUSEX}
  _MEMORYSTATUSEX = record
    dwLength: DWORD;
    dwMemoryLoad: DWORD;
    ullTotalPhys: DWORDLONG;
    ullAvailPhys: DWORDLONG;
    ullTotalPageFile: DWORDLONG;
    ullAvailPageFile: DWORDLONG;
    ullTotalVirtual: DWORDLONG;
    ullAvailVirtual: DWORDLONG;
    ullAvailExtendedVirtual: DWORDLONG;
  end;
  {$EXTERNALSYM _MEMORYSTATUSEX}
  MEMORYSTATUSEX = _MEMORYSTATUSEX;
  {$EXTERNALSYM MEMORYSTATUSEX}
  TMemoryStatusEx = MEMORYSTATUSEX;
  PMemoryStatusEx = LPMEMORYSTATUSEX;

function GlobalMemoryStatusEx(var lpBuffer: MEMORYSTATUSEX): BOOL; stdcall;
{$EXTERNALSYM GlobalMemoryStatusEx}

function LocalAlloc(uFlags: UINT; uBytes: SIZE_T): HLOCAL; stdcall;
{$EXTERNALSYM LocalAlloc}

function LocalReAlloc(hMem: HLOCAL; uBytes: SIZE_T; uFlags: UINT): HLOCAL; stdcall;
{$EXTERNALSYM LocalReAlloc}

function LocalLock(hMem: HLOCAL): LPVOID; stdcall;
{$EXTERNALSYM LocalLock}

function LocalHandle(pMem: LPCVOID): HLOCAL; stdcall;
{$EXTERNALSYM LocalHandle}

function LocalUnlock(hMem: HLOCAL): BOOL; stdcall;
{$EXTERNALSYM LocalUnlock}

function LocalSize(hMem: HLOCAL): SIZE_T; stdcall;
{$EXTERNALSYM LocalSize}

function LocalFlags(hMem: HLOCAL): UINT; stdcall;
{$EXTERNALSYM LocalFlags}

function LocalFree(hMem: HLOCAL): HLOCAL; stdcall;
{$EXTERNALSYM LocalFree}

function LocalShrink(hMem: HLOCAL; cbNewSize: UINT): SIZE_T; stdcall;
{$EXTERNALSYM LocalShrink}

function LocalCompact(uMinFree: UINT): SIZE_T; stdcall;
{$EXTERNALSYM LocalCompact}

function FlushInstructionCache(hProcess: HANDLE; lpBaseAddress: LPCVOID;
  dwSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM FlushInstructionCache}

function VirtualAlloc(lpAddress: LPVOID; dwSize: SIZE_T; flAllocationType: DWORD;
  flProtect: DWORD): LPVOID; stdcall;
{$EXTERNALSYM VirtualAlloc}

function VirtualFree(lpAddress: LPVOID; dwSize: SIZE_T; dwFreeType: DWORD): BOOL; stdcall;
{$EXTERNALSYM VirtualFree}

function VirtualProtect(lpAddress: LPVOID; dwSize: SIZE_T; flNewProtect: DWORD;
  lpflOldProtect: PDWORD): BOOL; stdcall;
{$EXTERNALSYM VirtualProtect}

function VirtualQuery(lpAddress: LPCVOID; var lpBuffer: MEMORY_BASIC_INFORMATION;
  dwLength: DWORD): DWORD; stdcall;
{$EXTERNALSYM VirtualQuery}

function VirtualAllocEx(hProcess: HANDLE; lpAddress: LPVOID; dwSize: SIZE_T;
  flAllocationType: DWORD; flProtect: DWORD): LPVOID; stdcall;
{$EXTERNALSYM VirtualAllocEx}

function GetWriteWatch(dwFlags: DWORD; lpBaseAddress: PVOID;
  dwRegionSize: SIZE_T; var lpAddresses: PVOID; var lpdwCount: ULONG_PTR;
  var lpdwGranularity: ULONG): UINT; stdcall;
{$EXTERNALSYM GetWriteWatch}

function ResetWriteWatch(lpBaseAddress: LPVOID; dwRegionSize: SIZE_T): UINT; stdcall;
{$EXTERNALSYM ResetWriteWatch}

function GetLargePageMinimum: SIZE_T; stdcall;
{$EXTERNALSYM GetLargePageMinimum}

function VirtualFreeEx(hProcess: HANDLE; lpAddress: LPVOID; dwSize: SIZE_T;
  dwFreeType: DWORD): BOOL; stdcall;
{$EXTERNALSYM VirtualFreeEx}

function VirtualProtectEx(hProcess: HANDLE; lpAddress: LPVOID; dwSize: SIZE_T;
  flNewProtect: DWORD; lpflOldProtect: PDWORD): BOOL; stdcall;
{$EXTERNALSYM VirtualProtectEx}

function VirtualQueryEx(hProcess: HANDLE; lpAddress: LPCVOID;
  var lpBuffer: MEMORY_BASIC_INFORMATION; dwLength: DWORD): DWORD; stdcall;
{$EXTERNALSYM VirtualQueryEx}

function HeapCreate(flOptions: DWORD; dwInitialSize: SIZE_T;
  dwMaximumSize: SIZE_T): HANDLE; stdcall;
{$EXTERNALSYM HeapCreate}

function HeapDestroy(hHeap: HANDLE): BOOL; stdcall;
{$EXTERNALSYM HeapDestroy}

function HeapAlloc(hHeap: HANDLE; dwFlags: DWORD; dwBytes: SIZE_T): LPVOID; stdcall;
{$EXTERNALSYM HeapAlloc}

function HeapReAlloc(hHeap: HANDLE; dwFlags: DWORD; lpMem: LPVOID; dwBytes: SIZE_T): LPVOID; stdcall;
{$EXTERNALSYM HeapReAlloc}

function HeapFree(hHeap: HANDLE; dwFlags: DWORD; lpMem: LPVOID): BOOL; stdcall;
{$EXTERNALSYM HeapFree}

function HeapSize(hHeap: HANDLE; dwFlags: DWORD; lpMem: LPCVOID): SIZE_T; stdcall;
{$EXTERNALSYM HeapSize}

function HeapValidate(hHeap: HANDLE; dwFlags: DWORD; lpMem: LPCVOID): BOOL; stdcall;
{$EXTERNALSYM HeapValidate}

function HeapCompact(hHeap: HANDLE; dwFlags: DWORD): SIZE_T; stdcall;
{$EXTERNALSYM HeapCompact}

function GetProcessHeap: HANDLE; stdcall;
{$EXTERNALSYM GetProcessHeap)}

function GetProcessHeaps(NumberOfHeaps: DWORD; var ProcessHeaps: HANDLE): DWORD; stdcall;
{$EXTERNALSYM GetProcessHeaps}

type
  PPROCESS_HEAP_ENTRY = ^PROCESS_HEAP_ENTRY;
  {$EXTERNALSYM PPROCESS_HEAP_ENTRY}
  _PROCESS_HEAP_ENTRY = record
    lpData: PVOID;
    cbData: DWORD;
    cbOverhead: BYTE;
    iRegionIndex: BYTE;
    wFlags: WORD;
    case Integer of
      0: (
        hMem: HANDLE;
        dwReserved: array [0..2] of DWORD);
      1: (
        dwComittedSize: DWORD;
        dwUnComittedSize: DWORD;
        lpFirstBlock: LPVOID;
        lpLastBlock: LPVOID);
  end;
  {$EXTERNALSYM _PROCESS_HEAP_ENTRY}
  PROCESS_HEAP_ENTRY = _PROCESS_HEAP_ENTRY;
  {$EXTERNALSYM PROCESS_HEAP_ENTRY}
  LPPROCESS_HEAP_ENTRY = ^PROCESS_HEAP_ENTRY;
  {$EXTERNALSYM LPPROCESS_HEAP_ENTRY}
  TProcessHeapEntry = PROCESS_HEAP_ENTRY;
  PProcessHeapEntry = PPROCESS_HEAP_ENTRY;

const
  PROCESS_HEAP_REGION            = $0001;
  {$EXTERNALSYM PROCESS_HEAP_REGION}
  PROCESS_HEAP_UNCOMMITTED_RANGE = $0002;
  {$EXTERNALSYM PROCESS_HEAP_UNCOMMITTED_RANGE}
  PROCESS_HEAP_ENTRY_BUSY        = $0004;
  {$EXTERNALSYM PROCESS_HEAP_ENTRY_BUSY}
  PROCESS_HEAP_ENTRY_MOVEABLE    = $0010;
  {$EXTERNALSYM PROCESS_HEAP_ENTRY_MOVEABLE}
  PROCESS_HEAP_ENTRY_DDESHARE    = $0020;
  {$EXTERNALSYM PROCESS_HEAP_ENTRY_DDESHARE}

function HeapLock(hHeap: HANDLE): BOOL; stdcall;
{$EXTERNALSYM HeapLock}

function HeapUnlock(hHeap: HANDLE): BOOL; stdcall;
{$EXTERNALSYM HeapUnlock}

function HeapWalk(hHeap: HANDLE; var lpEntry: PROCESS_HEAP_ENTRY): BOOL; stdcall;
{$EXTERNALSYM HeapWalk}

function HeapSetInformation(HeapHandle: HANDLE; HeapInformationClass: HEAP_INFORMATION_CLASS;
  HeapInformation: PVOID; HeapInformationLength: SIZE_T): BOOL; stdcall;
{$EXTERNALSYM HeapSetInformation}

function HeapQueryInformation(HeapHandle: HANDLE; HeapInformationClass: HEAP_INFORMATION_CLASS;
  HeapInformation: PVOID; HeapInformationLength: SIZE_T; ReturnLength: PSIZE_T): BOOL; stdcall;
{$EXTERNALSYM HeapQueryInformation}

// GetBinaryType return values.

const
  SCS_32BIT_BINARY = 0;
  {$EXTERNALSYM SCS_32BIT_BINARY}
  SCS_DOS_BINARY   = 1;
  {$EXTERNALSYM SCS_DOS_BINARY}
  SCS_WOW_BINARY   = 2;
  {$EXTERNALSYM SCS_WOW_BINARY}
  SCS_PIF_BINARY   = 3;
  {$EXTERNALSYM SCS_PIF_BINARY}
  SCS_POSIX_BINARY = 4;
  {$EXTERNALSYM SCS_POSIX_BINARY}
  SCS_OS216_BINARY = 5;
  {$EXTERNALSYM SCS_OS216_BINARY}
  SCS_64BIT_BINARY = 6;
  {$EXTERNALSYM SCS_64BIT_BINARY}

  SCS_THIS_PLATFORM_BINARY = SCS_32BIT_BINARY;
  {$EXTERNALSYM SCS_THIS_PLATFORM_BINARY}

function GetBinaryTypeA(lpApplicationName: LPCSTR; var lpBinaryType: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetBinaryTypeA}
function GetBinaryTypeW(lpApplicationName: LPCWSTR; var lpBinaryType: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetBinaryTypeW}
function GetBinaryType(lpApplicationName: LPCTSTR; var lpBinaryType: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetBinaryType}

function GetShortPathNameA(lpszLongPath: LPCSTR; lpszShortPath: LPSTR;
  cchBuffer: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetShortPathNameA}
function GetShortPathNameW(lpszLongPath: LPCWSTR; lpszShortPath: LPWSTR;
  cchBuffer: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetShortPathNameW}
function GetShortPathName(lpszLongPath: LPCTSTR; lpszShortPath: LPTSTR;
  cchBuffer: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetShortPathName}

function GetLongPathNameA(lpszShortPath: LPCSTR; lpszLongPath: LPSTR;
  cchBuffer: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetLongPathNameA}
function GetLongPathNameW(lpszShortPath: LPCWSTR; lpszLongPath: LPWSTR;
  cchBuffer: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetLongPathNameW}
function GetLongPathName(lpszShortPath: LPCTSTR; lpszLongPath: LPTSTR;
  cchBuffer: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetLongPathName}

function GetProcessAffinityMask(hProcess: HANDLE;
  var lpProcessAffinityMask, lpSystemAffinityMask: DWORD_PTR): BOOL; stdcall;
{$EXTERNALSYM GetProcessAffinityMask}

function SetProcessAffinityMask(hProcess: HANDLE;
  dwProcessAffinityMask: DWORD_PTR): BOOL; stdcall;
{$EXTERNALSYM SetProcessAffinityMask}

function GetProcessHandleCount(hProcess: HANDLE; out pdwHandleCount: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetProcessHandleCount}

function GetProcessTimes(hProcess: HANDLE; var lpCreationTime, lpExitTime,
  lpKernelTime, lpUserTime: FILETIME): BOOL; stdcall;
{$EXTERNALSYM GetProcessTimes}

function GetProcessIoCounters(hProcess: HANDLE; var lpIoCounters: IO_COUNTERS): BOOL; stdcall;
{$EXTERNALSYM GetProcessIoCounters}

function GetProcessWorkingSetSize(hProcess: HANDLE;
  var lpMinimumWorkingSetSize, lpMaximumWorkingSetSize: SIZE_T): BOOL; stdcall;
{$EXTERNALSYM GetProcessWorkingSetSize}

function GetProcessWorkingSetSizeEx(hProcess: HANDLE; out lpMinimumWorkingSetSize,  lpMaximumWorkingSetSize: SIZE_T; out Flags: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetProcessWorkingSetSizeEx}

function SetProcessWorkingSetSize(hProcess: HANDLE; dwMinimumWorkingSetSize,
  dwMaximumWorkingSetSize: SIZE_T): BOOL; stdcall;
{$EXTERNALSYM SetProcessWorkingSetSize}

function SetProcessWorkingSetSizeEx(hProcess: HANDLE; dwMinimumWorkingSetSize, dwMaximumWorkingSetSize: SIZE_T; Flags: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetProcessWorkingSetSizeEx}

function OpenProcess(dwDesiredAccess: DWORD; bInheritHandle: BOOL;
  dwProcessId: DWORD): HANDLE; stdcall;
{$EXTERNALSYM OpenProcess}

function GetCurrentProcess: HANDLE; stdcall;
{$EXTERNALSYM GetCurrentProcess}

function GetCurrentProcessId: DWORD; stdcall;
{$EXTERNALSYM GetCurrentProcessId}

procedure ExitProcess(uExitCode: UINT); stdcall;
{$EXTERNALSYM ExitProcess}

function TerminateProcess(hProcess: HANDLE; uExitCode: UINT): BOOL; stdcall;
{$EXTERNALSYM TerminateProcess}

function GetExitCodeProcess(hProcess: HANDLE; var lpExitCode: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetExitCodeProcess}

procedure FatalExit(ExitCode: Integer); stdcall;
{$EXTERNALSYM FatalExit}

function GetEnvironmentStringsW: LPWSTR; stdcall;
{$EXTERNALSYM GetEnvironmentStringsW}

function GetEnvironmentStrings: LPTSTR; stdcall;
{$EXTERNALSYM GetEnvironmentStrings}

function GetEnvironmentStringsA: LPSTR; stdcall;
{$EXTERNALSYM GetEnvironmentStringsA}



{$IFDEF WIN2003_UP}
//This function is only available in Windows 2003, Vista and 2008
//http://sourceforge.net/support/tracker.php?aid=1846987
function SetEnvironmentStringsA(NewEnvironment: LPSTR): BOOL; stdcall;
{$EXTERNALSYM SetEnvironmentStringsA}

function SetEnvironmentStringsW(NewEnvironment: LPWSTR): BOOL; stdcall;
{$EXTERNALSYM SetEnvironmentStringsW}
function SetEnvironmentStrings(NewEnvironment: LPTSTR): BOOL; stdcall;
{$EXTERNALSYM SetEnvironmentStrings}
{$ENDIF WIN2003_UP}

function FreeEnvironmentStringsA(pstr: LPSTR): BOOL; stdcall;
{$EXTERNALSYM FreeEnvironmentStringsA}
function FreeEnvironmentStringsW(pstr: LPWSTR): BOOL; stdcall;
{$EXTERNALSYM FreeEnvironmentStringsW}
function FreeEnvironmentStrings(pstr: LPTSTR): BOOL; stdcall;
{$EXTERNALSYM FreeEnvironmentStrings}

procedure RaiseException(dwExceptionCode: DWORD; dwExceptionFlags: DWORD;
  nNumberOfArguments: DWORD; lpArguments: PULONG_PTR); stdcall;
{$EXTERNALSYM RaiseException}

function UnhandledExceptionFilter(ExceptionInfo: PEXCEPTION_POINTERS): LONG; stdcall;
{$EXTERNALSYM UnhandledExceptionFilter}

type
  PTOP_LEVEL_EXCEPTION_FILTER = function(ExceptionInfo: PEXCEPTION_POINTERS): LONG; stdcall;
  {$EXTERNALSYM PTOP_LEVEL_EXCEPTION_FILTER}
  LPTOP_LEVEL_EXCEPTION_FILTER = PTOP_LEVEL_EXCEPTION_FILTER;
  {$EXTERNALSYM LPTOP_LEVEL_EXCEPTION_FILTER}
  TTopLevelExceptionFilter = PTOP_LEVEL_EXCEPTION_FILTER;

function SetUnhandledExceptionFilter(lpTopLevelExceptionFilter: LPTOP_LEVEL_EXCEPTION_FILTER): LPTOP_LEVEL_EXCEPTION_FILTER; stdcall;
{$EXTERNALSYM SetUnhandledExceptionFilter}

//
// Fiber creation flags
//

const
  FIBER_FLAG_FLOAT_SWITCH = $1;     // context switch floating point
  {$EXTERNALSYM FIBER_FLAG_FLOAT_SWITCH}

function CreateFiber(dwStackSize: DWORD; lpStartAddress: LPFIBER_START_ROUTINE;
  lpParameter: LPVOID): LPVOID; stdcall;
{$EXTERNALSYM CreateFiber}

function CreateFiberEx(dwStackCommitSize, dwStackReserveSize: SIZE_T; dwFlags: DWORD;
  lpStartAddress: LPFIBER_START_ROUTINE; lpParameter: LPVOID): LPVOID; stdcall;
{$EXTERNALSYM CreateFiberEx}

procedure DeleteFiber(lpFiber: LPVOID); stdcall;
{$EXTERNALSYM DeleteFiber}

function ConvertThreadToFiber(lpParameter: LPVOID): LPVOID; stdcall;
{$EXTERNALSYM ConvertThreadToFiber}

function ConvertThreadToFiberEx(lpParameter: LPVOID; dwFlags: DWORD): LPVOID; stdcall;
{$EXTERNALSYM ConvertThreadToFiberEx}

function ConvertFiberToThread: BOOL; stdcall;
{$EXTERNALSYM ConvertFiberToThread}

procedure SwitchToFiber(lpFiber: LPVOID); stdcall;
{$EXTERNALSYM SwitchToFiber}

function SwitchToThread: BOOL; stdcall;
{$EXTERNALSYM SwitchToThread}

function CreateThread(lpThreadAttributes: LPSECURITY_ATTRIBUTES;
  dwStackSize: DWORD; lpStartAddress: LPTHREAD_START_ROUTINE; lpParameter: LPVOID;
  dwCreationFlags: DWORD; lpThreadId: LPDWORD): HANDLE; stdcall;
{$EXTERNALSYM CreateThread}

function CreateRemoteThread(hProcess: HANDLE;
  lpThreadAttributes: LPSECURITY_ATTRIBUTES; dwStackSize: DWORD;
  lpStartAddress: LPTHREAD_START_ROUTINE; lpParameter: LPVOID;
  dwCreationFlags: DWORD; lpThreadId: LPDWORD): HANDLE; stdcall;
{$EXTERNALSYM CreateRemoteThread}

function GetCurrentThread: HANDLE; stdcall;
{$EXTERNALSYM GetCurrentThread}

function GetCurrentThreadId: DWORD; stdcall;
{$EXTERNALSYM GetCurrentThreadId}

function GetProcessIdOfThread(Thread: HANDLE): DWORD; stdcall;
{$EXTERNALSYM GetProcessIdOfThread}

function GetThreadId(Thread: HANDLE): DWORD; stdcall;
{$EXTERNALSYM GetThreadId}

function GetProcessId(Process: HANDLE): DWORD; stdcall;
{$EXTERNALSYM GetProcessId}

function GetCurrentProcessorNumber: DWORD; stdcall;
{$EXTERNALSYM GetCurrentProcessorNumber}

function SetThreadAffinityMask(hThread: HANDLE;
  dwThreadAffinityMask: DWORD_PTR): DWORD_PTR; stdcall;
{$EXTERNALSYM SetThreadAffinityMask}

function SetThreadIdealProcessor(hThread: HANDLE; dwIdealProcessor: DWORD): DWORD; stdcall;
{$EXTERNALSYM SetThreadIdealProcessor}

function SetProcessPriorityBoost(hProcess: HANDLE;
  bDisablePriorityBoost: BOOL): BOOL; stdcall;
{$EXTERNALSYM SetProcessPriorityBoost}

function GetProcessPriorityBoost(hProcess: HANDLE;
  var pDisablePriorityBoost: BOOL): BOOL; stdcall;
{$EXTERNALSYM GetProcessPriorityBoost}

function RequestWakeupLatency(latency: LATENCY_TIME): BOOL; stdcall;
{$EXTERNALSYM RequestWakeupLatency}

function IsSystemResumeAutomatic: BOOL; stdcall;
{$EXTERNALSYM IsSystemResumeAutomatic}

function OpenThread(dwDesiredAccess: DWORD; bInheritHandle: BOOL;
  dwThreadId: DWORD): HANDLE; stdcall;
{$EXTERNALSYM OpenThread}

function SetThreadPriority(hThread: HANDLE; nPriority: Integer): BOOL; stdcall;
{$EXTERNALSYM SetThreadPriority}

function SetThreadPriorityBoost(hThread: HANDLE; bDisablePriorityBoost: BOOL): BOOL; stdcall;
{$EXTERNALSYM SetThreadPriorityBoost}

function GetThreadPriorityBoost(hThread: HANDLE;
  var pDisablePriorityBoost: BOOL): BOOL; stdcall;
{$EXTERNALSYM GetThreadPriorityBoost}

function GetThreadPriority(hThread: HANDLE): Integer; stdcall;
{$EXTERNALSYM GetThreadPriority}

function GetThreadTimes(hThread: HANDLE; var lpCreationTime, lpExitTime,
  lpKernelTime, lpUserTime: FILETIME): BOOL; stdcall;
{$EXTERNALSYM GetThreadTimes}

function GetThreadIOPendingFlag(hThread: HANDLE; out lpIOIsPending: BOOL): BOOL; stdcall;
{$EXTERNALSYM GetThreadIOPendingFlag}

procedure ExitThread(dwExitCode: DWORD); stdcall;
{$EXTERNALSYM ExitThread}

function TerminateThread(hThread: HANDLE; dwExitCode: DWORD): BOOL; stdcall;
{$EXTERNALSYM TerminateThread}

function GetExitCodeThread(hThread: HANDLE; var lpExitCode: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetExitCodeThread}

function GetThreadSelectorEntry(hThread: HANDLE; dwSelector: DWORD;
  var lpSelectorEntry: LDT_ENTRY): BOOL; stdcall;
{$EXTERNALSYM GetThreadSelectorEntry}

function SetThreadExecutionState(esFlags: EXECUTION_STATE): EXECUTION_STATE; stdcall;
{$EXTERNALSYM SetThreadExecutionState}

function GetLastError: DWORD; stdcall;
{$EXTERNALSYM GetLastError}

procedure SetLastError(dwErrCode: DWORD); stdcall;
{$EXTERNALSYM SetLastError}

procedure RestoreLastError(dwErrCode: DWORD); stdcall;
{$EXTERNALSYM RestoreLastError}

type
   PRESTORE_LAST_ERROR = procedure(dwErrCode: DWORD); stdcall;
   {$EXTERNALSYM PRESTORE_LAST_ERROR}

const
  RESTORE_LAST_ERROR_NAME_A = 'RestoreLastError';
  {$EXTERNALSYM RESTORE_LAST_ERROR_NAME_A}
  RESTORE_LAST_ERROR_NAME_W = WideString('RestoreLastError');
  {$EXTERNALSYM RESTORE_LAST_ERROR_NAME_W}
  RESTORE_LAST_ERROR_NAME   = __TEXT('RestoreLastError');
  {$EXTERNALSYM RESTORE_LAST_ERROR_NAME}

function HasOverlappedIoCompleted(const lpOverlapped: OVERLAPPED): BOOL;
{$EXTERNALSYM HasOverlappedIoCompleted}

function GetOverlappedResult(hFile: HANDLE; const lpOverlapped: OVERLAPPED;
  var lpNumberOfBytesTransferred: DWORD; bWait: BOOL): BOOL; stdcall;
{$EXTERNALSYM GetOverlappedResult}

function CreateIoCompletionPort(FileHandle: HANDLE; ExistingCompletionPort: HANDLE;
  CompletionKey: ULONG_PTR; NumberOfConcurrentThreads: DWORD): HANDLE; stdcall;
{$EXTERNALSYM CreateIoCompletionPort}

function GetQueuedCompletionStatus(CompletionPort: HANDLE;
  var lpNumberOfBytesTransferred: DWORD; var lpCompletionKey: ULONG_PTR;
  var lpOverlapped: LPOVERLAPPED; dwMilliseconds: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetQueuedCompletionStatus}

function PostQueuedCompletionStatus(CompletionPort: HANDLE;
  dwNumberOfBytesTransferred: DWORD; dwCompletionKey: ULONG_PTR;
  lpOverlapped: LPOVERLAPPED): BOOL; stdcall;
{$EXTERNALSYM PostQueuedCompletionStatus}

const
  SEM_FAILCRITICALERRORS     = $0001;
  {$EXTERNALSYM SEM_FAILCRITICALERRORS}
  SEM_NOGPFAULTERRORBOX      = $0002;
  {$EXTERNALSYM SEM_NOGPFAULTERRORBOX}
  SEM_NOALIGNMENTFAULTEXCEPT = $0004;
  {$EXTERNALSYM SEM_NOALIGNMENTFAULTEXCEPT}
  SEM_NOOPENFILEERRORBOX     = $8000;
  {$EXTERNALSYM SEM_NOOPENFILEERRORBOX}

function SetErrorMode(uMode: UINT): UINT; stdcall;
{$EXTERNALSYM SetErrorMode}

function ReadProcessMemory(hProcess: HANDLE; lpBaseAddress: LPCVOID;
  lpBuffer: LPVOID; nSize: DWORD; lpNumberOfBytesRead: LPDWORD): BOOL; stdcall;
{$EXTERNALSYM ReadProcessMemory}

function WriteProcessMemory(hProcess: HANDLE; lpBaseAddress: LPVOID;
  lpBuffer: LPVOID; nSize: DWORD; lpNumberOfBytesWritten: LPDWORD): BOOL; stdcall;
{$EXTERNALSYM WriteProcessMemory}

function GetThreadContext(hThread: HANDLE; var lpContext: CONTEXT): BOOL; stdcall;
{$EXTERNALSYM GetThreadContext}

function SetThreadContext(hThread: HANDLE; const lpContext: CONTEXT): BOOL; stdcall;
{$EXTERNALSYM SetThreadContext}

function SuspendThread(hThread: HANDLE): DWORD; stdcall;
{$EXTERNALSYM SuspendThread}

function ResumeThread(hThread: HANDLE): DWORD; stdcall;
{$EXTERNALSYM ResumeThread}

type
  PAPCFUNC = procedure(dwParam: ULONG_PTR); stdcall;
  {$EXTERNALSYM PAPCFUNC}
  TApcFunc = PAPCFUNC;

function QueueUserAPC(pfnAPC: PAPCFUNC; hThread: HANDLE; dwData: ULONG_PTR): DWORD; stdcall;
{$EXTERNALSYM QueueUserAPC}

function IsDebuggerPresent: BOOL; stdcall;
{$EXTERNALSYM IsDebuggerPresent}

function CheckRemoteDebuggerPresent(hProcess: HANDLE; out pbDebuggerPresent: BOOL): BOOL; stdcall;
{$EXTERNALSYM CheckRemoteDebuggerPresent}

procedure DebugBreak; stdcall;
{$EXTERNALSYM DebugBreak}

function WaitForDebugEvent(var lpDebugEvent: DEBUG_EVENT; dwMilliseconds: DWORD): BOOL; stdcall;
{$EXTERNALSYM WaitForDebugEvent}

function ContinueDebugEvent(dwProcessId: DWORD; dwThreadId: DWORD;
  dwContinueStatus: DWORD): BOOL; stdcall;
{$EXTERNALSYM ContinueDebugEvent}

function DebugActiveProcess(dwProcessId: DWORD): BOOL; stdcall;
{$EXTERNALSYM DebugActiveProcess}

function DebugActiveProcessStop(dwProcessId: DWORD): BOOL; stdcall;
{$EXTERNALSYM DebugActiveProcessStop}

function DebugSetProcessKillOnExit(KillOnExit: BOOL): BOOL; stdcall;
{$EXTERNALSYM DebugSetProcessKillOnExit}

function DebugBreakProcess(Process: HANDLE): BOOL; stdcall;
{$EXTERNALSYM DebugBreakProcess}

procedure InitializeCriticalSection(var lpCriticalSection: CRITICAL_SECTION); stdcall;
{$EXTERNALSYM InitializeCriticalSection}

procedure EnterCriticalSection(var lpCriticalSection: CRITICAL_SECTION); stdcall;
{$EXTERNALSYM EnterCriticalSection}

procedure LeaveCriticalSection(var lpCriticalSection: CRITICAL_SECTION); stdcall;
{$EXTERNALSYM LeaveCriticalSection}

function InitializeCriticalSectionAndSpinCount(var lpCriticalSection: CRITICAL_SECTION;
  dwSpinCount: DWORD): BOOL; stdcall;
{$EXTERNALSYM InitializeCriticalSectionAndSpinCount}

function SetCriticalSectionSpinCount(var lpCriticalSection: CRITICAL_SECTION;
  dwSpinCount: DWORD): DWORD; stdcall;
{$EXTERNALSYM SetCriticalSectionSpinCount}

function TryEnterCriticalSection(var lpCriticalSection: CRITICAL_SECTION): BOOL; stdcall;
{$EXTERNALSYM TryEnterCriticalSection}

procedure DeleteCriticalSection(var lpCriticalSection: CRITICAL_SECTION); stdcall;
{$EXTERNALSYM DeleteCriticalSection}

function SetEvent(hEvent: HANDLE): BOOL; stdcall;
{$EXTERNALSYM SetEvent}

function ResetEvent(hEvent: HANDLE): BOOL; stdcall;
{$EXTERNALSYM ResetEvent}

function PulseEvent(hEvent: HANDLE): BOOL; stdcall;
{$EXTERNALSYM PulseEvent}

function ReleaseSemaphore(hSemaphore: HANDLE; lReleaseCount: LONG;
  lpPreviousCount: LPLONG): BOOL; stdcall;
{$EXTERNALSYM ReleaseSemaphore}

function ReleaseMutex(hMutex: HANDLE): BOOL; stdcall;
{$EXTERNALSYM ReleaseMutex}

function WaitForSingleObject(hHandle: HANDLE; dwMilliseconds: DWORD): DWORD; stdcall;
{$EXTERNALSYM WaitForSingleObject}

function WaitForMultipleObjects(nCount: DWORD; lpHandles: PHANDLE; bWaitAll: BOOL;
  dwMilliseconds: DWORD): DWORD; stdcall;
{$EXTERNALSYM WaitForMultipleObjects}

procedure Sleep(dwMilliseconds: DWORD); stdcall;
{$EXTERNALSYM Sleep}

function LoadResource(hModule: HMODULE; hResInfo: HRSRC): HGLOBAL; stdcall;
{$EXTERNALSYM LoadResource}

function SizeofResource(hModule: HMODULE; hResInfo: HRSRC): DWORD; stdcall;
{$EXTERNALSYM SizeofResource}

function GlobalDeleteAtom(nAtom: ATOM): ATOM; stdcall;
{$EXTERNALSYM GlobalDeleteAtom}

function InitAtomTable(nSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM InitAtomTable}

function DeleteAtom(nAtom: ATOM): ATOM; stdcall;
{$EXTERNALSYM DeleteAtom}

function SetHandleCount(uNumber: UINT): UINT; stdcall;
{$EXTERNALSYM SetHandleCount}

function GetLogicalDrives: DWORD; stdcall;
{$EXTERNALSYM GetLogicalDrives}

function LockFile(hFile: HANDLE; dwFileOffsetLow: DWORD; dwFileOffsetHigh: DWORD;
  nNumberOfBytesToLockLow: DWORD; nNumberOfBytesToLockHigh: DWORD): BOOL; stdcall;
{$EXTERNALSYM LockFile}

function UnlockFile(hFile: HANDLE; dwFileOffsetLow: DWORD; dwFileOffsetHigh: DWORD;
  nNumberOfBytesToUnlockLow: DWORD; nNumberOfBytesToUnlockHigh: DWORD): BOOL; stdcall;
{$EXTERNALSYM UnlockFile}

function LockFileEx(hFile: HANDLE; dwFlags: DWORD; dwReserved: DWORD;
  nNumberOfBytesToLockLow: DWORD; nNumberOfBytesToLockHigh: DWORD;
  const lpOverlapped: OVERLAPPED): BOOL; stdcall;
{$EXTERNALSYM LockFileEx}

const
  LOCKFILE_FAIL_IMMEDIATELY = $00000001;
  {$EXTERNALSYM LOCKFILE_FAIL_IMMEDIATELY}
  LOCKFILE_EXCLUSIVE_LOCK   = $00000002;
  {$EXTERNALSYM LOCKFILE_EXCLUSIVE_LOCK}

function UnlockFileEx(hFile: HANDLE; dwReserved: DWORD;
  nNumberOfBytesToUnlockLow: DWORD; nNumberOfBytesToUnlockHigh: DWORD;
  const lpOverlapped: OVERLAPPED): BOOL; stdcall;
{$EXTERNALSYM UnlockFileEx}

type
  PBY_HANDLE_FILE_INFORMATION = ^BY_HANDLE_FILE_INFORMATION;
  {$EXTERNALSYM PBY_HANDLE_FILE_INFORMATION}
  _BY_HANDLE_FILE_INFORMATION = record
    dwFileAttributes: DWORD;
    ftCreationTime: FILETIME;
    ftLastAccessTime: FILETIME;
    ftLastWriteTime: FILETIME;
    dwVolumeSerialNumber: DWORD;
    nFileSizeHigh: DWORD;
    nFileSizeLow: DWORD;
    nNumberOfLinks: DWORD;
    nFileIndexHigh: DWORD;
    nFileIndexLow: DWORD;
  end;
  {$EXTERNALSYM _BY_HANDLE_FILE_INFORMATION}
  BY_HANDLE_FILE_INFORMATION = _BY_HANDLE_FILE_INFORMATION;
  {$EXTERNALSYM BY_HANDLE_FILE_INFORMATION}
  LPBY_HANDLE_FILE_INFORMATION = ^BY_HANDLE_FILE_INFORMATION;
  {$EXTERNALSYM LPBY_HANDLE_FILE_INFORMATION}
  TByHandleFileInformation = BY_HANDLE_FILE_INFORMATION;
  PByHandleFileInformation = PBY_HANDLE_FILE_INFORMATION;

function GetFileInformationByHandle(hFile: HANDLE;
  var lpFileInformation: BY_HANDLE_FILE_INFORMATION): BOOL; stdcall;
{$EXTERNALSYM GetFileInformationByHandle}

function GetFileType(hFile: HANDLE): DWORD; stdcall;
{$EXTERNALSYM GetFileType}

function GetFileSize(hFile: HANDLE; lpFileSizeHigh: LPDWORD): DWORD; stdcall;
{$EXTERNALSYM GetFileSize}

function GetFileSizeEx(hFile: HANDLE; var lpFileSize: LARGE_INTEGER): BOOL; stdcall;
{$EXTERNALSYM GetFileSizeEx}

function GetStdHandle(nStdHandle: DWORD): HANDLE; stdcall;
{$EXTERNALSYM GetStdHandle}

function SetStdHandle(nStdHandle: DWORD; hHandle: HANDLE): BOOL; stdcall;
{$EXTERNALSYM SetStdHandle}

function WriteFile(hFile: HANDLE; lpBuffer: LPCVOID; nNumberOfBytesToWrite: DWORD;
  lpNumberOfBytesWritten: LPDWORD; lpOverlapped: LPOVERLAPPED): BOOL; stdcall;
{$EXTERNALSYM WriteFile}

function ReadFile(hFile: HANDLE; lpBuffer: LPVOID; nNumberOfBytesToRead: DWORD;
  lpNumberOfBytesRead: LPDWORD; lpOverlapped: LPOVERLAPPED): BOOL; stdcall;
{$EXTERNALSYM ReadFile}

function FlushFileBuffers(hFile: HANDLE): BOOL; stdcall;
{$EXTERNALSYM FlushFileBuffers}

function DeviceIoControl(hDevice: HANDLE; dwIoControlCode: DWORD;
  lpInBuffer: LPVOID; nInBufferSize: DWORD; lpOutBuffer: LPVOID;
  nOutBufferSize: DWORD; lpBytesReturned: LPDWORD;
  lpOverlapped: LPOVERLAPPED): BOOL; stdcall;
{$EXTERNALSYM DeviceIoControl}

function RequestDeviceWakeup(hDevice: HANDLE): BOOL; stdcall;
{$EXTERNALSYM RequestDeviceWakeup}

function CancelDeviceWakeupRequest(hDevice: HANDLE): BOOL; stdcall;
{$EXTERNALSYM CancelDeviceWakeupRequest}

function GetDevicePowerState(hDevice: HANDLE; var pfOn: BOOL): BOOL; stdcall;
{$EXTERNALSYM GetDevicePowerState}

function SetMessageWaitingIndicator(hMsgIndicator: HANDLE; ulMsgCount: ULONG): BOOL; stdcall;
{$EXTERNALSYM SetMessageWaitingIndicator}

function SetEndOfFile(hFile: HANDLE): BOOL; stdcall;
{$EXTERNALSYM SetEndOfFile}

function SetFilePointer(hFile: HANDLE; lDistanceToMove: LONG;
  lpDistanceToMoveHigh: PLONG; dwMoveMethod: DWORD): DWORD; stdcall;
{$EXTERNALSYM SetFilePointer}

function SetFilePointerEx(hFile: HANDLE; liDistanceToMove: LARGE_INTEGER;
  lpNewFilePointer: PLARGE_INTEGER; dwMoveMethod: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetFilePointerEx}

function FindClose(hFindFile: HANDLE): BOOL; stdcall;
{$EXTERNALSYM FindClose}

function GetFileTime(hFile: HANDLE; lpCreationTime, lpLastAccessTime,
  lpLastWriteTime: PFILETIME): BOOL; stdcall;
{$EXTERNALSYM GetFileTime}

function SetFileTime(hFile: HANDLE; lpCreationTime, lpLastAccessTime,
  lpLastWriteTime: PFILETIME): BOOL; stdcall;
{$EXTERNALSYM SetFileTime}

function SetFileValidData(hFile: HANDLE; ValidDataLength: LONGLONG): BOOL; stdcall;
{$EXTERNALSYM SetFileValidData}

function SetFileShortNameA(hFile: HANDLE; lpShortName: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM SetFileShortNameA}
function SetFileShortNameW(hFile: HANDLE; lpShortName: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM SetFileShortNameW}
function SetFileShortName(hFile: HANDLE; lpShortName: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM SetFileShortName}

function CloseHandle(hObject: HANDLE): BOOL; stdcall;
{$EXTERNALSYM CloseHandle}

function DuplicateHandle(hSourceProcessHandle: HANDLE; hSourceHandle: HANDLE;
  hTargetProcessHandle: HANDLE; lpTargetHandle: LPHANDLE;
  dwDesiredAccess: DWORD; bInheritHandle: BOOL; dwOptions: DWORD): BOOL; stdcall;
{$EXTERNALSYM DuplicateHandle}

function GetHandleInformation(hObject: HANDLE; var lpdwFlags: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetHandleInformation}

function SetHandleInformation(hObject: HANDLE; dwMask: DWORD; dwFlags: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetHandleInformation}

const
  HANDLE_FLAG_INHERIT            = $00000001;
  {$EXTERNALSYM HANDLE_FLAG_INHERIT}
  HANDLE_FLAG_PROTECT_FROM_CLOSE = $00000002;
  {$EXTERNALSYM HANDLE_FLAG_PROTECT_FROM_CLOSE}

  HINSTANCE_ERROR                = 32;
  {$EXTERNALSYM HINSTANCE_ERROR}

function LoadModule(lpModuleName: LPCSTR; lpParameterBlock: LPVOID): DWORD; stdcall;
{$EXTERNALSYM LoadModule}

function WinExec(lpCmdLine: LPCSTR; uCmdShow: UINT): UINT; stdcall;
{$EXTERNALSYM WinExec}

function ClearCommBreak(hFile: HANDLE): BOOL; stdcall;
{$EXTERNALSYM ClearCommBreak}

function ClearCommError(hFile: HANDLE; var lpErrors: DWORD;
  lpStat: LPCOMSTAT): BOOL; stdcall;
{$EXTERNALSYM ClearCommError}

function SetupComm(hFile: HANDLE; dwInQueue: DWORD; dwOutQueue: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetupComm}

function EscapeCommFunction(hFile: HANDLE; dwFunc: DWORD): BOOL; stdcall;
{$EXTERNALSYM EscapeCommFunction}

function GetCommConfig(hCommDev: HANDLE; var lpCC: COMMCONFIG;
  var lpdwSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetCommConfig}

function GetCommMask(hFile: HANDLE; var lpEvtMask: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetCommMask}

function GetCommProperties(hFile: HANDLE; var lpCommProp: COMMPROP): BOOL; stdcall;
{$EXTERNALSYM GetCommProperties}

function GetCommModemStatus(hFile: HANDLE; var lpModemStat: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetCommModemStatus}

function GetCommState(hFile: HANDLE; var lpDCB: DCB): BOOL; stdcall;
{$EXTERNALSYM GetCommState}

function GetCommTimeouts(hFile: HANDLE; var lpCommTimeouts: COMMTIMEOUTS): BOOL; stdcall;
{$EXTERNALSYM GetCommTimeouts}

function PurgeComm(hFile: HANDLE; dwFlags: DWORD): BOOL; stdcall;
{$EXTERNALSYM PurgeComm}

function SetCommBreak(hFile: HANDLE): BOOL; stdcall;
{$EXTERNALSYM SetCommBreak}

function SetCommConfig(hCommDev: HANDLE; const lpCC: COMMCONFIG; dwSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetCommConfig}

function SetCommMask(hFile: HANDLE; dwEvtMask: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetCommMask}

function SetCommState(hFile: HANDLE; const lpDCB: DCB): BOOL; stdcall;
{$EXTERNALSYM SetCommState}

function SetCommTimeouts(hFile: HANDLE; const lpCommTimeouts: COMMTIMEOUTS): BOOL; stdcall;
{$EXTERNALSYM SetCommTimeouts}

function TransmitCommChar(hFile: HANDLE; cChar: AnsiChar): BOOL; stdcall;
{$EXTERNALSYM TransmitCommChar}

function WaitCommEvent(hFile: HANDLE; var lpEvtMask: DWORD;
  lpOverlapped: LPOVERLAPPED): BOOL; stdcall;
{$EXTERNALSYM WaitCommEvent}

function SetTapePosition(hDevice: HANDLE; dwPositionMethod, dwPartition,
  dwOffsetLow, dwOffsetHigh: DWORD; bImmediate: BOOL): DWORD; stdcall;
{$EXTERNALSYM SetTapePosition}

function GetTapePosition(hDevice: HANDLE; dwPositionType: DWORD;
  var lpdwPartition, lpdwOffsetLow: LPDWORD; lpdwOffsetHigh: LPDWORD): DWORD; stdcall;
{$EXTERNALSYM GetTapePosition}

function PrepareTape(hDevice: HANDLE; dwOperation: DWORD; bImmediate: BOOL): DWORD; stdcall;
{$EXTERNALSYM PrepareTape}

function EraseTape(hDevice: HANDLE; dwEraseType: DWORD; bImmediate: BOOL): DWORD; stdcall;
{$EXTERNALSYM EraseTape}

function CreateTapePartition(hDevice: HANDLE; dwPartitionMethod: DWORD;
  dwCount: DWORD; dwSize: DWORD): DWORD; stdcall;
{$EXTERNALSYM CreateTapePartition}

function WriteTapemark(hDevice: HANDLE; dwTapemarkType: DWORD;
  dwTapemarkCount: DWORD; bImmediate: BOOL): DWORD; stdcall;
{$EXTERNALSYM WriteTapemark}

function GetTapeStatus(hDevice: HANDLE): DWORD; stdcall;
{$EXTERNALSYM GetTapeStatus}

function GetTapeParameters(hDevice: HANDLE; dwOperation: DWORD;
  var lpdwSize: DWORD; lpTapeInformation: LPVOID): DWORD; stdcall;
{$EXTERNALSYM GetTapeParameters}

const
  GET_TAPE_MEDIA_INFORMATION = 0;
  {$EXTERNALSYM GET_TAPE_MEDIA_INFORMATION}
  GET_TAPE_DRIVE_INFORMATION = 1;
  {$EXTERNALSYM GET_TAPE_DRIVE_INFORMATION}

function SetTapeParameters(hDevice: HANDLE; dwOperation: DWORD; lpTapeInformation: LPVOID): DWORD; stdcall;
{$EXTERNALSYM SetTapeParameters}

const
  SET_TAPE_MEDIA_INFORMATION = 0;
  {$EXTERNALSYM SET_TAPE_MEDIA_INFORMATION}
  SET_TAPE_DRIVE_INFORMATION = 1;
  {$EXTERNALSYM SET_TAPE_DRIVE_INFORMATION}

function Beep(dwFreq: DWORD; dwDuration: DWORD): BOOL; stdcall;
{$EXTERNALSYM Beep}

function MulDiv(nNumber, nNumerator, nDenominator: Integer): Integer; stdcall;
{$EXTERNALSYM MulDiv}

procedure GetSystemTime(var lpSystemTime: SYSTEMTIME); stdcall;
{$EXTERNALSYM GetSystemTime}

procedure GetSystemTimeAsFileTime(var lpSystemTimeAsFileTime: FILETIME); stdcall;
{$EXTERNALSYM GetSystemTimeAsFileTime}

function SetSystemTime(var lpSystemTime: SYSTEMTIME): BOOL; stdcall;
{$EXTERNALSYM SetSystemTime}

procedure GetLocalTime(var lpSystemTime: SYSTEMTIME); stdcall;
{$EXTERNALSYM GetLocalTime}

function SetLocalTime(var lpSystemTime: SYSTEMTIME): BOOL; stdcall;
{$EXTERNALSYM SetLocalTime}

procedure GetSystemInfo(var lpSystemInfo: SYSTEM_INFO); stdcall;
{$EXTERNALSYM GetSystemInfo}

function GetSystemRegistryQuota(out pdwQuotaAllowed, pdwQuotaUsed: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetSystemRegistryQuota}

function GetSystemTimes(lpIdleTime, lpKernelTime, lpUserTime: LPFILETIME): BOOL; stdcall;
{$EXTERNALSYM GetSystemTimes}

procedure GetNativeSystemInfo(lpSystemInfo: LPSYSTEM_INFO); stdcall;
{$EXTERNALSYM GetNativeSystemInfo}

function IsProcessorFeaturePresent(ProcessorFeature: DWORD): BOOL; stdcall;
{$EXTERNALSYM IsProcessorFeaturePresent}

type
  PTIME_ZONE_INFORMATION = ^TIME_ZONE_INFORMATION;
  {$EXTERNALSYM PTIME_ZONE_INFORMATION}
  _TIME_ZONE_INFORMATION = record
    Bias: LONG;
    StandardName: array [0..31] of WCHAR;
    StandardDate: SYSTEMTIME;
    StandardBias: LONG;
    DaylightName: array [0..31] of WCHAR;
    DaylightDate: SYSTEMTIME;
    DaylightBias: LONG;
  end;
  {$EXTERNALSYM _TIME_ZONE_INFORMATION}
  TIME_ZONE_INFORMATION = _TIME_ZONE_INFORMATION;
  {$EXTERNALSYM TIME_ZONE_INFORMATION}
  LPTIME_ZONE_INFORMATION = ^TIME_ZONE_INFORMATION;
  {$EXTERNALSYM LPTIME_ZONE_INFORMATION}
  TTimeZoneInformation = TIME_ZONE_INFORMATION;
  PTimeZoneInformation = PTIME_ZONE_INFORMATION;

function SystemTimeToTzSpecificLocalTime(lpTimeZoneInformation: LPTIME_ZONE_INFORMATION;
  lpUniversalTime: SYSTEMTIME; var lpLocalTime: SYSTEMTIME): BOOL; stdcall;
{$EXTERNALSYM SystemTimeToTzSpecificLocalTime}

function TzSpecificLocalTimeToSystemTime(const lpTimeZoneInformation: TIME_ZONE_INFORMATION;
  const lpLocalTime: SYSTEMTIME; var lpUniversalTime: SYSTEMTIME): BOOL; stdcall;
{$EXTERNALSYM TzSpecificLocalTimeToSystemTime}

function GetTimeZoneInformation(var lpTimeZoneInformation: TIME_ZONE_INFORMATION): DWORD; stdcall;
{$EXTERNALSYM GetTimeZoneInformation}

function SetTimeZoneInformation(const lpTimeZoneInformation: TIME_ZONE_INFORMATION): BOOL; stdcall;
{$EXTERNALSYM SetTimeZoneInformation}

//
// Routines to convert back and forth between system time and file time
//

function SystemTimeToFileTime(const lpSystemTime: SYSTEMTIME; var lpFileTime: FILETIME): BOOL; stdcall;
{$EXTERNALSYM SystemTimeToFileTime}

function FileTimeToLocalFileTime(const lpFileTime: FILETIME; var lpLocalFileTime: FILETIME): BOOL; stdcall;
{$EXTERNALSYM FileTimeToLocalFileTime}

function LocalFileTimeToFileTime(const lpLocalFileTime: FILETIME; var lpFileTime: FILETIME): BOOL; stdcall;
{$EXTERNALSYM LocalFileTimeToFileTime}

function FileTimeToSystemTime(const lpFileTime: FILETIME; var lpSystemTime: SYSTEMTIME): BOOL; stdcall;
{$EXTERNALSYM FileTimeToSystemTime}

function CompareFileTime(const lpFileTime1, lpFileTime2: FILETIME): LONG; stdcall;
{$EXTERNALSYM CompareFileTime}

function FileTimeToDosDateTime(const lpFileTime: FILETIME; var lpFatDate,
  lpFatTime: WORD): BOOL; stdcall;
{$EXTERNALSYM FileTimeToDosDateTime}

function DosDateTimeToFileTime(wFatDate, wFatTime: WORD; var lpFileTime: FILETIME): BOOL; stdcall;
{$EXTERNALSYM DosDateTimeToFileTime}

function GetTickCount: DWORD; stdcall;
{$EXTERNALSYM GetTickCount}

function SetSystemTimeAdjustment(dwTimeAdjustment: DWORD;
  bTimeAdjustmentDisabled: BOOL): BOOL; stdcall;
{$EXTERNALSYM SetSystemTimeAdjustment}

function GetSystemTimeAdjustment(var lpTimeAdjustment, lpTimeIncrement: DWORD;
  var lpTimeAdjustmentDisabled: BOOL): BOOL; stdcall;
{$EXTERNALSYM GetSystemTimeAdjustment}

function FormatMessageA(dwFlags: DWORD; lpSource: LPCVOID; dwMessageId: DWORD;
  dwLanguageId: DWORD; lpBuffer: LPSTR; nSize: DWORD; Arguments: Pointer): DWORD; stdcall;
{$EXTERNALSYM FormatMessageA}
function FormatMessageW(dwFlags: DWORD; lpSource: LPCVOID; dwMessageId: DWORD;
  dwLanguageId: DWORD; lpBuffer: LPWSTR; nSize: DWORD; Arguments: Pointer): DWORD; stdcall;
{$EXTERNALSYM FormatMessageW}
function FormatMessage(dwFlags: DWORD; lpSource: LPCVOID; dwMessageId: DWORD;
  dwLanguageId: DWORD; lpBuffer: LPTSTR; nSize: DWORD; Arguments: Pointer): DWORD; stdcall;
{$EXTERNALSYM FormatMessage}

const
  FORMAT_MESSAGE_ALLOCATE_BUFFER = $00000100;
  {$EXTERNALSYM FORMAT_MESSAGE_ALLOCATE_BUFFER}
  FORMAT_MESSAGE_IGNORE_INSERTS  = $00000200;
  {$EXTERNALSYM FORMAT_MESSAGE_IGNORE_INSERTS}
  FORMAT_MESSAGE_FROM_STRING     = $00000400;
  {$EXTERNALSYM FORMAT_MESSAGE_FROM_STRING}
  FORMAT_MESSAGE_FROM_HMODULE    = $00000800;
  {$EXTERNALSYM FORMAT_MESSAGE_FROM_HMODULE}
  FORMAT_MESSAGE_FROM_SYSTEM     = $00001000;
  {$EXTERNALSYM FORMAT_MESSAGE_FROM_SYSTEM}
  FORMAT_MESSAGE_ARGUMENT_ARRAY  = $00002000;
  {$EXTERNALSYM FORMAT_MESSAGE_ARGUMENT_ARRAY}
  FORMAT_MESSAGE_MAX_WIDTH_MASK  = $000000FF;
  {$EXTERNALSYM FORMAT_MESSAGE_MAX_WIDTH_MASK}

function CreatePipe(var hReadPipe, hWritePipe: HANDLE;
  lpPipeAttributes: LPSECURITY_ATTRIBUTES; nSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM CreatePipe}

function ConnectNamedPipe(hNamedPipe: HANDLE; lpOverlapped: LPOVERLAPPED): BOOL; stdcall;
{$EXTERNALSYM ConnectNamedPipe}

function DisconnectNamedPipe(hNamedPipe: HANDLE): BOOL; stdcall;
{$EXTERNALSYM DisconnectNamedPipe}

function SetNamedPipeHandleState(hNamedPipe: HANDLE; lpMode: LPDWORD;
  lpMaxCollectionCount: LPDWORD; lpCollectDataTimeout: LPDWORD): BOOL; stdcall;
{$EXTERNALSYM SetNamedPipeHandleState}

function GetNamedPipeInfo(hNamedPipe: HANDLE; lpFlags, lpOutBufferSize,
  lpInBufferSize, lpMaxInstances: LPDWORD): BOOL; stdcall;
{$EXTERNALSYM GetNamedPipeInfo}

function PeekNamedPipe(hNamedPipe: HANDLE; lpBuffer: LPVOID; nBufferSize: DWORD;
  lpBytesRead, lpTotalBytesAvail, lpBytesLeftThisMessage: LPDWORD): BOOL; stdcall;
{$EXTERNALSYM PeekNamedPipe}

function TransactNamedPipe(hNamedPipe: HANDLE; lpInBuffer: LPVOID;
  nInBufferSize: DWORD; lpOutBuffer: LPVOID; nOutBufferSize: DWORD;
  lpBytesRead: LPDWORD; lpOverlapped: LPOVERLAPPED): BOOL; stdcall;
{$EXTERNALSYM TransactNamedPipe}

function CreateMailslotA(lpName: LPCSTR; nMaxMessageSize, lReadTimeout: DWORD;
  lpSecurityAttributes: LPSECURITY_ATTRIBUTES): HANDLE; stdcall;
{$EXTERNALSYM CreateMailslotA}
function CreateMailslotW(lpName: LPCWSTR; nMaxMessageSize, lReadTimeout: DWORD;
  lpSecurityAttributes: LPSECURITY_ATTRIBUTES): HANDLE; stdcall;
{$EXTERNALSYM CreateMailslotW}
function CreateMailslot(lpName: LPCTSTR; nMaxMessageSize, lReadTimeout: DWORD;
  lpSecurityAttributes: LPSECURITY_ATTRIBUTES): HANDLE; stdcall;
{$EXTERNALSYM CreateMailslot}

function GetMailslotInfo(hMailslot: HANDLE; lpMaxMessageSize, lpNextSize,
  lpMessageCount, lpReadTimeout: LPDWORD): BOOL; stdcall;
{$EXTERNALSYM GetMailslotInfo}

function SetMailslotInfo(hMailslot: HANDLE; lReadTimeout: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetMailslotInfo}

function MapViewOfFile(hFileMappingObject: HANDLE; dwDesiredAccess: DWORD;
  dwFileOffsetHigh, dwFileOffsetLow: DWORD; dwNumberOfBytesToMap: SIZE_T): LPVOID; stdcall;
{$EXTERNALSYM MapViewOfFile}

function FlushViewOfFile(lpBaseAddress: LPCVOID; dwNumberOfBytesToFlush: SIZE_T): BOOL; stdcall;
{$EXTERNALSYM FlushViewOfFile}

function UnmapViewOfFile(lpBaseAddress: LPCVOID): BOOL; stdcall;
{$EXTERNALSYM UnmapViewOfFile}

//
// File Encryption API
//

function EncryptFileA(lpFileName: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM EncryptFileA}
function EncryptFileW(lpFileName: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM EncryptFileW}
function EncryptFile(lpFileName: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM EncryptFile}

function DecryptFileA(lpFileName: LPCSTR; dwReserved: DWORD): BOOL; stdcall;
{$EXTERNALSYM DecryptFileA}
function DecryptFileW(lpFileName: LPCWSTR; dwReserved: DWORD): BOOL; stdcall;
{$EXTERNALSYM DecryptFileW}
function DecryptFile(lpFileName: LPCTSTR; dwReserved: DWORD): BOOL; stdcall;
{$EXTERNALSYM DecryptFile}

//
//  Encryption Status Value
//

const
  FILE_ENCRYPTABLE        = 0;
  {$EXTERNALSYM FILE_ENCRYPTABLE}
  FILE_IS_ENCRYPTED       = 1;
  {$EXTERNALSYM FILE_IS_ENCRYPTED}
  FILE_SYSTEM_ATTR        = 2;
  {$EXTERNALSYM FILE_SYSTEM_ATTR}
  FILE_ROOT_DIR           = 3;
  {$EXTERNALSYM FILE_ROOT_DIR}
  FILE_SYSTEM_DIR         = 4;
  {$EXTERNALSYM FILE_SYSTEM_DIR}
  FILE_UNKNOWN            = 5;
  {$EXTERNALSYM FILE_UNKNOWN}
  FILE_SYSTEM_NOT_SUPPORT = 6;
  {$EXTERNALSYM FILE_SYSTEM_NOT_SUPPORT}
  FILE_USER_DISALLOWED    = 7;
  {$EXTERNALSYM FILE_USER_DISALLOWED}
  FILE_READ_ONLY          = 8;
  {$EXTERNALSYM FILE_READ_ONLY}
  FILE_DIR_DISALLOWED     = 9;
  {$EXTERNALSYM FILE_DIR_DISALLOWED}

function FileEncryptionStatusA(lpFileName: LPCSTR; var lpStatus: DWORD): BOOL; stdcall;
{$EXTERNALSYM FileEncryptionStatusA}
function FileEncryptionStatusW(lpFileName: LPCWSTR; var lpStatus: DWORD): BOOL; stdcall;
{$EXTERNALSYM FileEncryptionStatusW}
function FileEncryptionStatus(lpFileName: LPCTSTR; var lpStatus: DWORD): BOOL; stdcall;
{$EXTERNALSYM FileEncryptionStatus}

//
// Currently defined recovery flags
//

const
  EFS_USE_RECOVERY_KEYS = $1;
  {$EXTERNALSYM EFS_USE_RECOVERY_KEYS}

type
  PFE_EXPORT_FUNC = function(pbData: PBYTE; pvCallbackContext: PVOID;
    ulLength: ULONG): DWORD; stdcall;
  {$EXTERNALSYM PFE_EXPORT_FUNC}

  PFE_IMPORT_FUNC = function(pbData: PBYTE; pvCallbackContext: PVOID;
    ulLength: PULONG): DWORD; stdcall;
  {$EXTERNALSYM PFE_IMPORT_FUNC}

//
//  OpenRaw flag values
//

const
  CREATE_FOR_IMPORT = 1;
  {$EXTERNALSYM CREATE_FOR_IMPORT}
  CREATE_FOR_DIR    = 2;
  {$EXTERNALSYM CREATE_FOR_DIR}
  OVERWRITE_HIDDEN  = 4;
  {$EXTERNALSYM OVERWRITE_HIDDEN}

function OpenEncryptedFileRawA(lpFileName: LPCSTR; ulFlags: ULONG;
  pvContext: PVOID): DWORD; stdcall;
{$EXTERNALSYM OpenEncryptedFileRawA}
function OpenEncryptedFileRawW(lpFileName: LPCWSTR; ulFlags: ULONG;
  pvContext: PVOID): DWORD; stdcall;
{$EXTERNALSYM OpenEncryptedFileRawW}
function OpenEncryptedFileRaw(lpFileName: LPCTSTR; ulFlags: ULONG;
  pvContext: PVOID): DWORD; stdcall;
{$EXTERNALSYM OpenEncryptedFileRaw}

function ReadEncryptedFileRaw(pfExportCallback: PFE_EXPORT_FUNC;
  pvCallbackContext: PVOID; pvContext: PVOID): DWORD; stdcall;
{$EXTERNALSYM ReadEncryptedFileRaw}

function WriteEncryptedFileRaw(pfImportCallback: PFE_IMPORT_FUNC;
  pvCallbackContext: PVOID; pvContext: PVOID): DWORD; stdcall;
{$EXTERNALSYM WriteEncryptedFileRaw}

procedure CloseEncryptedFileRaw(pvContext: PVOID); stdcall;
{$EXTERNALSYM CloseEncryptedFileRaw}

//
// _l Compat Functions
//

function lstrcmpA(lpString1, lpString2: LPCSTR): Integer; stdcall;
{$EXTERNALSYM lstrcmpA}
function lstrcmpW(lpString1, lpString2: LPCWSTR): Integer; stdcall;
{$EXTERNALSYM lstrcmpW}
function lstrcmp(lpString1, lpString2: LPCTSTR): Integer; stdcall;
{$EXTERNALSYM lstrcmp}

function lstrcmpiA(lpString1, lpString2: LPCSTR): Integer; stdcall;
{$EXTERNALSYM lstrcmpiA}
function lstrcmpiW(lpString1, lpString2: LPCWSTR): Integer; stdcall;
{$EXTERNALSYM lstrcmpiW}
function lstrcmpi(lpString1, lpString2: LPCTSTR): Integer; stdcall;
{$EXTERNALSYM lstrcmpi}

function lstrcpynA(lpString1: LPSTR; lpString2: LPCSTR; iMaxLength: Integer): LPSTR; stdcall;
{$EXTERNALSYM lstrcpynA}
function lstrcpynW(lpString1: LPWSTR; lpString2: LPCWSTR; iMaxLength: Integer): LPWSTR; stdcall;
{$EXTERNALSYM lstrcpynW}
function lstrcpyn(lpString1: LPTSTR; lpString2: LPCTSTR; iMaxLength: Integer): LPTSTR; stdcall;
{$EXTERNALSYM lstrcpyn}

function lstrcpyA(lpString1: LPSTR; lpString2: LPCSTR): LPSTR; stdcall;
{$EXTERNALSYM lstrcpyA}
function lstrcpyW(lpString1: LPWSTR; lpString2: LPCWSTR): LPWSTR; stdcall;
{$EXTERNALSYM lstrcpyW}
function lstrcpy(lpString1: LPTSTR; lpString2: LPCTSTR): LPTSTR; stdcall;
{$EXTERNALSYM lstrcpy}

function lstrcatA(lpString1: LPSTR; lpString2: LPCSTR): LPSTR; stdcall;
{$EXTERNALSYM lstrcatA}
function lstrcatW(lpString1: LPWSTR; lpString2: LPCWSTR): LPWSTR; stdcall;
{$EXTERNALSYM lstrcatW}
function lstrcat(lpString1: LPTSTR; lpString2: LPCTSTR): LPTSTR; stdcall;
{$EXTERNALSYM lstrcat}

function lstrlenA(lpString: LPCSTR): Integer; stdcall;
{$EXTERNALSYM lstrlenA}
function lstrlenW(lpString: LPCWSTR): Integer; stdcall;
{$EXTERNALSYM lstrlenW}
function lstrlen(lpString: LPCTSTR): Integer; stdcall;
{$EXTERNALSYM lstrlen}

function OpenFile(lpFileName: LPCSTR; var lpReOpenBuff: OFSTRUCT; uStyle: UINT): HFILE; stdcall;
{$EXTERNALSYM OpenFile}

function _lopen(lpPathName: LPCSTR; iReadWrite: Integer): HFILE; stdcall;
{$EXTERNALSYM _lopen}

function _lcreat(lpPathName: LPCSTR; iAttribute: Integer): HFILE; stdcall;
{$EXTERNALSYM _lcreat}

function _lread(hFile: HFILE; lpBuffer: LPVOID; uBytes: UINT): UINT; stdcall;
{$EXTERNALSYM _lread}

function _lwrite(hFile: HFILE; lpBuffer: LPCSTR; uBytes: UINT): UINT; stdcall;
{$EXTERNALSYM _lwrite}

function _hread(hFile: HFILE; lpBuffer: LPVOID; lBytes: Longint): Longint; stdcall;
{$EXTERNALSYM _hread}

function _hwrite(hFile: HFILE; lpBuffer: LPCSTR; lBytes: Longint): Longint; stdcall;
{$EXTERNALSYM _hwrite}

function _lclose(hFile: HFILE): HFILE; stdcall;
{$EXTERNALSYM _lclose}

function _llseek(hFile: HFILE; lOffset: LONG; iOrigin: Integer): LONG; stdcall;
{$EXTERNALSYM _llseek}

function IsTextUnicode(lpBuffer: LPVOID; cb: Integer; lpi: LPINT): BOOL; stdcall;
{$EXTERNALSYM IsTextUnicode}

type
  PFLS_CALLBACK_FUNCTION = procedure(lpFlsData: PVOID); stdcall;
  {$EXTERNALSYM PFLS_CALLBACK_FUNCTION}
  TFlsCallbackFunction = PFLS_CALLBACK_FUNCTION;

const
  FLS_OUT_OF_INDEXES = DWORD($FFFFFFFF);
  {$EXTERNALSYM FLS_OUT_OF_INDEXES}

function FlsAlloc(lpCallback: PFLS_CALLBACK_FUNCTION): DWORD; stdcall;
{$EXTERNALSYM FlsAlloc}

function FlsGetValue(dwFlsIndex: DWORD): DWORD; stdcall;
{$EXTERNALSYM FlsGetValue}

function FlsSetValue(dwFlsIndex: DWORD; lpFlsData: PVOID): DWORD; stdcall;
{$EXTERNALSYM FlsSetValue}

function FlsFree(dwFlsIndex: DWORD): DWORD; stdcall;
{$EXTERNALSYM FlsFree}

const
  TLS_OUT_OF_INDEXES = DWORD($FFFFFFFF);
  {$EXTERNALSYM TLS_OUT_OF_INDEXES}

function TlsAlloc: DWORD; stdcall;
{$EXTERNALSYM TlsAlloc}

function TlsGetValue(dwTlsIndex: DWORD): LPVOID; stdcall;
{$EXTERNALSYM TlsGetValue}

function TlsSetValue(dwTlsIndex: DWORD; lpTlsValue: LPVOID): BOOL; stdcall;
{$EXTERNALSYM TlsSetValue}

function TlsFree(dwTlsIndex: DWORD): BOOL; stdcall;
{$EXTERNALSYM TlsFree}

type
  LPOVERLAPPED_COMPLETION_ROUTINE = procedure(dwErrorCode: DWORD;
    dwNumberOfBytesTransfered: DWORD; lpOverlapped: LPOVERLAPPED); stdcall;
  {$EXTERNALSYM LPOVERLAPPED_COMPLETION_ROUTINE}
  TOverlappedCompletionRoutine = LPOVERLAPPED_COMPLETION_ROUTINE;

function SleepEx(dwMilliseconds: DWORD; bAlertable: BOOL): DWORD; stdcall;
{$EXTERNALSYM SleepEx}

function WaitForSingleObjectEx(hHandle: HANDLE; dwMilliseconds: DWORD;
  bAlertable: BOOL): DWORD; stdcall;
{$EXTERNALSYM WaitForSingleObjectEx}

function WaitForMultipleObjectsEx(nCount: DWORD; lpHandles: PHANDLE;
  bWaitAll: BOOL; dwMilliseconds: DWORD; bAlertable: BOOL): DWORD; stdcall;
{$EXTERNALSYM WaitForMultipleObjectsEx}

function SignalObjectAndWait(hObjectToSignal: HANDLE; hObjectToWaitOn: HANDLE;
  dwMilliseconds: DWORD; bAlertable: BOOL): DWORD; stdcall;
{$EXTERNALSYM SignalObjectAndWait}

function ReadFileEx(hFile: HANDLE; lpBuffer: LPVOID; nNumberOfBytesToRead: DWORD;
  lpOverlapped: LPOVERLAPPED; lpCompletionRoutine: LPOVERLAPPED_COMPLETION_ROUTINE): BOOL; stdcall;
{$EXTERNALSYM ReadFileEx}

function WriteFileEx(hFile: HANDLE; lpBuffer: LPCVOID; nNumberOfBytesToWrite: DWORD;
  lpOverlapped: LPOVERLAPPED; lpCompletionRoutine: LPOVERLAPPED_COMPLETION_ROUTINE): BOOL; stdcall;
{$EXTERNALSYM WriteFileEx}

function BackupRead(hFile: HANDLE; lpBuffer: LPBYTE;
  nNumberOfBytesToRead: DWORD; var lpNumberOfBytesRead: DWORD;
  bAbort, bProcessSecurity: BOOL; var lpContext: LPVOID): BOOL; stdcall;
{$EXTERNALSYM BackupRead}

function BackupSeek(hFile: HANDLE; dwLowBytesToSeek, dwHighBytesToSeek: DWORD;
  var lpdwLowByteSeeked, lpdwHighByteSeeked: DWORD; var lpContext: LPVOID): BOOL; stdcall;
{$EXTERNALSYM BackupSeek}

function BackupWrite(hFile: HANDLE; lpBuffer: LPBYTE; nNumberOfBytesToWrite: DWORD;
  var lpNumberOfBytesWritten: DWORD; bAbort, bProcessSecurity: BOOL;
  var lpContext: LPVOID): BOOL; stdcall;
{$EXTERNALSYM BackupWrite}

//
//  Stream id structure
//

type
  LPWIN32_STREAM_ID = ^WIN32_STREAM_ID;
  {$EXTERNALSYM LPWIN32_STREAM_ID}
  _WIN32_STREAM_ID = record
    dwStreamId: DWORD;
    dwStreamAttributes: DWORD;
    Size: TLargeInteger;
    dwStreamNameSize: DWORD;
    cStreamName: array [0..ANYSIZE_ARRAY - 1] of WCHAR;
  end;
  {$EXTERNALSYM _WIN32_STREAM_ID}
  WIN32_STREAM_ID = _WIN32_STREAM_ID;
  {$EXTERNALSYM WIN32_STREAM_ID}
  TWin32StreamId = WIN32_STREAM_ID;
  PWin32StreamId = LPWIN32_STREAM_ID;

//
//  Stream Ids
//

const
  BACKUP_INVALID        = $00000000;
  {$EXTERNALSYM BACKUP_INVALID}
  BACKUP_DATA           = $00000001;
  {$EXTERNALSYM BACKUP_DATA}
  BACKUP_EA_DATA        = $00000002;
  {$EXTERNALSYM BACKUP_EA_DATA}
  BACKUP_SECURITY_DATA  = $00000003;
  {$EXTERNALSYM BACKUP_SECURITY_DATA}
  BACKUP_ALTERNATE_DATA = $00000004;
  {$EXTERNALSYM BACKUP_ALTERNATE_DATA}
  BACKUP_LINK           = $00000005;
  {$EXTERNALSYM BACKUP_LINK}
  BACKUP_PROPERTY_DATA  = $00000006;
  {$EXTERNALSYM BACKUP_PROPERTY_DATA}
  BACKUP_OBJECT_ID      = $00000007;
  {$EXTERNALSYM BACKUP_OBJECT_ID}
  BACKUP_REPARSE_DATA   = $00000008;
  {$EXTERNALSYM BACKUP_REPARSE_DATA}
  BACKUP_SPARSE_BLOCK   = $00000009;
  {$EXTERNALSYM BACKUP_SPARSE_BLOCK}

//
//  Stream Attributes
//

const
  STREAM_NORMAL_ATTRIBUTE    = $00000000;
  {$EXTERNALSYM STREAM_NORMAL_ATTRIBUTE}
  STREAM_MODIFIED_WHEN_READ  = $00000001;
  {$EXTERNALSYM STREAM_MODIFIED_WHEN_READ}
  STREAM_CONTAINS_SECURITY   = $00000002;
  {$EXTERNALSYM STREAM_CONTAINS_SECURITY}
  STREAM_CONTAINS_PROPERTIES = $00000004;
  {$EXTERNALSYM STREAM_CONTAINS_PROPERTIES}
  STREAM_SPARSE_ATTRIBUTE    = $00000008;
  {$EXTERNALSYM STREAM_SPARSE_ATTRIBUTE}

function ReadFileScatter(hFile: HANDLE; aSegmentArray: PFILE_SEGMENT_ELEMENT;
  nNumberOfBytesToRead: DWORD; lpReserved: LPDWORD; lpOverlapped: LPOVERLAPPED): BOOL; stdcall;
{$EXTERNALSYM ReadFileScatter}

function WriteFileGather(hFile: HANDLE; aSegmentArray: PFILE_SEGMENT_ELEMENT;
  nNumberOfBytesToWrite: DWORD; lpReserved: LPDWORD; lpOverlapped: LPOVERLAPPED): BOOL; stdcall;
{$EXTERNALSYM WriteFileGather}



//
// Extended process and thread attribute support
//
const
  {$EXTERNALSYM SHUTDOWN_NORETRY}
  PROC_THREAD_ATTRIBUTE_NUMBER    = $0000FFFF;
  {$EXTERNALSYM SHUTDOWN_NORETRY}
  PROC_THREAD_ATTRIBUTE_THREAD    = $00010000;  // Attribute may be used with thread creation
  {$EXTERNALSYM SHUTDOWN_NORETRY}
  PROC_THREAD_ATTRIBUTE_INPUT     = $00020000;  // Attribute is input only
  {$EXTERNALSYM SHUTDOWN_NORETRY}
  PROC_THREAD_ATTRIBUTE_ADDITIVE  = $00040000;  // Attribute may be "accumulated," e.g. bitmasks, counters, etc.

type
  {$EXTERNALSYM _PROC_THREAD_ATTRIBUTE_NUM}
  _PROC_THREAD_ATTRIBUTE_NUM = (
    {$EXTERNALSYM ProcThreadAttributeParentProcess}
    ProcThreadAttributeParentProcess{ = 0},
    {$EXTERNALSYM ProcThreadAttributeExtendedFlags}
    ProcThreadAttributeExtendedFlags,
    {$EXTERNALSYM ProcThreadAttributeHandleList}
    ProcThreadAttributeHandleList,
    {$EXTERNALSYM ProcThreadAttributeMax}
    ProcThreadAttributeMax);

  {$EXTERNALSYM PROC_THREAD_ATTRIBUTE_NUM}
  PROC_THREAD_ATTRIBUTE_NUM = ^_PROC_THREAD_ATTRIBUTE_NUM;
  TProcThreadAttributeNum = _PROC_THREAD_ATTRIBUTE_NUM;
  PProcThreadAttributeNum = ^TProcThreadAttributeNum;

  {Macro function}
  function ProcThreadAttributeValue(const Number : DWORD;
     Thread, Input, Additive : Boolean) : DWORD;
  {Macro function}
  function PROC_THREAD_ATTRIBUTE_PARENT_PROCESS : DWORD;
  {Macro function}
  function PROC_THREAD_ATTRIBUTE_EXTENDED_FLAGS : DWORD;
  {Macro function}
  function PROC_THREAD_ATTRIBUTE_HANDLE_LIST : DWORD;

type
  {$EXTERNALSYM _PROC_THREAD_ATTRIBUTE_LIST}
  _PROC_THREAD_ATTRIBUTE_LIST = record
  end;
  {$EXTERNALSYM PPROC_THREAD_ATTRIBUTE_LIST}
  PPROC_THREAD_ATTRIBUTE_LIST = ^_PROC_THREAD_ATTRIBUTE_LIST;
  {$EXTERNALSYM LPPROC_THREAD_ATTRIBUTE_LIST}
  LPPROC_THREAD_ATTRIBUTE_LIST = PPROC_THREAD_ATTRIBUTE_LIST;

  TProcThreadAttributeList = _PROC_THREAD_ATTRIBUTE_LIST;
  PProcThreadAttributeList = PPROC_THREAD_ATTRIBUTE_LIST;

  {$EXTERNALSYM InitializeProcThreadAttributeList}
  function InitializeProcThreadAttributeList(
    {__out_xcount_opt(*lpSize)} lpAttributeList : LPPROC_THREAD_ATTRIBUTE_LIST;
    {__in} dwAttributeCount : DWORD;
    {__in __reserved} dwFlags : DWORD;
    {__inout} var lpSize : SIZE_T
    ) : BOOL; stdcall;

  {$EXTERNALSYM DeleteProcThreadAttributeList}
  procedure DeleteProcThreadAttributeList(
    {__inout} lpAttributeList : LPPROC_THREAD_ATTRIBUTE_LIST
    ); stdcall;

const
  {$EXTERNALSYM PROC_THREAD_ATTRIBUTE_REPLACE_VALUE}
  PROC_THREAD_ATTRIBUTE_REPLACE_VALUE     = $00000001;

  {$EXTERNALSYM UpdateProcThreadAttribute}
  function UpdateProcThreadAttribute(
    {__inout} lpAttributeList : LPPROC_THREAD_ATTRIBUTE_LIST;
    {__in} dwFlags : DWORD;
    {__in} Attribute : DWORD_PTR;
    {__in_bcount_opt(cbSize)} lpValue : PVOID;
    {__in} cbSize : SIZE_T;
    {__out_bcount_opt(cbSize)} lpPreviousValue : PVOID;
    {__in_opt} lpReturnSize : PSIZE_T
    ) : BOOL; stdcall;




//
// Dual Mode API below this line. Dual Mode Structures also included.
//

const
  STARTF_USESHOWWINDOW    = $00000001;
  {$EXTERNALSYM STARTF_USESHOWWINDOW}
  STARTF_USESIZE          = $00000002;
  {$EXTERNALSYM STARTF_USESIZE}
  STARTF_USEPOSITION      = $00000004;
  {$EXTERNALSYM STARTF_USEPOSITION}
  STARTF_USECOUNTCHARS    = $00000008;
  {$EXTERNALSYM STARTF_USECOUNTCHARS}
  STARTF_USEFILLATTRIBUTE = $00000010;
  {$EXTERNALSYM STARTF_USEFILLATTRIBUTE}
  STARTF_RUNFULLSCREEN    = $00000020; // ignored for non-x86 platforms
  {$EXTERNALSYM STARTF_RUNFULLSCREEN}
  STARTF_FORCEONFEEDBACK  = $00000040;
  {$EXTERNALSYM STARTF_FORCEONFEEDBACK}
  STARTF_FORCEOFFFEEDBACK = $00000080;
  {$EXTERNALSYM STARTF_FORCEOFFFEEDBACK}
  STARTF_USESTDHANDLES    = $00000100;
  {$EXTERNALSYM STARTF_USESTDHANDLES}

  STARTF_USEHOTKEY = $00000200;
  {$EXTERNALSYM STARTF_USEHOTKEY}

type
  LPSTARTUPINFOA = ^STARTUPINFOA;
  {$EXTERNALSYM LPSTARTUPINFOA}
  _STARTUPINFOA = record
    cb: DWORD;
    lpReserved: LPSTR;
    lpDesktop: LPSTR;
    lpTitle: LPSTR;
    dwX: DWORD;
    dwY: DWORD;
    dwXSize: DWORD;
    dwYSize: DWORD;
    dwXCountChars: DWORD;
    dwYCountChars: DWORD;
    dwFillAttribute: DWORD;
    dwFlags: DWORD;
    wShowWindow: WORD;
    cbReserved2: WORD;
    lpReserved2: LPBYTE;
    hStdInput: HANDLE;
    hStdOutput: HANDLE;
    hStdError: HANDLE;
  end;
  {$EXTERNALSYM _STARTUPINFOA}
  STARTUPINFOA = _STARTUPINFOA;
  {$EXTERNALSYM STARTUPINFOA}
  TStartupInfoA = STARTUPINFOA;
  PStartupInfoA = LPSTARTUPINFOA;

  LPSTARTUPINFOW = ^STARTUPINFOW;
  {$EXTERNALSYM LPSTARTUPINFOW}
  _STARTUPINFOW = record
    cb: DWORD;
    lpReserved: LPWSTR;
    lpDesktop: LPWSTR;
    lpTitle: LPWSTR;
    dwX: DWORD;
    dwY: DWORD;
    dwXSize: DWORD;
    dwYSize: DWORD;
    dwXCountChars: DWORD;
    dwYCountChars: DWORD;
    dwFillAttribute: DWORD;
    dwFlags: DWORD;
    wShowWindow: WORD;
    cbReserved2: WORD;
    lpReserved2: LPBYTE;
    hStdInput: HANDLE;
    hStdOutput: HANDLE;
    hStdError: HANDLE;
  end;
  {$EXTERNALSYM _STARTUPINFOW}
  STARTUPINFOW = _STARTUPINFOW;
  {$EXTERNALSYM STARTUPINFOW}
  TStartupInfoW = STARTUPINFOW;
  PStartupInfoW = LPSTARTUPINFOW;

  {$EXTERNALSYM _STARTUPINFOEXA}
  _STARTUPINFOEXA = record
    StartupInfo : STARTUPINFOA;
    lpAttributeList : PPROC_THREAD_ATTRIBUTE_LIST;
  end;
  {$EXTERNALSYM STARTUPINFOEXA}
  STARTUPINFOEXA = _STARTUPINFOEXA;
  {$EXTERNALSYM LPSTARTUPINFOEXA}
  LPSTARTUPINFOEXA = ^STARTUPINFOEXA;

  TStartupInfoExA = _STARTUPINFOEXA;
  PStartupInfoExA = LPSTARTUPINFOEXA;

  {$EXTERNALSYM _STARTUPINFOEXW}
  _STARTUPINFOEXW = record
    StartupInfo : STARTUPINFOW;
    lpAttributeList : PPROC_THREAD_ATTRIBUTE_LIST;
  end;
  {$EXTERNALSYM STARTUPINFOEXW}
  STARTUPINFOEXW = _STARTUPINFOEXW;
  {$EXTERNALSYM LPSTARTUPINFOEXW}
  LPSTARTUPINFOEXW = ^STARTUPINFOEXW;

  TStartupInfoExW = _STARTUPINFOEXW;
  PStartupInfoExW = LPSTARTUPINFOEXW;

{$IFDEF UNICODE}
  STARTUPINFO = STARTUPINFOW;
  {$EXTERNALSYM STARTUPINFO}
  LPSTARTUPINFO = LPSTARTUPINFOW;
  {$EXTERNALSYM LPSTARTUPINFO}
  TStartupInfo = TStartupInfoW;
  PStartupInfo = PStartupInfoW;

  {$EXTERNALSYM STARTUPINFOEX}
  STARTUPINFOEX = _STARTUPINFOEXW;
  {$EXTERNALSYM LPSTARTUPINFOEX}
  LPSTARTUPINFOEX = PStartupInfoExW;

  TStartupInfoEx = TStartupInfoExW;
  PStartupInfoEx = PStartupInfoExW;
{$ELSE}
  STARTUPINFO = STARTUPINFOA;
  {$EXTERNALSYM STARTUPINFO}
  LPSTARTUPINFO = LPSTARTUPINFOA;
  {$EXTERNALSYM LPSTARTUPINFO}
  TStartupInfo = TStartupInfoA;
  PStartupInfo = PStartupInfoA;

  {$EXTERNALSYM STARTUPINFOEX}
  STARTUPINFOEX = _STARTUPINFOEXA;
  {$EXTERNALSYM LPSTARTUPINFOEX}
  LPSTARTUPINFOEX = PStartupInfoExA;

  TStartupInfoEx = TStartupInfoExA;
  PStartupInfoEx = PStartupInfoExA;
{$ENDIF UNICODE}


const
  SHUTDOWN_NORETRY = $00000001;
  {$EXTERNALSYM SHUTDOWN_NORETRY}

type
  PWIN32_FIND_DATAA = ^WIN32_FIND_DATAA;
  {$EXTERNALSYM PWIN32_FIND_DATAA}
  _WIN32_FIND_DATAA = record
    dwFileAttributes: DWORD;
    ftCreationTime: FILETIME;
    ftLastAccessTime: FILETIME;
    ftLastWriteTime: FILETIME;
    nFileSizeHigh: DWORD;
    nFileSizeLow: DWORD;
    dwReserved0: DWORD;
    dwReserved1: DWORD;
    cFileName: array [0..MAX_PATH - 1] of AnsiChar;
    cAlternateFileName: array [0..13] of AnsiChar;
  end;
  {$EXTERNALSYM _WIN32_FIND_DATAA}
  WIN32_FIND_DATAA = _WIN32_FIND_DATAA;
  {$EXTERNALSYM WIN32_FIND_DATAA}
  LPWIN32_FIND_DATAA = ^WIN32_FIND_DATAA;
  {$EXTERNALSYM LPWIN32_FIND_DATAA}
  TWin32FindDataA = WIN32_FIND_DATAA;
  PWin32FindDataA = PWIN32_FIND_DATAA;

  PWIN32_FIND_DATAW = ^WIN32_FIND_DATAW;
  {$EXTERNALSYM PWIN32_FIND_DATAW}
  _WIN32_FIND_DATAW = record
    dwFileAttributes: DWORD;
    ftCreationTime: FILETIME;
    ftLastAccessTime: FILETIME;
    ftLastWriteTime: FILETIME;
    nFileSizeHigh: DWORD;
    nFileSizeLow: DWORD;
    dwReserved0: DWORD;
    dwReserved1: DWORD;
    cFileName: array [0..MAX_PATH - 1] of WCHAR;
    cAlternateFileName: array [0..13] of WCHAR;
  end;
  {$EXTERNALSYM _WIN32_FIND_DATAW}
  WIN32_FIND_DATAW = _WIN32_FIND_DATAW;
  {$EXTERNALSYM WIN32_FIND_DATAW}
  LPWIN32_FIND_DATAW = ^WIN32_FIND_DATAW;
  {$EXTERNALSYM LPWIN32_FIND_DATAW}
  TWin32FindDataW = WIN32_FIND_DATAW;
  PWin32FindDataW = PWIN32_FIND_DATAW;

  {$IFDEF UNICODE}
  WIN32_FIND_DATA = WIN32_FIND_DATAW;
  {$EXTERNALSYM WIN32_FIND_DATA}
  PWIN32_FIND_DATA = PWIN32_FIND_DATAW;
  {$EXTERNALSYM PWIN32_FIND_DATA}
  LPWIN32_FIND_DATA = LPWIN32_FIND_DATAW;
  {$EXTERNALSYM LPWIN32_FIND_DATA}
  TWin32FindData = TWin32FindDataW;
  PWin32FindData = PWin32FindDataW;
  {$ELSE}
  WIN32_FIND_DATA = WIN32_FIND_DATAA;
  {$EXTERNALSYM WIN32_FIND_DATA}
  PWIN32_FIND_DATA = PWIN32_FIND_DATAA;
  {$EXTERNALSYM PWIN32_FIND_DATA}
  LPWIN32_FIND_DATA = LPWIN32_FIND_DATAA;
  {$EXTERNALSYM LPWIN32_FIND_DATA}
  TWin32FindData = TWin32FindDataA;
  PWin32FindData = PWin32FindDataA;
  {$ENDIF UNICODE}

  LPWIN32_FILE_ATTRIBUTE_DATA = ^WIN32_FILE_ATTRIBUTE_DATA;
  {$EXTERNALSYM LPWIN32_FILE_ATTRIBUTE_DATA}
  _WIN32_FILE_ATTRIBUTE_DATA = record
    dwFileAttributes: DWORD;
    ftCreationTime: FILETIME;
    ftLastAccessTime: FILETIME;
    ftLastWriteTime: FILETIME;
    nFileSizeHigh: DWORD;
    nFileSizeLow: DWORD;
  end;
  {$EXTERNALSYM _WIN32_FILE_ATTRIBUTE_DATA}
  WIN32_FILE_ATTRIBUTE_DATA = _WIN32_FILE_ATTRIBUTE_DATA;
  {$EXTERNALSYM WIN32_FILE_ATTRIBUTE_DATA}
  TWin32FileAttributeData = WIN32_FILE_ATTRIBUTE_DATA;
  PWin32FileAttributeData = LPWIN32_FILE_ATTRIBUTE_DATA;

function CreateMutexA(lpMutexAttributes: LPSECURITY_ATTRIBUTES; bInitialOwner: BOOL; lpName: LPCSTR): HANDLE;
{$EXTERNALSYM CreateMutexA}
function CreateMutexW(lpMutexAttributes: LPSECURITY_ATTRIBUTES; bInitialOwner: BOOL; lpName: LPCWSTR): HANDLE;
{$EXTERNALSYM CreateMutexW}
function CreateMutex(lpMutexAttributes: LPSECURITY_ATTRIBUTES;
  bInitialOwner: BOOL; lpName: LPCTSTR): HANDLE;
{$EXTERNALSYM CreateMutex}

function OpenMutexA(dwDesiredAccess: DWORD; bInheritHandle: BOOL; lpName: LPCSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenMutexA}
function OpenMutexW(dwDesiredAccess: DWORD; bInheritHandle: BOOL; lpName: LPCWSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenMutexW}
function OpenMutex(dwDesiredAccess: DWORD; bInheritHandle: BOOL; lpName: LPCTSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenMutex}

function CreateEventA(lpEventAttributes: LPSECURITY_ATTRIBUTES;
  bManualReset, bInitialState: BOOL; lpName: LPCSTR): HANDLE; stdcall;
{$EXTERNALSYM CreateEventA}
function CreateEventW(lpEventAttributes: LPSECURITY_ATTRIBUTES;
  bManualReset, bInitialState: BOOL; lpName: LPCWSTR): HANDLE; stdcall;
{$EXTERNALSYM CreateEventW}
function CreateEvent(lpEventAttributes: LPSECURITY_ATTRIBUTES;
  bManualReset, bInitialState: BOOL; lpName: LPCTSTR): HANDLE; stdcall;
{$EXTERNALSYM CreateEvent}

function OpenEventA(dwDesiredAccess: DWORD; bInheritHandle: BOOL; lpName: LPCSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenEventA}
function OpenEventW(dwDesiredAccess: DWORD; bInheritHandle: BOOL; lpName: LPCWSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenEventW}
function OpenEvent(dwDesiredAccess: DWORD; bInheritHandle: BOOL; lpName: LPCTSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenEvent}

function CreateSemaphoreA(lpSemaphoreAttributes: LPSECURITY_ATTRIBUTES;
  lInitialCount, lMaximumCount: LONG; lpName: LPCSTR): HANDLE; stdcall;
{$EXTERNALSYM CreateSemaphoreA}
function CreateSemaphoreW(lpSemaphoreAttributes: LPSECURITY_ATTRIBUTES;
  lInitialCount, lMaximumCount: LONG; lpName: LPCWSTR): HANDLE; stdcall;
{$EXTERNALSYM CreateSemaphoreW}
function CreateSemaphore(lpSemaphoreAttributes: LPSECURITY_ATTRIBUTES;
  lInitialCount, lMaximumCount: LONG; lpName: LPCTSTR): HANDLE; stdcall;
{$EXTERNALSYM CreateSemaphore}

function OpenSemaphoreA(dwDesiredAccess: DWORD; bInheritHandle: BOOL;
  lpName: LPCSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenSemaphoreA}
function OpenSemaphoreW(dwDesiredAccess: DWORD; bInheritHandle: BOOL;
  lpName: LPCWSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenSemaphoreW}
function OpenSemaphore(dwDesiredAccess: DWORD; bInheritHandle: BOOL;
  lpName: LPCTSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenSemaphore}

type
  PTIMERAPCROUTINE = procedure(lpArgToCompletionRoutine: LPVOID;
    dwTimerLowValue, dwTimerHighValue: DWORD); stdcall;
  {$EXTERNALSYM PTIMERAPCROUTINE}
  TTimerApcRoutine = PTIMERAPCROUTINE;

function CreateWaitableTimerA(lpTimerAttributes: LPSECURITY_ATTRIBUTES;
  bManualReset: BOOL; lpTimerName: LPCSTR): HANDLE; stdcall;
{$EXTERNALSYM CreateWaitableTimerA}
function CreateWaitableTimerW(lpTimerAttributes: LPSECURITY_ATTRIBUTES;
  bManualReset: BOOL; lpTimerName: LPCWSTR): HANDLE; stdcall;
{$EXTERNALSYM CreateWaitableTimerW}
function CreateWaitableTimer(lpTimerAttributes: LPSECURITY_ATTRIBUTES;
  bManualReset: BOOL; lpTimerName: LPCTSTR): HANDLE; stdcall;
{$EXTERNALSYM CreateWaitableTimer}

function OpenWaitableTimerA(dwDesiredAccess: DWORD; bInheritHandle: BOOL;
  lpTimerName: LPCSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenWaitableTimerA}
function OpenWaitableTimerW(dwDesiredAccess: DWORD; bInheritHandle: BOOL;
  lpTimerName: LPCWSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenWaitableTimerW}
function OpenWaitableTimer(dwDesiredAccess: DWORD; bInheritHandle: BOOL;
  lpTimerName: LPCTSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenWaitableTimer}

function SetWaitableTimer(hTimer: HANDLE; var lpDueTime: LARGE_INTEGER;
  lPeriod: LONG; pfnCompletionRoutine: PTIMERAPCROUTINE;
  lpArgToCompletionRoutine: LPVOID; fResume: BOOL): BOOL; stdcall;
{$EXTERNALSYM SetWaitableTimer}

function CancelWaitableTimer(hTimer: HANDLE): BOOL; stdcall;
{$EXTERNALSYM CancelWaitableTimer}

function CreateFileMappingA(hFile: HANDLE; lpFileMappingAttributes: LPSECURITY_ATTRIBUTES;
  flProtect, dwMaximumSizeHigh, dwMaximumSizeLow: DWORD; lpName: LPCSTR): HANDLE; stdcall;
{$EXTERNALSYM CreateFileMappingA}
function CreateFileMappingW(hFile: HANDLE; lpFileMappingAttributes: LPSECURITY_ATTRIBUTES;
  flProtect, dwMaximumSizeHigh, dwMaximumSizeLow: DWORD; lpName: LPCWSTR): HANDLE; stdcall;
{$EXTERNALSYM CreateFileMappingW}
function CreateFileMapping(hFile: HANDLE; lpFileMappingAttributes: LPSECURITY_ATTRIBUTES;
  flProtect, dwMaximumSizeHigh, dwMaximumSizeLow: DWORD; lpName: LPCTSTR): HANDLE; stdcall;
{$EXTERNALSYM CreateFileMapping}

function OpenFileMappingA(dwDesiredAccess: DWORD; bInheritHandle: BOOL;
  lpName: LPCSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenFileMappingA}
function OpenFileMappingW(dwDesiredAccess: DWORD; bInheritHandle: BOOL;
  lpName: LPCWSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenFileMappingW}
function OpenFileMapping(dwDesiredAccess: DWORD; bInheritHandle: BOOL;
  lpName: LPCTSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenFileMapping}

function GetLogicalDriveStringsA(nBufferLength: DWORD; lpBuffer: LPSTR): DWORD; stdcall;
{$EXTERNALSYM GetLogicalDriveStringsA}
function GetLogicalDriveStringsW(nBufferLength: DWORD; lpBuffer: LPWSTR): DWORD; stdcall;
{$EXTERNALSYM GetLogicalDriveStringsW}
function GetLogicalDriveStrings(nBufferLength: DWORD; lpBuffer: LPTSTR): DWORD; stdcall;
{$EXTERNALSYM GetLogicalDriveStrings}

type
  _MEMORY_RESOURCE_NOTIFICATION_TYPE = (
    LowMemoryResourceNotification,
    HighMemoryResourceNotification);
  {$EXTERNALSYM _MEMORY_RESOURCE_NOTIFICATION_TYPE}
  MEMORY_RESOURCE_NOTIFICATION_TYPE = _MEMORY_RESOURCE_NOTIFICATION_TYPE;
  {$EXTERNALSYM MEMORY_RESOURCE_NOTIFICATION_TYPE}
  TMemoryResourceNotification = MEMORY_RESOURCE_NOTIFICATION_TYPE;

function CreateMemoryResourceNotification(NotificationType: MEMORY_RESOURCE_NOTIFICATION_TYPE): HANDLE; stdcall;
{$EXTERNALSYM CreateMemoryResourceNotification}

function QueryMemoryResourceNotification(ResourceNotificationHandle: HANDLE;
  ResourceState: BOOL): BOOL; stdcall;
{$EXTERNALSYM QueryMemoryResourceNotification}

function LoadLibraryA(lpLibFileName: LPCSTR): HMODULE; stdcall;
{$EXTERNALSYM LoadLibraryA}
function LoadLibraryW(lpLibFileName: LPCWSTR): HMODULE; stdcall;
{$EXTERNALSYM LoadLibraryW}
function LoadLibrary(lpLibFileName: LPCTSTR): HMODULE; stdcall;
{$EXTERNALSYM LoadLibrary}

function LoadLibraryExA(lpLibFileName: LPCSTR; hFile: HANDLE; dwFlags: DWORD): HMODULE; stdcall;
{$EXTERNALSYM LoadLibraryExA}
function LoadLibraryExW(lpLibFileName: LPCWSTR; hFile: HANDLE; dwFlags: DWORD): HMODULE; stdcall;
{$EXTERNALSYM LoadLibraryExW}
function LoadLibraryEx(lpLibFileName: LPCTSTR; hFile: HANDLE; dwFlags: DWORD): HMODULE; stdcall;
{$EXTERNALSYM LoadLibraryEx}

const
  DONT_RESOLVE_DLL_REFERENCES   = $00000001;
  {$EXTERNALSYM DONT_RESOLVE_DLL_REFERENCES}
  LOAD_LIBRARY_AS_DATAFILE      = $00000002;
  {$EXTERNALSYM LOAD_LIBRARY_AS_DATAFILE}
  LOAD_WITH_ALTERED_SEARCH_PATH = $00000008;
  {$EXTERNALSYM LOAD_WITH_ALTERED_SEARCH_PATH}
  LOAD_IGNORE_CODE_AUTHZ_LEVEL  = $00000010;
  {$EXTERNALSYM LOAD_IGNORE_CODE_AUTHZ_LEVEL}

function GetModuleFileNameA(hModule: HMODULE; lpFilename: LPSTR; nSize: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetModuleFileNameA}
function GetModuleFileNameW(hModule: HMODULE; lpFilename: LPWSTR; nSize: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetModuleFileNameW}
function GetModuleFileName(hModule: HMODULE; lpFilename: LPTSTR; nSize: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetModuleFileName}

function GetModuleHandleA(lpModuleName: LPCSTR): HMODULE; stdcall;
{$EXTERNALSYM GetModuleHandleA}
function GetModuleHandleW(lpModuleName: LPCWSTR): HMODULE; stdcall;
{$EXTERNALSYM GetModuleHandleW}
function GetModuleHandle(lpModuleName: LPCTSTR): HMODULE; stdcall;
{$EXTERNALSYM GetModuleHandle}

const
  GET_MODULE_HANDLE_EX_FLAG_PIN                = $00000001;
  {$EXTERNALSYM GET_MODULE_HANDLE_EX_FLAG_PIN}
  GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT = $00000002;
  {$EXTERNALSYM GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT}
  GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS       = $00000004;
  {$EXTERNALSYM GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS}

type
  PGET_MODULE_HANDLE_EXA = function(dwFlags: DWORD; lpModuleName: LPCSTR; var phModule: HMODULE): BOOL; stdcall;
  {$EXTERNALSYM PGET_MODULE_HANDLE_EXA}
  PGET_MODULE_HANDLE_EXW = function(dwFlags: DWORD; lpModuleName: LPCWSTR; var phModule: HMODULE): BOOL; stdcall;
  {$EXTERNALSYM PGET_MODULE_HANDLE_EXW}

  {$IFDEF UNICODE}
  PGET_MODULE_HANDLE_EX = PGET_MODULE_HANDLE_EXW;
  {$EXTERNALSYM PGET_MODULE_HANDLE_EX}
  {$ELSE}
  PGET_MODULE_HANDLE_EX = PGET_MODULE_HANDLE_EXA;
  {$EXTERNALSYM PGET_MODULE_HANDLE_EX}
  {$ENDIF UNICODE}

function GetModuleHandleExA(dwFlags: DWORD; lpModuleName: LPCSTR; var phModule: HMODULE): BOOL; stdcall;
{$EXTERNALSYM GetModuleHandleExA}
function GetModuleHandleExW(dwFlags: DWORD; lpModuleName: LPCWSTR; var phModule: HMODULE): BOOL; stdcall;
{$EXTERNALSYM GetModuleHandleExW}
function GetModuleHandleEx(dwFlags: DWORD; lpModuleName: LPCTSTR; var phModule: HMODULE): BOOL; stdcall;
{$EXTERNALSYM GetModuleHandleEx}

function NeedCurrentDirectoryForExePathA(ExeName: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM NeedCurrentDirectoryForExePathA}
function NeedCurrentDirectoryForExePathW(ExeName: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM NeedCurrentDirectoryForExePathW}
function NeedCurrentDirectoryForExePath(ExeName: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM NeedCurrentDirectoryForExePath}



function CreateProcessA(lpApplicationName: LPCSTR; lpCommandLine: LPSTR;
  lpProcessAttributes, lpThreadAttributes: LPSECURITY_ATTRIBUTES;
  bInheritHandles: BOOL; dwCreationFlags: DWORD; lpEnvironment: LPVOID;
  lpCurrentDirectory: LPCSTR; const lpStartupInfo: STARTUPINFOA;
  var lpProcessInformation: PROCESS_INFORMATION): BOOL; stdcall;
{$EXTERNALSYM CreateProcessA}
function CreateProcessW(lpApplicationName: LPCWSTR; lpCommandLine: LPWSTR;
  lpProcessAttributes, lpThreadAttributes: LPSECURITY_ATTRIBUTES;
  bInheritHandles: BOOL; dwCreationFlags: DWORD; lpEnvironment: LPVOID;
  lpCurrentDirectory: LPCWSTR; const lpStartupInfo: STARTUPINFOW;
  var lpProcessInformation: PROCESS_INFORMATION): BOOL; stdcall;
{$EXTERNALSYM CreateProcessW}
function CreateProcess(lpApplicationName: LPCTSTR; lpCommandLine: LPTSTR;
  lpProcessAttributes, lpThreadAttributes: LPSECURITY_ATTRIBUTES;
  bInheritHandles: BOOL; dwCreationFlags: DWORD; lpEnvironment: LPVOID;
  lpCurrentDirectory: LPCTSTR; const lpStartupInfo: STARTUPINFO;
  var lpProcessInformation: PROCESS_INFORMATION): BOOL; stdcall;
{$EXTERNALSYM CreateProcess}

function SetProcessShutdownParameters(dwLevel, dwFlags: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetProcessShutdownParameters}

function GetProcessShutdownParameters(var lpdwLevel, lpdwFlags: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetProcessShutdownParameters}

function GetProcessVersion(ProcessId: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetProcessVersion}

procedure FatalAppExitA(uAction: UINT; lpMessageText: LPCSTR); stdcall;
{$EXTERNALSYM FatalAppExitA}
procedure FatalAppExitW(uAction: UINT; lpMessageText: LPCWSTR); stdcall;
{$EXTERNALSYM FatalAppExitW}
procedure FatalAppExit(uAction: UINT; lpMessageText: LPCTSTR); stdcall;
{$EXTERNALSYM FatalAppExit}

procedure GetStartupInfoA(var lpStartupInfo: STARTUPINFOA); stdcall;
{$EXTERNALSYM GetStartupInfoA}
procedure GetStartupInfoW(var lpStartupInfo: STARTUPINFOW); stdcall;
{$EXTERNALSYM GetStartupInfoW}
procedure GetStartupInfo(var lpStartupInfo: STARTUPINFO); stdcall;
{$EXTERNALSYM GetStartupInfo}

function GetCommandLineA: LPSTR; stdcall;
{$EXTERNALSYM GetCommandLineA}
function GetCommandLineW: LPWSTR; stdcall;
{$EXTERNALSYM GetCommandLineW}
function GetCommandLine: LPTSTR; stdcall;
{$EXTERNALSYM GetCommandLine}

function GetEnvironmentVariableA(lpName: LPCSTR; lpBuffer: LPSTR; nSize: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetEnvironmentVariableA}
function GetEnvironmentVariableW(lpName: LPCWSTR; lpBuffer: LPWSTR; nSize: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetEnvironmentVariableW}
function GetEnvironmentVariable(lpName: LPCTSTR; lpBuffer: LPTSTR; nSize: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetEnvironmentVariable}

function SetEnvironmentVariableA(lpName, lpValue: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM SetEnvironmentVariableA}
function SetEnvironmentVariableW(lpName, lpValue: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM SetEnvironmentVariableW}
function SetEnvironmentVariable(lpName, lpValue: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM SetEnvironmentVariable}

function ExpandEnvironmentStringsA(lpSrc: LPCSTR; lpDst: LPSTR; nSize: DWORD): DWORD; stdcall;
{$EXTERNALSYM ExpandEnvironmentStringsA}
function ExpandEnvironmentStringsW(lpSrc: LPCWSTR; lpDst: LPWSTR; nSize: DWORD): DWORD; stdcall;
{$EXTERNALSYM ExpandEnvironmentStringsW}
function ExpandEnvironmentStrings(lpSrc: LPCTSTR; lpDst: LPTSTR; nSize: DWORD): DWORD; stdcall;
{$EXTERNALSYM ExpandEnvironmentStrings}

function GetFirmwareEnvironmentVariableA(lpName, lpGuid: LPCSTR; pBuffer: PVOID;
  nSize: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetFirmwareEnvironmentVariableA}
function GetFirmwareEnvironmentVariableW(lpName, lpGuid: LPCWSTR; pBuffer: PVOID;
  nSize: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetFirmwareEnvironmentVariableW}
function GetFirmwareEnvironmentVariable(lpName, lpGuid: LPCTSTR; pBuffer: PVOID;
  nSize: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetFirmwareEnvironmentVariable}

function SetFirmwareEnvironmentVariableA(lpName, lpGuid: LPCSTR; pValue: PVOID;
  nSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetFirmwareEnvironmentVariableA}
function SetFirmwareEnvironmentVariableW(lpName, lpGuid: LPCWSTR; pValue: PVOID;
  nSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetFirmwareEnvironmentVariableW}
function SetFirmwareEnvironmentVariable(lpName, lpGuid: LPCTSTR; pValue: PVOID;
  nSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetFirmwareEnvironmentVariable}

procedure OutputDebugStringA(lpOutputString: LPCSTR); stdcall;
{$EXTERNALSYM OutputDebugStringA}
procedure OutputDebugStringW(lpOutputString: LPCWSTR); stdcall;
{$EXTERNALSYM OutputDebugStringW}
procedure OutputDebugString(lpOutputString: LPCTSTR); stdcall;
{$EXTERNALSYM OutputDebugString}

function FindResourceA(hModule: HMODULE; lpName, lpType: LPCSTR): HRSRC; stdcall;
{$EXTERNALSYM FindResourceA}
function FindResourceW(hModule: HMODULE; lpName, lpType: LPCWSTR): HRSRC; stdcall;
{$EXTERNALSYM FindResourceW}
function FindResource(hModule: HMODULE; lpName, lpType: LPCTSTR): HRSRC; stdcall;
{$EXTERNALSYM FindResource}

function FindResourceExA(hModule: HMODULE; lpType, lpName: LPCSTR; wLanguage: WORD): HRSRC; stdcall;
{$EXTERNALSYM FindResourceExA}
function FindResourceExW(hModule: HMODULE; lpType, lpName: LPCWSTR; wLanguage: WORD): HRSRC; stdcall;
{$EXTERNALSYM FindResourceExW}
function FindResourceEx(hModule: HMODULE; lpType, lpName: LPCTSTR; wLanguage: WORD): HRSRC; stdcall;
{$EXTERNALSYM FindResourceEx}

type
  ENUMRESTYPEPROCA = function(hModule: HMODULE; lpType: LPSTR; lParam: LONG_PTR): BOOL; stdcall;
  {$EXTERNALSYM ENUMRESTYPEPROCA}
  ENUMRESTYPEPROCW = function(hModule: HMODULE; lpType: LPWSTR; lParam: LONG_PTR): BOOL; stdcall;
  {$EXTERNALSYM ENUMRESTYPEPROCW}
  ENUMRESTYPEPROC = function(hModule: HMODULE; lpType: LPTSTR; lParam: LONG_PTR): BOOL; stdcall;
  {$EXTERNALSYM ENUMRESTYPEPROC}
  TEnumResTypeProcA = ENUMRESTYPEPROCA;
  TEnumResTypeProcW = ENUMRESTYPEPROCW;
  TEnumResTypeProc = ENUMRESTYPEPROC;

  ENUMRESNAMEPROCA = function(hModule: HMODULE; lpType: LPCSTR; lpName: LPSTR;
    lParam: LONG_PTR): BOOL; stdcall;
  {$EXTERNALSYM ENUMRESNAMEPROCA}
  ENUMRESNAMEPROCW = function(hModule: HMODULE; lpType: LPCWSTR; lpName: LPWSTR;
    lParam: LONG_PTR): BOOL; stdcall;
  {$EXTERNALSYM ENUMRESNAMEPROCW}
  ENUMRESNAMEPROC = function(hModule: HMODULE; lpType: LPCTSTR; lpName: LPTSTR;
    lParam: LONG_PTR): BOOL; stdcall;
  {$EXTERNALSYM ENUMRESNAMEPROC}
  TEnumResNameProcA = ENUMRESNAMEPROCA;
  TEnumResNameProcW = ENUMRESNAMEPROCW;
  TEnumResNameProc = ENUMRESNAMEPROC;

  ENUMRESLANGPROCA = function(hModule: HMODULE; lpType, lpName: LPCSTR;
    wLanguage: WORD; lParam: LONG_PTR): BOOL; stdcall;
  {$EXTERNALSYM ENUMRESLANGPROCA}
  ENUMRESLANGPROCW = function(hModule: HMODULE; lpType, lpName: LPCWSTR;
    wLanguage: WORD; lParam: LONG_PTR): BOOL; stdcall;
  {$EXTERNALSYM ENUMRESLANGPROCW}
  ENUMRESLANGPROC = function(hModule: HMODULE; lpType, lpName: LPCTSTR;
    wLanguage: WORD; lParam: LONG_PTR): BOOL; stdcall;
  {$EXTERNALSYM ENUMRESLANGPROC}
  TEnumResLangProcA = ENUMRESLANGPROCA;
  TEnumResLangProcW = ENUMRESLANGPROCW;
  TEnumResLangProc = ENUMRESLANGPROC;

function EnumResourceTypesA(hModule: HMODULE; lpEnumFunc: ENUMRESTYPEPROCA;
  lParam: LONG_PTR): BOOL; stdcall;
{$EXTERNALSYM EnumResourceTypesA}
function EnumResourceTypesW(hModule: HMODULE; lpEnumFunc: ENUMRESTYPEPROCW;
  lParam: LONG_PTR): BOOL; stdcall;
{$EXTERNALSYM EnumResourceTypesW}
function EnumResourceTypes(hModule: HMODULE; lpEnumFunc: ENUMRESTYPEPROC;
  lParam: LONG_PTR): BOOL; stdcall;
{$EXTERNALSYM EnumResourceTypes}

function EnumResourceNamesA(hModule: HMODULE; lpType: LPCSTR;
  lpEnumFunc: ENUMRESNAMEPROCA; lParam: LONG_PTR): BOOL; stdcall;
{$EXTERNALSYM EnumResourceNamesA}
function EnumResourceNamesW(hModule: HMODULE; lpType: LPCWSTR;
  lpEnumFunc: ENUMRESNAMEPROCW; lParam: LONG_PTR): BOOL; stdcall;
{$EXTERNALSYM EnumResourceNamesW}
function EnumResourceNames(hModule: HMODULE; lpType: LPCTSTR;
  lpEnumFunc: ENUMRESNAMEPROC; lParam: LONG_PTR): BOOL; stdcall;
{$EXTERNALSYM EnumResourceNames}

function EnumResourceLanguagesA(hModule: HMODULE; lpType, lpName: LPCSTR;
  lpEnumFunc: ENUMRESLANGPROCA; lParam: LONG_PTR): BOOL; stdcall;
{$EXTERNALSYM EnumResourceLanguagesA}
function EnumResourceLanguagesW(hModule: HMODULE; lpType, lpName: LPCWSTR;
  lpEnumFunc: ENUMRESLANGPROCW; lParam: LONG_PTR): BOOL; stdcall;
{$EXTERNALSYM EnumResourceLanguagesW}
function EnumResourceLanguages(hModule: HMODULE; lpType, lpName: LPCTSTR;
  lpEnumFunc: ENUMRESLANGPROC; lParam: LONG_PTR): BOOL; stdcall;
{$EXTERNALSYM EnumResourceLanguages}

function BeginUpdateResourceA(pFileName: LPCSTR; bDeleteExistingResources: BOOL): HANDLE; stdcall;
{$EXTERNALSYM BeginUpdateResourceA}
function BeginUpdateResourceW(pFileName: LPCWSTR; bDeleteExistingResources: BOOL): HANDLE; stdcall;
{$EXTERNALSYM BeginUpdateResourceW}
function BeginUpdateResource(pFileName: LPCTSTR; bDeleteExistingResources: BOOL): HANDLE; stdcall;
{$EXTERNALSYM BeginUpdateResource}

function UpdateResourceA(hUpdate: HANDLE; lpType, lpName: LPCSTR;
  wLanguage: WORD; lpData: LPVOID; cbData: DWORD): BOOL; stdcall;
{$EXTERNALSYM UpdateResourceA}
function UpdateResourceW(hUpdate: HANDLE; lpType, lpName: LPCWSTR;
  wLanguage: WORD; lpData: LPVOID; cbData: DWORD): BOOL; stdcall;
{$EXTERNALSYM UpdateResourceW}
function UpdateResource(hUpdate: HANDLE; lpType, lpName: LPCTSTR;
  wLanguage: WORD; lpData: LPVOID; cbData: DWORD): BOOL; stdcall;
{$EXTERNALSYM UpdateResource}

function EndUpdateResourceA(hUpdate: HANDLE; fDiscard: BOOL): BOOL; stdcall;
{$EXTERNALSYM EndUpdateResourceA}
function EndUpdateResourceW(hUpdate: HANDLE; fDiscard: BOOL): BOOL; stdcall;
{$EXTERNALSYM EndUpdateResourceW}
function EndUpdateResource(hUpdate: HANDLE; fDiscard: BOOL): BOOL; stdcall;
{$EXTERNALSYM EndUpdateResource}

function GlobalAddAtomA(lpString: LPCSTR): ATOM; stdcall;
{$EXTERNALSYM GlobalAddAtomA}
function GlobalAddAtomW(lpString: LPCWSTR): ATOM; stdcall;
{$EXTERNALSYM GlobalAddAtomW}
function GlobalAddAtom(lpString: LPCTSTR): ATOM; stdcall;
{$EXTERNALSYM GlobalAddAtom}

function GlobalFindAtomA(lpString: LPCSTR): ATOM; stdcall;
{$EXTERNALSYM GlobalFindAtomA}
function GlobalFindAtomW(lpString: LPCWSTR): ATOM; stdcall;
{$EXTERNALSYM GlobalFindAtomW}
function GlobalFindAtom(lpString: LPCTSTR): ATOM; stdcall;
{$EXTERNALSYM GlobalFindAtom}

function GlobalGetAtomNameA(nAtom: ATOM; lpBuffer: LPSTR; nSize: Integer): UINT; stdcall;
{$EXTERNALSYM GlobalGetAtomNameA}
function GlobalGetAtomNameW(nAtom: ATOM; lpBuffer: LPWSTR; nSize: Integer): UINT; stdcall;
{$EXTERNALSYM GlobalGetAtomNameW}
function GlobalGetAtomName(nAtom: ATOM; lpBuffer: LPTSTR; nSize: Integer): UINT; stdcall;
{$EXTERNALSYM GlobalGetAtomName}

function AddAtomA(lpString: LPCSTR): ATOM; stdcall;
{$EXTERNALSYM AddAtomA}
function AddAtomW(lpString: LPCWSTR): ATOM; stdcall;
{$EXTERNALSYM AddAtomW}
function AddAtom(lpString: LPCTSTR): ATOM; stdcall;
{$EXTERNALSYM AddAtom}

function FindAtomA(lpString: LPCSTR): ATOM; stdcall;
{$EXTERNALSYM FindAtomA}
function FindAtomW(lpString: LPCWSTR): ATOM; stdcall;
{$EXTERNALSYM FindAtomW}
function FindAtom(lpString: LPCTSTR): ATOM; stdcall;
{$EXTERNALSYM FindAtom}

function GetAtomNameA(nAtom: ATOM; lpBuffer: LPSTR; nSize: Integer): UINT; stdcall;
{$EXTERNALSYM GetAtomNameA}
function GetAtomNameW(nAtom: ATOM; lpBuffer: LPWSTR; nSize: Integer): UINT; stdcall;
{$EXTERNALSYM GetAtomNameW}
function GetAtomName(nAtom: ATOM; lpBuffer: LPTSTR; nSize: Integer): UINT; stdcall;
{$EXTERNALSYM GetAtomName}

function GetProfileIntA(lpAppName, lpKeyName: LPCSTR; nDefault: Integer): UINT; stdcall;
{$EXTERNALSYM GetProfileIntA}
function GetProfileIntW(lpAppName, lpKeyName: LPCWSTR; nDefault: Integer): UINT; stdcall;
{$EXTERNALSYM GetProfileIntW}
function GetProfileInt(lpAppName, lpKeyName: LPCTSTR; nDefault: Integer): UINT; stdcall;
{$EXTERNALSYM GetProfileInt}

function GetProfileStringA(lpAppName, lpKeyName, lpDefault: LPCSTR;
  lpReturnedString: LPSTR; nSize: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetProfileStringA}
function GetProfileStringW(lpAppName, lpKeyName, lpDefault: LPCWSTR;
  lpReturnedString: LPWSTR; nSize: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetProfileStringW}
function GetProfileString(lpAppName, lpKeyName, lpDefault: LPCTSTR;
  lpReturnedString: LPTSTR; nSize: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetProfileString}

function WriteProfileStringA(lpAppName, lpKeyName, lpString: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM WriteProfileStringA}
function WriteProfileStringW(lpAppName, lpKeyName, lpString: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM WriteProfileStringW}
function WriteProfileString(lpAppName, lpKeyName, lpString: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM WriteProfileString}

function GetProfileSectionA(lpAppName: LPCSTR; lpReturnedString: LPSTR;
  nSize: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetProfileSectionA}
function GetProfileSectionW(lpAppName: LPCWSTR; lpReturnedString: LPWSTR;
  nSize: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetProfileSectionW}
function GetProfileSection(lpAppName: LPCTSTR; lpReturnedString: LPTSTR;
  nSize: DWORD): DWORD; stdcall;
{$EXTERNALSYM GetProfileSection}

function WriteProfileSectionA(lpAppName, lpString: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM WriteProfileSectionA}
function WriteProfileSectionW(lpAppName, lpString: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM WriteProfileSectionW}
function WriteProfileSection(lpAppName, lpString: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM WriteProfileSection}

function GetPrivateProfileIntA(lpAppName, lpKeyName: LPCSTR; nDefault: Integer;
  lpFileName: LPCSTR): UINT; stdcall;
{$EXTERNALSYM GetPrivateProfileIntA}
function GetPrivateProfileIntW(lpAppName, lpKeyName: LPCWSTR; nDefault: Integer;
  lpFileName: LPCWSTR): UINT; stdcall;
{$EXTERNALSYM GetPrivateProfileIntW}
function GetPrivateProfileInt(lpAppName, lpKeyName: LPCTSTR; nDefault: Integer;
  lpFileName: LPCTSTR): UINT; stdcall;
{$EXTERNALSYM GetPrivateProfileInt}

function GetPrivateProfileStringA(lpAppName, lpKeyName, lpDefault: LPCSTR;
  lpReturnedString: LPSTR; nSize: DWORD; lpFileName: LPCSTR): DWORD; stdcall;
{$EXTERNALSYM GetPrivateProfileStringA}
function GetPrivateProfileStringW(lpAppName, lpKeyName, lpDefault: LPCWSTR;
  lpReturnedString: LPWSTR; nSize: DWORD; lpFileName: LPCWSTR): DWORD; stdcall;
{$EXTERNALSYM GetPrivateProfileStringW}
function GetPrivateProfileString(lpAppName, lpKeyName, lpDefault: LPCTSTR;
  lpReturnedString: LPTSTR; nSize: DWORD; lpFileName: LPCTSTR): DWORD; stdcall;
{$EXTERNALSYM GetPrivateProfileString}

function WritePrivateProfileStringA(lpAppName, lpKeyName, lpString,
  lpFileName: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM WritePrivateProfileStringA}
function WritePrivateProfileStringW(lpAppName, lpKeyName, lpString,
  lpFileName: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM WritePrivateProfileStringW}
function WritePrivateProfileString(lpAppName, lpKeyName, lpString,
  lpFileName: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM WritePrivateProfileString}

function GetPrivateProfileSectionA(lpAppName: LPCSTR; lpReturnedString: LPSTR;
  nSize: DWORD; lpFileName: LPCSTR): DWORD; stdcall;
{$EXTERNALSYM GetPrivateProfileSectionA}
function GetPrivateProfileSectionW(lpAppName: LPCWSTR; lpReturnedString: LPWSTR;
  nSize: DWORD; lpFileName: LPCWSTR): DWORD; stdcall;
{$EXTERNALSYM GetPrivateProfileSectionW}
function GetPrivateProfileSection(lpAppName: LPCTSTR; lpReturnedString: LPTSTR;
  nSize: DWORD; lpFileName: LPCTSTR): DWORD; stdcall;
{$EXTERNALSYM GetPrivateProfileSection}

function WritePrivateProfileSectionA(lpAppName, lpString, lpFileName: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM WritePrivateProfileSectionA}
function WritePrivateProfileSectionW(lpAppName, lpString, lpFileName: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM WritePrivateProfileSectionW}
function WritePrivateProfileSection(lpAppName, lpString, lpFileName: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM WritePrivateProfileSection}

function GetPrivateProfileSectionNamesA(lpszReturnBuffer: LPSTR; nSize: DWORD;
  lpFileName: LPCSTR): DWORD; stdcall;
{$EXTERNALSYM GetPrivateProfileSectionNamesA}
function GetPrivateProfileSectionNamesW(lpszReturnBuffer: LPWSTR; nSize: DWORD;
  lpFileName: LPCWSTR): DWORD; stdcall;
{$EXTERNALSYM GetPrivateProfileSectionNamesW}
function GetPrivateProfileSectionNames(lpszReturnBuffer: LPTSTR; nSize: DWORD;
  lpFileName: LPCTSTR): DWORD; stdcall;
{$EXTERNALSYM GetPrivateProfileSectionNames}

function GetPrivateProfileStructA(lpszSection, lpszKey: LPCSTR; lpStruct: LPVOID;
  uSizeStruct: UINT; szFile: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM GetPrivateProfileStructA}
function GetPrivateProfileStructW(lpszSection, lpszKey: LPCWSTR; lpStruct: LPVOID;
  uSizeStruct: UINT; szFile: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM GetPrivateProfileStructW}
function GetPrivateProfileStruct(lpszSection, lpszKey: LPCTSTR; lpStruct: LPVOID;
  uSizeStruct: UINT; szFile: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM GetPrivateProfileStruct}

function WritePrivateProfileStructA(lpszSection, lpszKey: LPCSTR; lpStruct: LPVOID;
  uSizeStruct: UINT; szFile: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM WritePrivateProfileStructA}
function WritePrivateProfileStructW(lpszSection, lpszKey: LPCWSTR; lpStruct: LPVOID;
  uSizeStruct: UINT; szFile: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM WritePrivateProfileStructW}
function WritePrivateProfileStruct(lpszSection, lpszKey: LPCTSTR; lpStruct: LPVOID;
  uSizeStruct: UINT; szFile: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM WritePrivateProfileStruct}

function GetDriveTypeA(lpRootPathName: LPCSTR): UINT; stdcall;
{$EXTERNALSYM GetDriveTypeA}
function GetDriveTypeW(lpRootPathName: LPCWSTR): UINT; stdcall;
{$EXTERNALSYM GetDriveTypeW}
function GetDriveType(lpRootPathName: LPCTSTR): UINT; stdcall;
{$EXTERNALSYM GetDriveType}

function GetSystemDirectoryA(lpBuffer: LPSTR; uSize: UINT): UINT; stdcall;
{$EXTERNALSYM GetSystemDirectoryA}
function GetSystemDirectoryW(lpBuffer: LPWSTR; uSize: UINT): UINT; stdcall;
{$EXTERNALSYM GetSystemDirectoryW}
function GetSystemDirectory(lpBuffer: LPTSTR; uSize: UINT): UINT; stdcall;
{$EXTERNALSYM GetSystemDirectory}

function GetTempPathA(nBufferLength: DWORD; lpBuffer: LPSTR): DWORD; stdcall;
{$EXTERNALSYM GetTempPathA}
function GetTempPathW(nBufferLength: DWORD; lpBuffer: LPWSTR): DWORD; stdcall;
{$EXTERNALSYM GetTempPathW}
function GetTempPath(nBufferLength: DWORD; lpBuffer: LPTSTR): DWORD; stdcall;
{$EXTERNALSYM GetTempPath}

function GetTempFileNameA(lpPathName, lpPrefixString: LPCSTR; uUnique: UINT;
  lpTempFileName: LPSTR): UINT; stdcall;
{$EXTERNALSYM GetTempFileNameA}
function GetTempFileNameW(lpPathName, lpPrefixString: LPCWSTR; uUnique: UINT;
  lpTempFileName: LPWSTR): UINT; stdcall;
{$EXTERNALSYM GetTempFileNameW}
function GetTempFileName(lpPathName, lpPrefixString: LPCTSTR; uUnique: UINT;
  lpTempFileName: LPTSTR): UINT; stdcall;
{$EXTERNALSYM GetTempFileName}

function GetWindowsDirectoryA(lpBuffer: LPSTR; uSize: UINT): UINT; stdcall;
{$EXTERNALSYM GetWindowsDirectoryA}
function GetWindowsDirectoryW(lpBuffer: LPWSTR; uSize: UINT): UINT; stdcall;
{$EXTERNALSYM GetWindowsDirectoryW}
function GetWindowsDirectory(lpBuffer: LPTSTR; uSize: UINT): UINT; stdcall;
{$EXTERNALSYM GetWindowsDirectory}

function GetSystemWindowsDirectoryA(lpBuffer: LPSTR; uSize: UINT): UINT; stdcall;
{$EXTERNALSYM GetSystemWindowsDirectoryA}
function GetSystemWindowsDirectoryW(lpBuffer: LPWSTR; uSize: UINT): UINT; stdcall;
{$EXTERNALSYM GetSystemWindowsDirectoryW}
function GetSystemWindowsDirectory(lpBuffer: LPTSTR; uSize: UINT): UINT; stdcall;
{$EXTERNALSYM GetSystemWindowsDirectory}

function GetSystemWow64DirectoryA(lpBuffer: LPSTR; uSize: UINT): UINT; stdcall;
{$EXTERNALSYM GetSystemWow64DirectoryA}
function GetSystemWow64DirectoryW(lpBuffer: LPWSTR; uSize: UINT): UINT; stdcall;
{$EXTERNALSYM GetSystemWow64DirectoryW}
function GetSystemWow64Directory(lpBuffer: LPTSTR; uSize: UINT): UINT; stdcall;
{$EXTERNALSYM GetSystemWow64Directory}

function Wow64EnableWow64FsRedirection(Wow64FsEnableRedirection: BOOL): BOOL; stdcall;
{$EXTERNALSYM Wow64EnableWow64FsRedirection}
function Wow64DisableWow64FsRedirection(out OldValue: PVOID): BOOL; stdcall;
{$EXTERNALSYM Wow64DisableWow64FsRedirection}
function Wow64RevertWow64FsRedirection(const OldValue: PVOID): BOOL; stdcall;
{$EXTERNALSYM Wow64RevertWow64FsRedirection}


//
// for GetProcAddress
//

type
  PGET_SYSTEM_WOW64_DIRECTORY_A = function(lpBuffer: LPSTR; uSize: UINT): UINT; stdcall;
  {$EXTERNALSYM PGET_SYSTEM_WOW64_DIRECTORY_A}
  PGET_SYSTEM_WOW64_DIRECTORY_W = function(lpBuffer: LPWSTR; uSize: UINT): UINT; stdcall;
  {$EXTERNALSYM PGET_SYSTEM_WOW64_DIRECTORY_W}

//
// GetProcAddress only accepts GET_SYSTEM_WOW64_DIRECTORY_NAME_A_A,
// GET_SYSTEM_WOW64_DIRECTORY_NAME_W_A, GET_SYSTEM_WOW64_DIRECTORY_NAME_T_A.
// The others are if you want to use the strings in some other way.
//

const
  GET_SYSTEM_WOW64_DIRECTORY_NAME_A_A = 'GetSystemWow64DirectoryA';
  {$EXTERNALSYM GET_SYSTEM_WOW64_DIRECTORY_NAME_A_A}
  GET_SYSTEM_WOW64_DIRECTORY_NAME_A_W = WideString('GetSystemWow64DirectoryA');
  {$EXTERNALSYM GET_SYSTEM_WOW64_DIRECTORY_NAME_A_W}
  GET_SYSTEM_WOW64_DIRECTORY_NAME_A_T = __TEXT('GetSystemWow64DirectoryA');
  {$EXTERNALSYM GET_SYSTEM_WOW64_DIRECTORY_NAME_A_T}
  GET_SYSTEM_WOW64_DIRECTORY_NAME_W_A = 'GetSystemWow64DirectoryW';
  {$EXTERNALSYM GET_SYSTEM_WOW64_DIRECTORY_NAME_W_A}
  GET_SYSTEM_WOW64_DIRECTORY_NAME_W_W = WideString('GetSystemWow64DirectoryW');
  {$EXTERNALSYM GET_SYSTEM_WOW64_DIRECTORY_NAME_W_W}
  GET_SYSTEM_WOW64_DIRECTORY_NAME_W_T = __TEXT('GetSystemWow64DirectoryW');
  {$EXTERNALSYM GET_SYSTEM_WOW64_DIRECTORY_NAME_W_T}

  {$IFDEF UNICODE}
  GET_SYSTEM_WOW64_DIRECTORY_NAME_T_A = GET_SYSTEM_WOW64_DIRECTORY_NAME_W_A;
  {$EXTERNALSYM GET_SYSTEM_WOW64_DIRECTORY_NAME_T_A}
  GET_SYSTEM_WOW64_DIRECTORY_NAME_T_W = GET_SYSTEM_WOW64_DIRECTORY_NAME_W_W;
  {$EXTERNALSYM GET_SYSTEM_WOW64_DIRECTORY_NAME_T_W}
  GET_SYSTEM_WOW64_DIRECTORY_NAME_T_T = GET_SYSTEM_WOW64_DIRECTORY_NAME_W_T;
  {$EXTERNALSYM GET_SYSTEM_WOW64_DIRECTORY_NAME_T_T}
  {$ELSE}
  GET_SYSTEM_WOW64_DIRECTORY_NAME_T_A = GET_SYSTEM_WOW64_DIRECTORY_NAME_A_A;
  {$EXTERNALSYM GET_SYSTEM_WOW64_DIRECTORY_NAME_T_A}
  GET_SYSTEM_WOW64_DIRECTORY_NAME_T_W = GET_SYSTEM_WOW64_DIRECTORY_NAME_A_W;
  {$EXTERNALSYM GET_SYSTEM_WOW64_DIRECTORY_NAME_T_W}
  GET_SYSTEM_WOW64_DIRECTORY_NAME_T_T = GET_SYSTEM_WOW64_DIRECTORY_NAME_A_T;
  {$EXTERNALSYM GET_SYSTEM_WOW64_DIRECTORY_NAME_T_T}
  {$ENDIF UNICODE}

function SetCurrentDirectoryA(lpPathName: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM SetCurrentDirectoryA}
function SetCurrentDirectoryW(lpPathName: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM SetCurrentDirectoryW}
function SetCurrentDirectory(lpPathName: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM SetCurrentDirectory}

function GetCurrentDirectoryA(nBufferLength: DWORD; lpBuffer: LPSTR): DWORD; stdcall;
{$EXTERNALSYM GetCurrentDirectoryA}
function GetCurrentDirectoryW(nBufferLength: DWORD; lpBuffer: LPWSTR): DWORD; stdcall;
{$EXTERNALSYM GetCurrentDirectoryW}
function GetCurrentDirectory(nBufferLength: DWORD; lpBuffer: LPTSTR): DWORD; stdcall;
{$EXTERNALSYM GetCurrentDirectory}

//#if _WIN32_WINNT >= 0x0502

function SetDllDirectoryA(lpPathName: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM SetDllDirectoryA}
function SetDllDirectoryW(lpPathName: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM SetDllDirectoryW}
function SetDllDirectory(lpPathName: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM SetDllDirectory}

function GetDllDirectoryA(nBufferLength: DWORD; lpBuffer: LPSTR): DWORD; stdcall;
{$EXTERNALSYM GetDllDirectoryA}
function GetDllDirectoryW(nBufferLength: DWORD; lpBuffer: LPWSTR): DWORD; stdcall;
{$EXTERNALSYM GetDllDirectoryW}
function GetDllDirectory(nBufferLength: DWORD; lpBuffer: LPTSTR): DWORD; stdcall;
{$EXTERNALSYM GetDllDirectory}

//#endif // _WIN32_WINNT >= 0x0502

function GetDiskFreeSpaceA(lpRootPathName: LPCSTR; var lpSectorsPerCluster,
  lpBytesPerSector, lpNumberOfFreeClusters, lpTotalNumberOfClusters: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetDiskFreeSpaceA}
function GetDiskFreeSpaceW(lpRootPathName: LPCWSTR; var lpSectorsPerCluster,
  lpBytesPerSector, lpNumberOfFreeClusters, lpTotalNumberOfClusters: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetDiskFreeSpaceW}
function GetDiskFreeSpace(lpRootPathName: LPCTSTR; var lpSectorsPerCluster,
  lpBytesPerSector, lpNumberOfFreeClusters, lpTotalNumberOfClusters: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetDiskFreeSpace}

function GetDiskFreeSpaceExA(lpDirectoryName: LPCSTR; var lpFreeBytesAvailableToCaller,
  lpTotalNumberOfBytes: ULARGE_INTEGER; lpTotalNumberOfFreeBytes: PULARGE_INTEGER): BOOL; stdcall;
{$EXTERNALSYM GetDiskFreeSpaceExA}
function GetDiskFreeSpaceExW(lpDirectoryName: LPCWSTR; var lpFreeBytesAvailableToCaller,
  lpTotalNumberOfBytes: ULARGE_INTEGER; lpTotalNumberOfFreeBytes: PULARGE_INTEGER): BOOL; stdcall;
{$EXTERNALSYM GetDiskFreeSpaceExW}
function GetDiskFreeSpaceEx(lpDirectoryName: LPCTSTR; var lpFreeBytesAvailableToCaller,
  lpTotalNumberOfBytes: ULARGE_INTEGER; lpTotalNumberOfFreeBytes: PULARGE_INTEGER): BOOL; stdcall;
{$EXTERNALSYM GetDiskFreeSpaceEx}

function CreateDirectoryA(lpPathName: LPCSTR; lpSecurityAttributes: LPSECURITY_ATTRIBUTES): BOOL; stdcall;
{$EXTERNALSYM CreateDirectoryA}
function CreateDirectoryW(lpPathName: LPCWSTR; lpSecurityAttributes: LPSECURITY_ATTRIBUTES): BOOL; stdcall;
{$EXTERNALSYM CreateDirectoryW}
function CreateDirectory(lpPathName: LPCTSTR; lpSecurityAttributes: LPSECURITY_ATTRIBUTES): BOOL; stdcall;
{$EXTERNALSYM CreateDirectory}

function CreateDirectoryExA(lpTemplateDirectory: LPCSTR; lpNewDirectory: LPCSTR;
  lpSecurityAttributes: LPSECURITY_ATTRIBUTES): BOOL; stdcall;
{$EXTERNALSYM CreateDirectoryExA}
function CreateDirectoryExW(lpTemplateDirectory: LPCWSTR; lpNewDirectory: LPCWSTR;
  lpSecurityAttributes: LPSECURITY_ATTRIBUTES): BOOL; stdcall;
{$EXTERNALSYM CreateDirectoryExW}
function CreateDirectoryEx(lpTemplateDirectory: LPCTSTR; lpNewDirectory: LPCTSTR;
  lpSecurityAttributes: LPSECURITY_ATTRIBUTES): BOOL; stdcall;
{$EXTERNALSYM CreateDirectoryEx}

function RemoveDirectoryA(lpPathName: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM RemoveDirectoryA}
function RemoveDirectoryW(lpPathName: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM RemoveDirectoryW}
function RemoveDirectory(lpPathName: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM RemoveDirectory}

function GetFullPathNameA(lpFileName: LPCSTR; nBufferLength: DWORD;
  lpBuffer: LPSTR; var lpFilePart: LPSTR): DWORD; stdcall;
{$EXTERNALSYM GetFullPathNameA}
function GetFullPathNameW(lpFileName: LPCWSTR; nBufferLength: DWORD;
  lpBuffer: LPWSTR; var lpFilePart: LPWSTR): DWORD; stdcall;
{$EXTERNALSYM GetFullPathNameA}
function GetFullPathName(lpFileName: LPCTSTR; nBufferLength: DWORD;
  lpBuffer: LPTSTR; var lpFilePart: LPTSTR): DWORD; stdcall;
{$EXTERNALSYM GetFullPathName}

const
  DDD_RAW_TARGET_PATH       = $00000001;
  {$EXTERNALSYM DDD_RAW_TARGET_PATH}
  DDD_REMOVE_DEFINITION     = $00000002;
  {$EXTERNALSYM DDD_REMOVE_DEFINITION}
  DDD_EXACT_MATCH_ON_REMOVE = $00000004;
  {$EXTERNALSYM DDD_EXACT_MATCH_ON_REMOVE}
  DDD_NO_BROADCAST_SYSTEM   = $00000008;
  {$EXTERNALSYM DDD_NO_BROADCAST_SYSTEM}
  DDD_LUID_BROADCAST_DRIVE  = $00000010;
  {$EXTERNALSYM DDD_LUID_BROADCAST_DRIVE}

function DefineDosDeviceA(dwFlags: DWORD; lpDeviceName, lpTargetPath: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM DefineDosDeviceA}
function DefineDosDeviceW(dwFlags: DWORD; lpDeviceName, lpTargetPath: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM DefineDosDeviceW}
function DefineDosDevice(dwFlags: DWORD; lpDeviceName, lpTargetPath: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM DefineDosDevice}

function QueryDosDeviceA(lpDeviceName, lpTargetPath: LPSTR; ucchMax: DWORD): DWORD; stdcall;
{$EXTERNALSYM QueryDosDeviceA}
function QueryDosDeviceW(lpDeviceName, lpTargetPath: LPWSTR; ucchMax: DWORD): DWORD; stdcall;
{$EXTERNALSYM QueryDosDeviceW}
function QueryDosDevice(lpDeviceName, lpTargetPath: LPTSTR; ucchMax: DWORD): DWORD; stdcall;
{$EXTERNALSYM QueryDosDevice}

function CreateFileA(lpFileName: LPCSTR; dwDesiredAccess, dwShareMode: DWORD;
  lpSecurityAttributes: LPSECURITY_ATTRIBUTES; dwCreationDisposition: DWORD;
  dwFlagsAndAttributes: DWORD; hTemplateFile: HANDLE): HANDLE; stdcall;
{$EXTERNALSYM CreateFileA}
function CreateFileW(lpFileName: LPCWSTR; dwDesiredAccess, dwShareMode: DWORD;
  lpSecurityAttributes: LPSECURITY_ATTRIBUTES; dwCreationDisposition: DWORD;
  dwFlagsAndAttributes: DWORD; hTemplateFile: HANDLE): HANDLE; stdcall;
{$EXTERNALSYM CreateFileW}
function CreateFile(lpFileName: LPCTSTR; dwDesiredAccess, dwShareMode: DWORD;
  lpSecurityAttributes: LPSECURITY_ATTRIBUTES; dwCreationDisposition: DWORD;
  dwFlagsAndAttributes: DWORD; hTemplateFile: HANDLE): HANDLE; stdcall;
{$EXTERNALSYM CreateFile}

function ReOpenFile(hOriginalFile: HANDLE; dwDesiredAccess, dwShareMode, dwFlagsAndAttributes: DWORD): HANDLE; stdcall;
{$EXTERNALSYM ReOpenFile}

function SetFileAttributesA(lpFileName: LPCSTR; dwFileAttributes: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetFileAttributesA}
function SetFileAttributesW(lpFileName: LPCWSTR; dwFileAttributes: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetFileAttributesW}
function SetFileAttributes(lpFileName: LPCTSTR; dwFileAttributes: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetFileAttributes}

function GetFileAttributesA(lpFileName: LPCSTR): DWORD; stdcall;
{$EXTERNALSYM GetFileAttributesA}
function GetFileAttributesW(lpFileName: LPCWSTR): DWORD; stdcall;
{$EXTERNALSYM GetFileAttributesW}
function GetFileAttributes(lpFileName: LPCTSTR): DWORD; stdcall;
{$EXTERNALSYM GetFileAttributes}

type
  _GET_FILEEX_INFO_LEVELS = (GetFileExInfoStandard, GetFileExMaxInfoLevel);
  {$EXTERNALSYM _GET_FILEEX_INFO_LEVELS}
  GET_FILEEX_INFO_LEVELS = _GET_FILEEX_INFO_LEVELS;
  {$EXTERNALSYM GET_FILEEX_INFO_LEVELS}
  TGetFileExInfoLevels = GET_FILEEX_INFO_LEVELS;

function GetFileAttributesExA(lpFileName: LPCSTR;
  fInfoLevelId: GET_FILEEX_INFO_LEVELS; lpFileInformation: LPVOID): BOOL; stdcall;
{$EXTERNALSYM GetFileAttributesExA}
function GetFileAttributesExW(lpFileName: LPCWSTR;
  fInfoLevelId: GET_FILEEX_INFO_LEVELS; lpFileInformation: LPVOID): BOOL; stdcall;
{$EXTERNALSYM GetFileAttributesExW}
function GetFileAttributesEx(lpFileName: LPCTSTR;
  fInfoLevelId: GET_FILEEX_INFO_LEVELS; lpFileInformation: LPVOID): BOOL; stdcall;
{$EXTERNALSYM GetFileAttributesEx}

function GetCompressedFileSizeA(lpFileName: LPCSTR; lpFileSizeHigh: LPDWORD): DWORD; stdcall;
{$EXTERNALSYM GetCompressedFileSizeA}
function GetCompressedFileSizeW(lpFileName: LPCWSTR; lpFileSizeHigh: LPDWORD): DWORD; stdcall;
{$EXTERNALSYM GetCompressedFileSizeW}
function GetCompressedFileSize(lpFileName: LPCTSTR; lpFileSizeHigh: LPDWORD): DWORD; stdcall;
{$EXTERNALSYM GetCompressedFileSize}

function DeleteFileA(lpFileName: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM DeleteFileA}
function DeleteFileW(lpFileName: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM DeleteFileW}
function DeleteFile(lpFileName: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM DeleteFile}

(* todo
WINBASEAPI
BOOL
WINAPI
CheckNameLegalDOS8Dot3A(
    IN LPCSTR lpName,
    OUT LPSTR lpOemName OPTIONAL,
    IN DWORD OemNameSize OPTIONAL,
    OUT PBOOL pbNameContainsSpaces OPTIONAL,
    OUT PBOOL pbNameLegal
    );
WINBASEAPI
BOOL
WINAPI
CheckNameLegalDOS8Dot3W(
    IN LPCWSTR lpName,
    OUT LPSTR lpOemName OPTIONAL,
    IN DWORD OemNameSize OPTIONAL,
    OUT PBOOL pbNameContainsSpaces OPTIONAL,
    OUT PBOOL pbNameLegal
    );
#ifdef UNICODE
#define CheckNameLegalDOS8Dot3  CheckNameLegalDOS8Dot3W
#else
#define CheckNameLegalDOS8Dot3  CheckNameLegalDOS8Dot3A
#endif // !UNICODE
*)

type
  _FINDEX_INFO_LEVELS = (FindExInfoStandard, FindExInfoMaxInfoLevel);
  {$EXTERNALSYM _FINDEX_INFO_LEVELS}
  FINDEX_INFO_LEVELS = _FINDEX_INFO_LEVELS;
  {$EXTERNALSYM FINDEX_INFO_LEVELS}
  TFindExInfoLevels = FINDEX_INFO_LEVELS;

  _FINDEX_SEARCH_OPS = (
    FindExSearchNameMatch,
    FindExSearchLimitToDirectories,
    FindExSearchLimitToDevices,
    FindExSearchMaxSearchOp);
  {$EXTERNALSYM _FINDEX_SEARCH_OPS}
  FINDEX_SEARCH_OPS = _FINDEX_SEARCH_OPS;
  {$EXTERNALSYM FINDEX_SEARCH_OPS}
  TFindExSearchOps = FINDEX_SEARCH_OPS;

const
  FIND_FIRST_EX_CASE_SENSITIVE = $00000001;
  {$EXTERNALSYM FIND_FIRST_EX_CASE_SENSITIVE}

function FindFirstFileExA(lpFileName: LPCSTR; fInfoLevelId: FINDEX_INFO_LEVELS;
  lpFindFileData: LPVOID; fSearchOp: FINDEX_SEARCH_OPS; lpSearchFilter: LPVOID;
  dwAdditionalFlags: DWORD): HANDLE; stdcall;
{$EXTERNALSYM FindFirstFileExA}
function FindFirstFileExW(lpFileName: LPCWSTR; fInfoLevelId: FINDEX_INFO_LEVELS;
  lpFindFileData: LPVOID; fSearchOp: FINDEX_SEARCH_OPS; lpSearchFilter: LPVOID;
  dwAdditionalFlags: DWORD): HANDLE; stdcall;
{$EXTERNALSYM FindFirstFileExW}
function FindFirstFileEx(lpFileName: LPCTSTR; fInfoLevelId: FINDEX_INFO_LEVELS;
  lpFindFileData: LPVOID; fSearchOp: FINDEX_SEARCH_OPS; lpSearchFilter: LPVOID;
  dwAdditionalFlags: DWORD): HANDLE; stdcall;
{$EXTERNALSYM FindFirstFileEx}

function FindFirstFileA(lpFileName: LPCSTR; var lpFindFileData: WIN32_FIND_DATAA): HANDLE; stdcall;
{$EXTERNALSYM FindFirstFileA}
function FindFirstFileW(lpFileName: LPCWSTR; var lpFindFileData: WIN32_FIND_DATAW): HANDLE; stdcall;
{$EXTERNALSYM FindFirstFileW}
function FindFirstFile(lpFileName: LPCTSTR; var lpFindFileData: WIN32_FIND_DATA): HANDLE; stdcall;
{$EXTERNALSYM FindFirstFile}

function FindNextFileA(hFindFile: HANDLE; var FindFileData: WIN32_FIND_DATAA): BOOL; stdcall;
{$EXTERNALSYM FindNextFileA}
function FindNextFileW(hFindFile: HANDLE; var lpFindFileData: WIN32_FIND_DATAW): BOOL; stdcall;
{$EXTERNALSYM FindNextFileW}
function FindNextFile(hFindFile: HANDLE; var lpFindFileData: WIN32_FIND_DATA): BOOL; stdcall;
{$EXTERNALSYM FindNextFile}

function SearchPathA(lpPath, lpFileName, lpExtension: LPCSTR; nBufferLength: DWORD;
  lpBuffer: LPSTR; var lpFilePart: LPSTR): DWORD; stdcall;
{$EXTERNALSYM SearchPathA}
function SearchPathW(lpPath, lpFileName, lpExtension: LPCWSTR; nBufferLength: DWORD;
  lpBuffer: LPWSTR; var lpFilePart: LPWSTR): DWORD; stdcall;
{$EXTERNALSYM SearchPathW}
function SearchPath(lpPath, lpFileName, lpExtension: LPCTSTR; nBufferLength: DWORD;
  lpBuffer: LPTSTR; var lpFilePart: LPTSTR): DWORD; stdcall;
{$EXTERNALSYM SearchPath}

function CopyFileA(lpExistingFileName, lpNewFileName: LPCSTR; bFailIfExists: BOOL): BOOL; stdcall;
{$EXTERNALSYM CopyFileA}
function CopyFileW(lpExistingFileName, lpNewFileName: LPCWSTR; bFailIfExists: BOOL): BOOL; stdcall;
{$EXTERNALSYM CopyFileW}
function CopyFile(lpExistingFileName, lpNewFileName: LPCTSTR; bFailIfExists: BOOL): BOOL; stdcall;
{$EXTERNALSYM CopyFile}

type
  LPPROGRESS_ROUTINE = function(
    TotalFileSize: LARGE_INTEGER;
    TotalBytesTransferred: LARGE_INTEGER;
    StreamSize: LARGE_INTEGER;
    StreamBytesTransferred: LARGE_INTEGER;
    dwStreamNumber: DWORD;
    dwCallbackReason: DWORD;
    hSourceFile: HANDLE;
    hDestinationFile: HANDLE;
    lpData: LPVOID): DWORD; stdcall;
  {$EXTERNALSYM LPPROGRESS_ROUTINE}
  TProgressRoutine = LPPROGRESS_ROUTINE;

function CopyFileExA(lpExistingFileName, lpNewFileName: LPCSTR;
  lpProgressRoutine: LPPROGRESS_ROUTINE; lpData: LPVOID; var pbCancel: BOOL;
  dwCopyFlags: DWORD): BOOL; stdcall;
{$EXTERNALSYM CopyFileExA}
function CopyFileExW(lpExistingFileName, lpNewFileName: LPCWSTR;
  lpProgressRoutine: LPPROGRESS_ROUTINE; lpData: LPVOID; var pbCancel: BOOL;
  dwCopyFlags: DWORD): BOOL; stdcall;
{$EXTERNALSYM CopyFileExW}
function CopyFileEx(lpExistingFileName, lpNewFileName: LPCTSTR;
  lpProgressRoutine: LPPROGRESS_ROUTINE; lpData: LPVOID; var pbCancel: BOOL;
  dwCopyFlags: DWORD): BOOL; stdcall;
{$EXTERNALSYM CopyFileEx}

function MoveFileA(lpExistingFileName, lpNewFileName: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM MoveFileA}
function MoveFileW(lpExistingFileName, lpNewFileName: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM MoveFileW}
function MoveFile(lpExistingFileName, lpNewFileName: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM MoveFile}

function MoveFileExA(lpExistingFileName, lpNewFileName: LPCSTR; dwFlags: DWORD): BOOL; stdcall;
{$EXTERNALSYM MoveFileExA}
function MoveFileExW(lpExistingFileName, lpNewFileName: LPCWSTR; dwFlags: DWORD): BOOL; stdcall;
{$EXTERNALSYM MoveFileExW}
function MoveFileEx(lpExistingFileName, lpNewFileName: LPCTSTR; dwFlags: DWORD): BOOL; stdcall;
{$EXTERNALSYM MoveFileEx}

function MoveFileWithProgressA(lpExistingFileName, lpNewFileName: LPCSTR;
  lpProgressRoutine: LPPROGRESS_ROUTINE; lpData: LPVOID; dwFlags: DWORD): BOOL; stdcall;
{$EXTERNALSYM MoveFileWithProgressA}
function MoveFileWithProgressW(lpExistingFileName, lpNewFileName: LPCWSTR;
  lpProgressRoutine: LPPROGRESS_ROUTINE; lpData: LPVOID; dwFlags: DWORD): BOOL; stdcall;
{$EXTERNALSYM MoveFileWithProgressW}
function MoveFileWithProgress(lpExistingFileName, lpNewFileName: LPCTSTR;
  lpProgressRoutine: LPPROGRESS_ROUTINE; lpData: LPVOID; dwFlags: DWORD): BOOL; stdcall;
{$EXTERNALSYM MoveFileWithProgress}

const
  MOVEFILE_REPLACE_EXISTING      = $00000001;
  {$EXTERNALSYM MOVEFILE_REPLACE_EXISTING}
  MOVEFILE_COPY_ALLOWED          = $00000002;
  {$EXTERNALSYM MOVEFILE_COPY_ALLOWED}
  MOVEFILE_DELAY_UNTIL_REBOOT    = $00000004;
  {$EXTERNALSYM MOVEFILE_DELAY_UNTIL_REBOOT}
  MOVEFILE_WRITE_THROUGH         = $00000008;
  {$EXTERNALSYM MOVEFILE_WRITE_THROUGH}
  MOVEFILE_CREATE_HARDLINK       = $00000010;
  {$EXTERNALSYM MOVEFILE_CREATE_HARDLINK}
  MOVEFILE_FAIL_IF_NOT_TRACKABLE = $00000020;
  {$EXTERNALSYM MOVEFILE_FAIL_IF_NOT_TRACKABLE}

function ReplaceFileA(lpReplacedFileName, lpReplacementFileName,
  lpBackupFileName: LPCSTR; dwReplaceFlags: DWORD; lpExclude: LPVOID;
  lpReserved: LPVOID): BOOL; stdcall;
{$EXTERNALSYM ReplaceFileA}
function ReplaceFileW(lpReplacedFileName, lpReplacementFileName,
  lpBackupFileName: LPCWSTR; dwReplaceFlags: DWORD; lpExclude: LPVOID;
  lpReserved: LPVOID): BOOL; stdcall;
{$EXTERNALSYM ReplaceFileW}
function ReplaceFile(lpReplacedFileName, lpReplacementFileName,
  lpBackupFileName: LPCTSTR; dwReplaceFlags: DWORD; lpExclude: LPVOID;
  lpReserved: LPVOID): BOOL; stdcall;
{$EXTERNALSYM ReplaceFile}

//
// API call to create hard links.
//

function CreateHardLinkA(lpFileName, lpExistingFileName: LPCSTR;
  lpSecurityAttributes: LPSECURITY_ATTRIBUTES): BOOL; stdcall;
{$EXTERNALSYM CreateHardLinkA}
function CreateHardLinkW(lpFileName, lpExistingFileName: LPCWSTR;
  lpSecurityAttributes: LPSECURITY_ATTRIBUTES): BOOL; stdcall;
{$EXTERNALSYM CreateHardLinkW}
function CreateHardLink(lpFileName, lpExistingFileName: LPCTSTR;
  lpSecurityAttributes: LPSECURITY_ATTRIBUTES): BOOL; stdcall;
{$EXTERNALSYM CreateHardLink}

//#if (_WIN32_WINNT >= 0x0501)

//
// API call to enumerate for streams within a file
//

type
  _STREAM_INFO_LEVELS = (FindStreamInfoStandard, FindStreamInfoMaxInfoLevel);
  {$EXTERNALSYM _STREAM_INFO_LEVELS}
  STREAM_INFO_LEVELS = _STREAM_INFO_LEVELS;
  {$EXTERNALSYM STREAM_INFO_LEVELS}
  TStreamInfoLevels = STREAM_INFO_LEVELS;

  _WIN32_FIND_STREAM_DATA = record
    StreamSize: LARGE_INTEGER;
    cStreamName: array [0..MAX_PATH + 35] of WCHAR;
  end;
  {$EXTERNALSYM _WIN32_FIND_STREAM_DATA}
  WIN32_FIND_STREAM_DATA = _WIN32_FIND_STREAM_DATA;
  {$EXTERNALSYM WIN32_FIND_STREAM_DATA}
  PWIN32_FIND_STREAM_DATA = ^WIN32_FIND_STREAM_DATA;
  {$EXTERNALSYM PWIN32_FIND_STREAM_DATA}
  TWin32FindStreamData = WIN32_FIND_STREAM_DATA;
  PWin32FindStreamData = PWIN32_FIND_STREAM_DATA;

function FindFirstStreamW(lpFileName: LPCWSTR; InfoLevel: STREAM_INFO_LEVELS; lpFindStreamData: LPVOID; dwFlags: DWORD): HANDLE; stdcall;
{$EXTERNALSYM FindFirstStreamW}

function FindNextStreamW(hFindStream: HANDLE; lpFindStreamData: LPVOID): BOOL; stdcall;
{$EXTERNALSYM FindNextStreamW}

//#endif // (_WIN32_WINNT >= 0x0500)

function CreateNamedPipeA(lpName: LPCSTR; dwOpenMode, dwPipeMode, nMaxInstances,
  nOutBufferSize, nInBufferSize, nDefaultTimeOut: DWORD;
  lpSecurityAttributes: LPSECURITY_ATTRIBUTES): HANDLE; stdcall;
{$EXTERNALSYM CreateNamedPipeA}
function CreateNamedPipeW(lpName: LPCWSTR; dwOpenMode, dwPipeMode, nMaxInstances,
  nOutBufferSize, nInBufferSize, nDefaultTimeOut: DWORD;
  lpSecurityAttributes: LPSECURITY_ATTRIBUTES): HANDLE; stdcall;
{$EXTERNALSYM CreateNamedPipeW}
function CreateNamedPipe(lpName: LPCTSTR; dwOpenMode, dwPipeMode, nMaxInstances,
  nOutBufferSize, nInBufferSize, nDefaultTimeOut: DWORD;
  lpSecurityAttributes: LPSECURITY_ATTRIBUTES): HANDLE; stdcall;
{$EXTERNALSYM CreateNamedPipe}

function GetNamedPipeHandleStateA(hNamedPipe: HANDLE; lpState, lpCurInstances,
  lpMaxCollectionCount, lpCollectDataTimeout: LPDWORD; lpUserName: LPSTR;
  nMaxUserNameSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetNamedPipeHandleStateA}
function GetNamedPipeHandleStateW(hNamedPipe: HANDLE; lpState, lpCurInstances,
  lpMaxCollectionCount, lpCollectDataTimeout: LPDWORD; lpUserName: LPWSTR;
  nMaxUserNameSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetNamedPipeHandleStateW}
function GetNamedPipeHandleState(hNamedPipe: HANDLE; lpState, lpCurInstances,
  lpMaxCollectionCount, lpCollectDataTimeout: LPDWORD; lpUserName: LPTSTR;
  nMaxUserNameSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetNamedPipeHandleState}

function CallNamedPipeA(lpNamedPipeName: LPCSTR; lpInBuffer: LPVOID;
  nInBufferSize: DWORD; lpOutBuffer: LPVOID; nOutBufferSize: DWORD;
  var lpBytesRead: DWORD; nTimeOut: DWORD): BOOL; stdcall;
{$EXTERNALSYM CallNamedPipeA}
function CallNamedPipeW(lpNamedPipeName: LPCWSTR; lpInBuffer: LPVOID;
  nInBufferSize: DWORD; lpOutBuffer: LPVOID; nOutBufferSize: DWORD;
  var lpBytesRead: DWORD; nTimeOut: DWORD): BOOL; stdcall;
{$EXTERNALSYM CallNamedPipeW}
function CallNamedPipe(lpNamedPipeName: LPCTSTR; lpInBuffer: LPVOID;
  nInBufferSize: DWORD; lpOutBuffer: LPVOID; nOutBufferSize: DWORD;
  var lpBytesRead: DWORD; nTimeOut: DWORD): BOOL; stdcall;
{$EXTERNALSYM CallNamedPipe}

function WaitNamedPipeA(lpNamedPipeName: LPCSTR; nTimeOut: DWORD): BOOL; stdcall;
{$EXTERNALSYM WaitNamedPipeA}
function WaitNamedPipeW(lpNamedPipeName: LPCWSTR; nTimeOut: DWORD): BOOL; stdcall;
{$EXTERNALSYM WaitNamedPipeW}
function WaitNamedPipe(lpNamedPipeName: LPCTSTR; nTimeOut: DWORD): BOOL; stdcall;
{$EXTERNALSYM WaitNamedPipe}

function SetVolumeLabelA(lpRootPathName, lpVolumeName: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM SetVolumeLabelA}
function SetVolumeLabelW(lpRootPathName, lpVolumeName: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM SetVolumeLabelW}
function SetVolumeLabel(lpRootPathName, lpVolumeName: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM SetVolumeLabel}

procedure SetFileApisToOEM; stdcall;
{$EXTERNALSYM SetFileApisToOEM}

procedure SetFileApisToANSI; stdcall;
{$EXTERNALSYM SetFileApisToANSI}

function AreFileApisANSI: BOOL; stdcall;
{$EXTERNALSYM AreFileApisANSI}

function GetVolumeInformationA(lpRootPathName: LPCSTR; lpVolumeNameBuffer: LPSTR;
  nVolumeNameSize: DWORD; lpVolumeSerialNumber: LPDWORD;
  var lpMaximumComponentLength, lpFileSystemFlags: DWORD;
  lpFileSystemNameBuffer: LPSTR; nFileSystemNameSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetVolumeInformationA}
function GetVolumeInformationW(lpRootPathName: LPCWSTR; lpVolumeNameBuffer: LPWSTR;
  nVolumeNameSize: DWORD; lpVolumeSerialNumber: LPDWORD;
  var lpMaximumComponentLength, lpFileSystemFlags: DWORD;
  lpFileSystemNameBuffer: LPWSTR; nFileSystemNameSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetVolumeInformationW}
function GetVolumeInformation(lpRootPathName: LPCTSTR; lpVolumeNameBuffer: LPTSTR;
  nVolumeNameSize: DWORD; lpVolumeSerialNumber: LPDWORD;
  var lpMaximumComponentLength, lpFileSystemFlags: DWORD;
  lpFileSystemNameBuffer: LPTSTR; nFileSystemNameSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetVolumeInformation}

function CancelIo(hFile: HANDLE): BOOL; stdcall;
{$EXTERNALSYM CancelIo}

//
// Event logging APIs
//

function ClearEventLogA(hEventLog: HANDLE; lpBackupFileName: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM ClearEventLogA}
function ClearEventLogW(hEventLog: HANDLE; lpBackupFileName: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM ClearEventLogW}
function ClearEventLog(hEventLog: HANDLE; lpBackupFileName: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM ClearEventLogA}

function BackupEventLogA(hEventLog: HANDLE; lpBackupFileName: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM BackupEventLogA}
function BackupEventLogW(hEventLog: HANDLE; lpBackupFileName: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM BackupEventLogW}
function BackupEventLog(hEventLog: HANDLE; lpBackupFileName: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM BackupEventLogA}

function CloseEventLog(hEventLog: HANDLE): BOOL; stdcall;
{$EXTERNALSYM CloseEventLog}

function DeregisterEventSource(hEventLog: HANDLE): BOOL; stdcall;
{$EXTERNALSYM DeregisterEventSource}

function NotifyChangeEventLog(hEventLog, hEvent: HANDLE): BOOL; stdcall;
{$EXTERNALSYM NotifyChangeEventLog}

function GetNumberOfEventLogRecords(hEventLog: HANDLE; var NumberOfRecords: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetNumberOfEventLogRecords}

function GetOldestEventLogRecord(hEventLog: HANDLE; var OldestRecord: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetOldestEventLogRecord}

function OpenEventLogA(lpUNCServerName, lpSourceName: LPCSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenEventLogA}
function OpenEventLogW(lpUNCServerName, lpSourceName: LPCWSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenEventLogW}
function OpenEventLog(lpUNCServerName, lpSourceName: LPCTSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenEventLogA}

function RegisterEventSourceA(lpUNCServerName, lpSourceName: LPCSTR): HANDLE; stdcall;
{$EXTERNALSYM RegisterEventSourceA}
function RegisterEventSourceW(lpUNCServerName, lpSourceName: LPCWSTR): HANDLE; stdcall;
{$EXTERNALSYM RegisterEventSourceW}
function RegisterEventSource(lpUNCServerName, lpSourceName: LPCTSTR): HANDLE; stdcall;
{$EXTERNALSYM RegisterEventSourceA}

function OpenBackupEventLogA(lpUNCServerName, lpFileName: LPCSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenBackupEventLogA}
function OpenBackupEventLogW(lpUNCServerName, lpFileName: LPCWSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenBackupEventLogW}
function OpenBackupEventLog(lpUNCServerName, lpFileName: LPCTSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenBackupEventLogA}

function ReadEventLogA(hEventLog: HANDLE; dwReadFlags, dwRecordOffset: DWORD;
  lpBuffer: LPVOID; nNumberOfBytesToRead: DWORD;
  var pnBytesRead, pnMinNumberOfBytesNeeded: DWORD): BOOL; stdcall;
{$EXTERNALSYM ReadEventLogA}
function ReadEventLogW(hEventLog: HANDLE; dwReadFlags, dwRecordOffset: DWORD;
  lpBuffer: LPVOID; nNumberOfBytesToRead: DWORD;
  var pnBytesRead, pnMinNumberOfBytesNeeded: DWORD): BOOL; stdcall;
{$EXTERNALSYM ReadEventLogW}
function ReadEventLog(hEventLog: HANDLE; dwReadFlags, dwRecordOffset: DWORD;
  lpBuffer: LPVOID; nNumberOfBytesToRead: DWORD;
  var pnBytesRead, pnMinNumberOfBytesNeeded: DWORD): BOOL; stdcall;
{$EXTERNALSYM ReadEventLog}

function ReportEventA(hEventLog: HANDLE; wType, wCategory: WORD; dwEventID: DWORD;
  lpUserSid: PSID; wNumStrings: WORD; dwDataSize: DWORD; lpStrings: LPCSTR;
  lpRawData: LPVOID): BOOL; stdcall;
{$EXTERNALSYM ReportEventA}
function ReportEventW(hEventLog: HANDLE; wType, wCategory: WORD; dwEventID: DWORD;
  lpUserSid: PSID; wNumStrings: WORD; dwDataSize: DWORD; lpStrings: LPCWSTR;
  lpRawData: LPVOID): BOOL; stdcall;
{$EXTERNALSYM ReportEventW}
function ReportEvent(hEventLog: HANDLE; wType, wCategory: WORD; dwEventID: DWORD;
  lpUserSid: PSID; wNumStrings: WORD; dwDataSize: DWORD; lpStrings: LPCTSTR;
  lpRawData: LPVOID): BOOL; stdcall;
{$EXTERNALSYM ReportEvent}

const
  EVENTLOG_FULL_INFO = 0;
  {$EXTERNALSYM EVENTLOG_FULL_INFO}

type
  LPEVENTLOG_FULL_INFORMATION = ^EVENTLOG_FULL_INFORMATION;
  {$EXTERNALSYM LPEVENTLOG_FULL_INFORMATION}
  _EVENTLOG_FULL_INFORMATION = record
    dwFull: DWORD;
  end;
  {$EXTERNALSYM _EVENTLOG_FULL_INFORMATION}
  EVENTLOG_FULL_INFORMATION = _EVENTLOG_FULL_INFORMATION;
  {$EXTERNALSYM EVENTLOG_FULL_INFORMATION}
  TEventlogFullInformation = EVENTLOG_FULL_INFORMATION;
  PEventlogFullInformation = LPEVENTLOG_FULL_INFORMATION;

function GetEventLogInformation(hEventLog: HANDLE; dwInfoLevel: DWORD;
  lpBuffer: LPVOID; cbBufSize: DWORD; var pcbBytesNeeded: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetEventLogInformation}

//
// Security APIs
//

function DuplicateToken(ExistingTokenHandle: HANDLE;
  ImpersonationLevel: SECURITY_IMPERSONATION_LEVEL; DuplicateTokenHandle: PHANDLE): BOOL; stdcall;
{$EXTERNALSYM DuplicateToken}

function GetKernelObjectSecurity(Handle: HANDLE;
  RequestedInformation: SECURITY_INFORMATION;
  pSecurityDescriptor: PSECURITY_DESCRIPTOR; nLength: DWORD;
  var lpnLengthNeeded: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetKernelObjectSecurity}

function ImpersonateNamedPipeClient(hNamedPipe: HANDLE): BOOL; stdcall;
{$EXTERNALSYM ImpersonateNamedPipeClient}

function ImpersonateSelf(ImpersonationLevel: SECURITY_IMPERSONATION_LEVEL): BOOL; stdcall;
{$EXTERNALSYM ImpersonateSelf}

function RevertToSelf : BOOL; stdcall;
{$EXTERNALSYM RevertToSelf}

function SetThreadToken(Thread: PHANDLE; Token: HANDLE): BOOL; stdcall;
{$EXTERNALSYM SetThreadToken}

function AccessCheck(pSecurityDescriptor: PSECURITY_DESCRIPTOR;
  ClientToken: HANDLE; DesiredAccess: DWORD; const GenericMapping: GENERIC_MAPPING;
  var PrivilegeSet: PRIVILEGE_SET; var PrivilegeSetLength,
  GrantedAccess: DWORD; var AccessStatus: BOOL): BOOL; stdcall;
{$EXTERNALSYM AccessCheck}

function AccessCheckByType(pSecurityDescriptor: PSECURITY_DESCRIPTOR;
  PrincipalSelfSid: PSID; ClientToken: HANDLE; DesiredAccess: DWORD;
  ObjectTypeList: POBJECT_TYPE_LIST; ObjectTypeListLength: DWORD;
  const GenericMapping: GENERIC_MAPPING; var PrivilegeSet: PRIVILEGE_SET;
  var PrivilegeSetLength, GrantedAccess: DWORD; var AccessStatus: BOOL): BOOL; stdcall;
{$EXTERNALSYM AccessCheckByType}

function AccessCheckByTypeResultList(pSecurityDescriptor: PSECURITY_DESCRIPTOR;
  PrincipalSelfSid: PSID; ClientToken: HANDLE; DesiredAccess: DWORD;
  ObjectTypeList: POBJECT_TYPE_LIST; ObjectTypeListLength: DWORD;
  const GenericMapping: GENERIC_MAPPING; var PrivilegeSet: PRIVILEGE_SET;
  var PrivilegeSetLength, GrantedAccessList: DWORD;
  var AccessStatusList: DWORD): BOOL; stdcall;
{$EXTERNALSYM AccessCheckByTypeResultList}

function OpenProcessToken(ProcessHandle: HANDLE; DesiredAccess: DWORD;
  var TokenHandle: HANDLE): BOOL; stdcall;
{$EXTERNALSYM OpenProcessToken}

function OpenThreadToken(ThreadHandle: HANDLE; DesiredAccess: DWORD;
  OpenAsSelf: BOOL; var TokenHandle: HANDLE): BOOL; stdcall;
{$EXTERNALSYM OpenThreadToken}

function GetTokenInformation(TokenHandle: HANDLE;
  TokenInformationClass: TOKEN_INFORMATION_CLASS; TokenInformation: LPVOID;
  TokenInformationLength: DWORD; var ReturnLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetTokenInformation}

function SetTokenInformation(TokenHandle: HANDLE;
  TokenInformationClass: TOKEN_INFORMATION_CLASS; TokenInformation: LPVOID;
  TokenInformationLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetTokenInformation}

function AdjustTokenPrivileges(TokenHandle: HANDLE; DisableAllPrivileges: BOOL;
  NewState: PTOKEN_PRIVILEGES; BufferLength: DWORD;
  PreviousState: PTOKEN_PRIVILEGES; ReturnLength: LPDWORD): BOOL; stdcall;
{$EXTERNALSYM AdjustTokenPrivileges}

function AdjustTokenGroups(TokenHandle: HANDLE; ResetToDefault: BOOL;
  NewState: PTOKEN_GROUPS; BufferLength: DWORD; PreviousState: PTOKEN_GROUPS;
  ReturnLength: PDWORD): BOOL; stdcall;
{$EXTERNALSYM AdjustTokenGroups}

function PrivilegeCheck(ClientToken: HANDLE;
  RequiredPrivileges: PPRIVILEGE_SET; var pfResult: BOOL): BOOL; stdcall;
{$EXTERNALSYM PrivilegeCheck}

function AccessCheckAndAuditAlarmA(SubsystemName: LPCSTR; HandleId: LPVOID;
  ObjectTypeName, ObjectName: LPSTR; SecurityDescriptor: PSECURITY_DESCRIPTOR;
  DesiredAccess: DWORD; const GenericMapping: GENERIC_MAPPING;
  ObjectCreation: BOOL; var GrantedAccess: DWORD;
  var AccessStatus, pfGenerateOnClose: BOOL): BOOL; stdcall;
{$EXTERNALSYM AccessCheckAndAuditAlarmA}
function AccessCheckAndAuditAlarmW(SubsystemName: LPCWSTR; HandleId: LPVOID;
  ObjectTypeName, ObjectName: LPWSTR; SecurityDescriptor: PSECURITY_DESCRIPTOR;
  DesiredAccess: DWORD; const GenericMapping: GENERIC_MAPPING;
  ObjectCreation: BOOL; var GrantedAccess: DWORD;
  var AccessStatus, pfGenerateOnClose: BOOL): BOOL; stdcall;
{$EXTERNALSYM AccessCheckAndAuditAlarmW}
function AccessCheckAndAuditAlarm(SubsystemName: LPCTSTR; HandleId: LPVOID;
  ObjectTypeName, ObjectName: LPTSTR; SecurityDescriptor: PSECURITY_DESCRIPTOR;
  DesiredAccess: DWORD; const GenericMapping: GENERIC_MAPPING;
  ObjectCreation: BOOL; var GrantedAccess: DWORD;
  var AccessStatus, pfGenerateOnClose: BOOL): BOOL; stdcall;
{$EXTERNALSYM AccessCheckAndAuditAlarmA}

function AccessCheckByTypeAndAuditAlarmA(SubsystemName: LPCSTR; HandleId: LPVOID;
  ObjectTypeName: LPCSTR; ObjectName: LPCSTR; SecurityDescriptor: PSECURITY_DESCRIPTOR;
  PrincipalSelfSid: PSID; DesiredAccess: DWORD; AuditType: AUDIT_EVENT_TYPE;
  Flags: DWORD; ObjectTypeList: POBJECT_TYPE_LIST; ObjectTypeListLength: DWORD;
  GenericMapping: PGENERIC_MAPPING; ObjectCreation: BOOL; GrantedAccess: LPDWORD;
  AccessStatus: LPBOOL; pfGenerateOnClose: LPBOOL): BOOL; stdcall;
{$EXTERNALSYM AccessCheckByTypeAndAuditAlarmA}
function AccessCheckByTypeAndAuditAlarmW(SubsystemName: LPCWSTR; HandleId: LPVOID;
ObjectTypeName: LPCWSTR; ObjectName: LPCWSTR; SecurityDescriptor: PSECURITY_DESCRIPTOR;
PrincipalSelfSid: PSID; DesiredAccess: DWORD; AuditType: AUDIT_EVENT_TYPE;
Flags: DWORD; ObjectTypeList: POBJECT_TYPE_LIST; ObjectTypeListLength: DWORD;
GenericMapping: PGENERIC_MAPPING; ObjectCreation: BOOL; GrantedAccess: LPDWORD;
AccessStatus: LPBOOL; pfGenerateOnClose: LPBOOL): BOOL; stdcall;
{$EXTERNALSYM AccessCheckByTypeAndAuditAlarmW}
function AccessCheckByTypeAndAuditAlarm(SubsystemName: LPCTSTR; HandleId: LPVOID;
  ObjectTypeName, ObjectName: LPCTSTR; SecurityDescriptor: PSECURITY_DESCRIPTOR;
  PrincipalSelfSid: PSID; DesiredAccess: DWORD; AuditType: AUDIT_EVENT_TYPE;
  Flags: DWORD; ObjectTypeList: POBJECT_TYPE_LIST; ObjectTypeListLength: DWORD;
  const GenericMapping: GENERIC_MAPPING; ObjectCreation: BOOL;
  var GrantedAccess: DWORD; var AccessStatus, pfGenerateOnClose: BOOL): BOOL; stdcall;
{$EXTERNALSYM AccessCheckByTypeAndAuditAlarmA}

function AccessCheckByTypeResultListAndAuditAlarmA(SubsystemName: LPCSTR;
  HandleId: LPVOID; ObjectTypeName, ObjectName: LPCSTR;
  SecurityDescriptor: PSECURITY_DESCRIPTOR; PrincipalSelfSid: PSID;
  DesiredAccess: DWORD; AuditType: AUDIT_EVENT_TYPE; Flags: DWORD;
  ObjectTypeList: POBJECT_TYPE_LIST; ObjectTypeListLength: DWORD;
  const GenericMapping: GENERIC_MAPPING; ObjectCreation: BOOL;
  var GrantedAccess, AccessStatusList: DWORD; var pfGenerateOnClose: BOOL): BOOL; stdcall;
{$EXTERNALSYM AccessCheckByTypeResultListAndAuditAlarmA}
function AccessCheckByTypeResultListAndAuditAlarmW(SubsystemName: LPCWSTR;
  HandleId: LPVOID; ObjectTypeName, ObjectName: LPCWSTR;
  SecurityDescriptor: PSECURITY_DESCRIPTOR; PrincipalSelfSid: PSID;
  DesiredAccess: DWORD; AuditType: AUDIT_EVENT_TYPE; Flags: DWORD;
  ObjectTypeList: POBJECT_TYPE_LIST; ObjectTypeListLength: DWORD;
  const GenericMapping: GENERIC_MAPPING; ObjectCreation: BOOL;
  var GrantedAccess, AccessStatusList: DWORD; var pfGenerateOnClose: BOOL): BOOL; stdcall;
{$EXTERNALSYM AccessCheckByTypeResultListAndAuditAlarmW}
function AccessCheckByTypeResultListAndAuditAlarm(SubsystemName: LPCTSTR;
  HandleId: LPVOID; ObjectTypeName, ObjectName: LPCTSTR;
  SecurityDescriptor: PSECURITY_DESCRIPTOR; PrincipalSelfSid: PSID;
  DesiredAccess: DWORD; AuditType: AUDIT_EVENT_TYPE; Flags: DWORD;
  ObjectTypeList: POBJECT_TYPE_LIST; ObjectTypeListLength: DWORD;
  const GenericMapping: GENERIC_MAPPING; ObjectCreation: BOOL;
  var GrantedAccess, AccessStatusList: DWORD; var pfGenerateOnClose: BOOL): BOOL; stdcall;
{$EXTERNALSYM AccessCheckByTypeResultListAndAuditAlarmA}

function AccessCheckByTypeResultListAndAuditAlarmByHandleA(SubsystemName: LPCSTR;
  HandleId: LPVOID; ClientToken: HANDLE; ObjectTypeName, ObjectName: LPCSTR;
  SecurityDescriptor: PSECURITY_DESCRIPTOR; PrincipalSelfSid: PSID;
  DesiredAccess: DWORD; AuditType: AUDIT_EVENT_TYPE; Flags: DWORD;
  ObjectTypeList: POBJECT_TYPE_LIST; ObjectTypeListLength: DWORD;
  const GenericMapping: GENERIC_MAPPING; ObjectCreation: BOOL;
  var GrantedAccess, AccessStatusList: DWORD; var pfGenerateOnClose: BOOL): BOOL; stdcall;
{$EXTERNALSYM AccessCheckByTypeResultListAndAuditAlarmByHandleA}
function AccessCheckByTypeResultListAndAuditAlarmByHandleW(SubsystemName: LPCWSTR;
  HandleId: LPVOID; ClientToken: HANDLE; ObjectTypeName, ObjectName: LPCWSTR;
  SecurityDescriptor: PSECURITY_DESCRIPTOR; PrincipalSelfSid: PSID;
  DesiredAccess: DWORD; AuditType: AUDIT_EVENT_TYPE; Flags: DWORD;
  ObjectTypeList: POBJECT_TYPE_LIST; ObjectTypeListLength: DWORD;
  const GenericMapping: PGENERIC_MAPPING; ObjectCreation: BOOL;
  var GrantedAccess, AccessStatusList: DWORD; var pfGenerateOnClose: BOOL): BOOL; stdcall;
{$EXTERNALSYM AccessCheckByTypeResultListAndAuditAlarmByHandleW}
function AccessCheckByTypeResultListAndAuditAlarmByHandle(SubsystemName: LPCTSTR;
  HandleId: LPVOID; ClientToken: HANDLE; ObjectTypeName, ObjectName: LPCTSTR;
  SecurityDescriptor: PSECURITY_DESCRIPTOR; PrincipalSelfSid: PSID;
  DesiredAccess: DWORD; AuditType: AUDIT_EVENT_TYPE; Flags: DWORD;
  ObjectTypeList: POBJECT_TYPE_LIST; ObjectTypeListLength: DWORD;
  const GenericMapping: PGENERIC_MAPPING; ObjectCreation: BOOL;
  var GrantedAccess, AccessStatusList: DWORD; var pfGenerateOnClose: BOOL): BOOL; stdcall;
{$EXTERNALSYM AccessCheckByTypeResultListAndAuditAlarmByHandle}

function ObjectOpenAuditAlarmA(SubsystemName: LPCSTR; HandleId: LPVOID;
  ObjectTypeName: LPSTR; ObjectName: LPSTR; pSecurityDescriptor: PSECURITY_DESCRIPTOR;
  ClientToken: HANDLE; DesiredAccess, GrantedAccess: DWORD;
  Privileges: PPRIVILEGE_SET; ObjectCreation: BOOL; AccessGranted: BOOL;
  var GenerateOnClose: BOOL): BOOL; stdcall;
{$EXTERNALSYM ObjectOpenAuditAlarmA}
function ObjectOpenAuditAlarmW(SubsystemName: LPCWSTR; HandleId: LPVOID;
  ObjectTypeName, ObjectName: LPWSTR; pSecurityDescriptor: PSECURITY_DESCRIPTOR;
  ClientToken: HANDLE; DesiredAccess: DWORD; GrantedAccess: DWORD;
  Privileges: PPRIVILEGE_SET; ObjectCreation: BOOL; AccessGranted: BOOL;
  var GenerateOnClose: BOOL): BOOL; stdcall;
{$EXTERNALSYM ObjectOpenAuditAlarmW}
function ObjectOpenAuditAlarm(SubsystemName: LPCTSTR; HandleId: LPVOID;
  ObjectTypeName: LPTSTR; ObjectName: LPTSTR; pSecurityDescriptor: PSECURITY_DESCRIPTOR;
  ClientToken: HANDLE; DesiredAccess: DWORD; GrantedAccess: DWORD;
  Privileges: PPRIVILEGE_SET; ObjectCreation: BOOL; AccessGranted: BOOL;
  var GenerateOnClose: BOOL): BOOL; stdcall;
{$EXTERNALSYM ObjectOpenAuditAlarmA}

function ObjectPrivilegeAuditAlarmA(SubsystemName: LPCSTR; HandleId: LPVOID;
  ClientToken: HANDLE; DesiredAccess: DWORD; const Privileges: PRIVILEGE_SET;
  AccessGranted: BOOL): BOOL; stdcall;
{$EXTERNALSYM ObjectPrivilegeAuditAlarmA}
function ObjectPrivilegeAuditAlarmW(SubsystemName: LPCWSTR; HandleId: LPVOID;
  ClientToken: HANDLE; DesiredAccess: DWORD; const Privileges: PRIVILEGE_SET;
  AccessGranted: BOOL): BOOL; stdcall;
{$EXTERNALSYM ObjectPrivilegeAuditAlarmW}
function ObjectPrivilegeAuditAlarm(SubsystemName: LPCTSTR; HandleId: LPVOID;
  ClientToken: HANDLE; DesiredAccess: DWORD; const Privileges: PRIVILEGE_SET;
  AccessGranted: BOOL): BOOL; stdcall;
{$EXTERNALSYM ObjectPrivilegeAuditAlarmA}

function ObjectCloseAuditAlarmA(SubsystemName: LPCSTR; HandleId: LPVOID;
  GenerateOnClose: BOOL): BOOL; stdcall;
{$EXTERNALSYM ObjectCloseAuditAlarmA}
function ObjectCloseAuditAlarmW(SubsystemName: LPCWSTR; HandleId: LPVOID;
  GenerateOnClose: BOOL): BOOL; stdcall;
{$EXTERNALSYM ObjectCloseAuditAlarmW}
function ObjectCloseAuditAlarm(SubsystemName: LPCTSTR; HandleId: LPVOID;
  GenerateOnClose: BOOL): BOOL; stdcall;
{$EXTERNALSYM ObjectCloseAuditAlarmA}

function ObjectDeleteAuditAlarmA(SubsystemName: LPCSTR; HandleId: LPVOID;
  GenerateOnClose: BOOL): BOOL; stdcall;
{$EXTERNALSYM ObjectDeleteAuditAlarmA}
function ObjectDeleteAuditAlarmW(SubsystemName: LPCWSTR; HandleId: LPVOID;
  GenerateOnClose: BOOL): BOOL; stdcall;
{$EXTERNALSYM ObjectDeleteAuditAlarmW}
function ObjectDeleteAuditAlarm(SubsystemName: LPCTSTR; HandleId: LPVOID;
  GenerateOnClose: BOOL): BOOL; stdcall;
{$EXTERNALSYM ObjectDeleteAuditAlarmA}

function PrivilegedServiceAuditAlarmA(SubsystemName, ServiceName: LPCSTR;
  ClientToken: HANDLE; const Privileges: PRIVILEGE_SET; AccessGranted: BOOL): BOOL; stdcall;
{$EXTERNALSYM PrivilegedServiceAuditAlarmA}
function PrivilegedServiceAuditAlarmW(SubsystemName, ServiceName: LPCWSTR;
  ClientToken: HANDLE; const Privileges: PRIVILEGE_SET; AccessGranted: BOOL): BOOL; stdcall;
{$EXTERNALSYM PrivilegedServiceAuditAlarmW}
function PrivilegedServiceAuditAlarm(SubsystemName, ServiceName: LPCTSTR;
  ClientToken: HANDLE; const Privileges: PRIVILEGE_SET; AccessGranted: BOOL): BOOL; stdcall;
{$EXTERNALSYM PrivilegedServiceAuditAlarmA}

function IsWellKnownSid(pSid: PSID; WellKnownSidType: WELL_KNOWN_SID_TYPE): BOOL; stdcall;
{$EXTERNALSYM IsWellKnownSid}

function CreateWellKnownSid(WellKnownSidType: WELL_KNOWN_SID_TYPE; DomainSid: PSID;
  pSid: PSID; var cbSid: DWORD): BOOL; stdcall;
{$EXTERNALSYM CreateWellKnownSid}

function EqualDomainSid(pSid1, pSid2: PSID; pfEqual: PBOOL): BOOL; stdcall;
{$EXTERNALSYM EqualDomainSid}

function GetWindowsAccountDomainSid(pSid, ppDomainSid: PSID; var cbSid: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetWindowsAccountDomainSid}

function IsValidSid(pSid: PSID): BOOL; stdcall;
{$EXTERNALSYM IsValidSid}

function EqualSid(pSid1, pSid2: PSID): BOOL; stdcall;
{$EXTERNALSYM EqualSid}

function EqualPrefixSid(pSid1, pSid2: PSID): BOOL; stdcall;
{$EXTERNALSYM EqualPrefixSid}

function GetSidLengthRequired(nSubAuthorityCount: UCHAR): DWORD; stdcall;
{$EXTERNALSYM GetSidLengthRequired}

function AllocateAndInitializeSid(pIdentifierAuthority: PSID_IDENTIFIER_AUTHORITY;
  SubAuthorityCount: BYTE; nSubAuthority0, nSubAuthority1, nSubAuthority2,
  nSubAuthority3, nSubAuthority4, nSubAuthority5, nSubAuthority6,
  nSubAuthority7: DWORD; var pSid: PSID): BOOL; stdcall;
{$EXTERNALSYM AllocateAndInitializeSid}

function FreeSid(pSid: PSID): PVOID; stdcall;
{$EXTERNALSYM FreeSid}

function InitializeSid(Sid: PSID; pIdentifierAuthority: PSID_IDENTIFIER_AUTHORITY;
  nSubAuthorityCount: BYTE): BOOL; stdcall;
{$EXTERNALSYM InitializeSid}

function GetSidIdentifierAuthority(pSid: PSID): PSID_IDENTIFIER_AUTHORITY; stdcall;
{$EXTERNALSYM GetSidIdentifierAuthority}

function GetSidSubAuthority(pSid: PSID; nSubAuthority: DWORD): PDWORD; stdcall;
{$EXTERNALSYM GetSidSubAuthority}

function GetSidSubAuthorityCount(pSid: PSID): PUCHAR; stdcall;
{$EXTERNALSYM GetSidSubAuthorityCount}

function GetLengthSid(pSid: PSID): DWORD; stdcall;
{$EXTERNALSYM GetLengthSid}

function CopySid(nDestinationSidLength: DWORD; pDestinationSid: PSID;
  pSourceSid: PSID): BOOL; stdcall;
{$EXTERNALSYM CopySid}

function AreAllAccessesGranted(GrantedAccess, DesiredAccess: DWORD): BOOL; stdcall;
{$EXTERNALSYM AreAllAccessesGranted}

function AreAnyAccessesGranted(GrantedAccess, DesiredAccess: DWORD): BOOL; stdcall;
{$EXTERNALSYM AreAnyAccessesGranted}

procedure MapGenericMask(var AccessMask: DWORD; var GenericMapping: GENERIC_MAPPING); stdcall;
{$EXTERNALSYM MapGenericMask}

function IsValidAcl(pAcl: PACL): BOOL; stdcall;
{$EXTERNALSYM IsValidAcl}

function InitializeAcl(pAcl: PACL; nAclLength: DWORD; dwAclRevision: DWORD): BOOL; stdcall;
{$EXTERNALSYM InitializeAcl}

function GetAclInformation(pAcl: PACL; pAclInformation: LPVOID;
  nAclInformationLength: DWORD; dwAclInformationClass: ACL_INFORMATION_CLASS): BOOL; stdcall;
{$EXTERNALSYM GetAclInformation}

function SetAclInformation(pAcl: PACL; pAclInformation: LPVOID;
  nAclInformationLength: DWORD; dwAclInformationClass: ACL_INFORMATION_CLASS): BOOL; stdcall;
{$EXTERNALSYM SetAclInformation}

function AddAce(pAcl: PACL; dwAceRevision: DWORD; dwStartingAceIndex: DWORD;
  pAceList: LPVOID; nAceListLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM AddAce}

function DeleteAce(pAcl: PACL; dwAceIndex: DWORD): BOOL; stdcall;
{$EXTERNALSYM DeleteAce}

function GetAce(pAcl: PACL; dwAceIndex: DWORD; var pAce: LPVOID): BOOL; stdcall;
{$EXTERNALSYM GetAce}

function AddAccessAllowedAce(pAcl: PACL; dwAceRevision, AccessMask: DWORD; pSid: PSID): BOOL; stdcall;
{$EXTERNALSYM AddAccessAllowedAce}

function AddAccessAllowedAceEx(pAcl: PACL; dwAceRevision, AceFlags,
  AccessMask: DWORD; pSid: PSID): BOOL; stdcall;
{$EXTERNALSYM AddAccessAllowedAceEx}

function AddAccessDeniedAce(pAcl: PACL; dwAceRevision, AccessMask: DWORD; pSid: PSID): BOOL; stdcall;
{$EXTERNALSYM AddAccessDeniedAce}

function AddAccessDeniedAceEx(pAcl: PACL; dwAceRevision, AceFlags: DWORD;
  AccessMask: DWORD; pSid: PSID): BOOL; stdcall;
{$EXTERNALSYM AddAccessDeniedAceEx}

function AddAuditAccessAce(pAcl: PACL; dwAceRevision, dwAccessMask: DWORD;
  pSid: PSID; bAuditSuccess, bAuditFailure: BOOL): BOOL; stdcall;
{$EXTERNALSYM AddAuditAccessAce}

function AddAuditAccessAceEx(pAcl: PACL; dwAceRevision, AceFlags,
  dwAccessMask: DWORD; pSid: PSID; bAuditSuccess, bAuditFailure: BOOL): BOOL; stdcall;
{$EXTERNALSYM AddAuditAccessAceEx}

function AddAccessAllowedObjectAce(pAcl: PACL; dwAceRevision, AceFlags,
  AccessMask: DWORD; ObjectTypeGuid, InheritedObjectTypeGuid: LPGUID; pSid: PSID): BOOL; stdcall;
{$EXTERNALSYM AddAccessAllowedObjectAce}

function AddAccessDeniedObjectAce(pAcl: PACL; dwAceRevision, AceFlags,
  AccessMask: DWORD; ObjectTypeGuid, InheritedObjectTypeGuid: LPGUID; pSid: PSID): BOOL; stdcall;
{$EXTERNALSYM AddAccessDeniedObjectAce}

function AddAuditAccessObjectAce(pAcl: PACL; dwAceRevision, AceFlags,
  AccessMask: DWORD; ObjectTypeGuid, InheritedObjectTypeGuid: LPGUID; pSid: PSID;
  bAuditSuccess, bAuditFailure: BOOL): BOOL; stdcall;
{$EXTERNALSYM AddAuditAccessObjectAce}

function FindFirstFreeAce(pAcl: PACL; var pAce: LPVOID): BOOL; stdcall;
{$EXTERNALSYM FindFirstFreeAce}

function InitializeSecurityDescriptor(pSecurityDescriptor: PSECURITY_DESCRIPTOR;
  dwRevision: DWORD): BOOL; stdcall;
{$EXTERNALSYM InitializeSecurityDescriptor}

function IsValidSecurityDescriptor(pSecurityDescriptor: PSECURITY_DESCRIPTOR): BOOL; stdcall;
{$EXTERNALSYM IsValidSecurityDescriptor}

function GetSecurityDescriptorLength(pSecurityDescriptor: PSECURITY_DESCRIPTOR): DWORD; stdcall;
{$EXTERNALSYM GetSecurityDescriptorLength}

function GetSecurityDescriptorControl(pSecurityDescriptor: PSECURITY_DESCRIPTOR;
  var pControl: SECURITY_DESCRIPTOR_CONTROL; var lpdwRevision: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetSecurityDescriptorControl}

function SetSecurityDescriptorControl(pSecurityDescriptor: PSECURITY_DESCRIPTOR;
  ControlBitsOfInterest, ControlBitsToSet: SECURITY_DESCRIPTOR_CONTROL): BOOL; stdcall;
{$EXTERNALSYM SetSecurityDescriptorControl}

function SetSecurityDescriptorDacl(pSecurityDescriptor: PSECURITY_DESCRIPTOR;
  bDaclPresent: BOOL; pDacl: PACL; bDaclDefaulted: BOOL): BOOL; stdcall;
{$EXTERNALSYM SetSecurityDescriptorDacl}

function GetSecurityDescriptorDacl(pSecurityDescriptor: PSECURITY_DESCRIPTOR;
  var lpbDaclPresent: BOOL; var pDacl: PACL; var lpbDaclDefaulted: BOOL): BOOL; stdcall;
{$EXTERNALSYM GetSecurityDescriptorDacl}

function SetSecurityDescriptorSacl(pSecurityDescriptor: PSECURITY_DESCRIPTOR;
  bSaclPresent: BOOL; pSacl: PACL; bSaclDefaulted: BOOL): BOOL; stdcall;
{$EXTERNALSYM SetSecurityDescriptorSacl}

function GetSecurityDescriptorSacl(pSecurityDescriptor: PSECURITY_DESCRIPTOR;
  var lpbSaclPresent: BOOL; var pSacl: PACL; var lpbSaclDefaulted: BOOL): BOOL; stdcall;
{$EXTERNALSYM GetSecurityDescriptorSacl}

function SetSecurityDescriptorOwner(pSecurityDescriptor: PSECURITY_DESCRIPTOR;
  pOwner: PSID; bOwnerDefaulted: BOOL): BOOL; stdcall;
{$EXTERNALSYM SetSecurityDescriptorOwner}

function GetSecurityDescriptorOwner(pSecurityDescriptor: PSECURITY_DESCRIPTOR;
  var pOwner: PSID; lpbOwnerDefaulted: PBOOL): BOOL; stdcall;
{$EXTERNALSYM GetSecurityDescriptorOwner}

function SetSecurityDescriptorGroup(pSecurityDescriptor: PSECURITY_DESCRIPTOR;
  pGroup: PSID; bGroupDefaulted: BOOL): BOOL; stdcall;
{$EXTERNALSYM SetSecurityDescriptorGroup}

function GetSecurityDescriptorGroup(pSecurityDescriptor: PSECURITY_DESCRIPTOR;
  var pGroup: PSID; lpbGroupDefaulted: PBOOL): BOOL; stdcall;
{$EXTERNALSYM GetSecurityDescriptorGroup}

function SetSecurityDescriptorRMControl(SecurityDescriptor: PSECURITY_DESCRIPTOR;
  RMControl: PUCHAR): DWORD; stdcall;
{$EXTERNALSYM SetSecurityDescriptorRMControl}

function GetSecurityDescriptorRMControl(SecurityDescriptor: PSECURITY_DESCRIPTOR;
  var RMControl: UCHAR): DWORD; stdcall;
{$EXTERNALSYM GetSecurityDescriptorRMControl}

function CreatePrivateObjectSecurity(ParentDescriptor, CreatorDescriptor: PSECURITY_DESCRIPTOR;
  var NewDescriptor: PSECURITY_DESCRIPTOR; IsDirectoryObject: BOOL; Token: HANDLE;
  const GenericMapping: GENERIC_MAPPING): BOOL; stdcall;
{$EXTERNALSYM CreatePrivateObjectSecurity}

function ConvertToAutoInheritPrivateObjectSecurity(ParentDescriptor,
  CurrentSecurityDescriptor: PSECURITY_DESCRIPTOR;
  var NewSecurityDescriptor: PSECURITY_DESCRIPTOR; ObjectType: LPGUID;
  IsDirectoryObject: ByteBool; const GenericMapping: GENERIC_MAPPING): BOOL; stdcall;
{$EXTERNALSYM ConvertToAutoInheritPrivateObjectSecurity}

function CreatePrivateObjectSecurityEx(ParentDescriptor,
  CreatorDescriptor: PSECURITY_DESCRIPTOR;
  var NewDescriptor: PSECURITY_DESCRIPTOR; ObjectType: LPGUID;
  IsContainerObject: BOOL; AutoInheritFlags: ULONG; Token: HANDLE;
  const GenericMapping: GENERIC_MAPPING): BOOL; stdcall;
{$EXTERNALSYM CreatePrivateObjectSecurityEx}

function SetPrivateObjectSecurity(SecurityInformation: SECURITY_INFORMATION;
  ModificationDescriptor: PSECURITY_DESCRIPTOR;
  var ObjectsSecurityDescriptor: PSECURITY_DESCRIPTOR;
  const GenericMapping: GENERIC_MAPPING; Token: HANDLE): BOOL; stdcall;
{$EXTERNALSYM SetPrivateObjectSecurity}

function SetPrivateObjectSecurityEx(SecurityInformation: SECURITY_INFORMATION;
  ModificationDescriptor: PSECURITY_DESCRIPTOR;
  var ObjectsSecurityDescriptor: PSECURITY_DESCRIPTOR; AutoInheritFlags: ULONG;
  const GenericMapping: GENERIC_MAPPING; Token: HANDLE): BOOL; stdcall;
{$EXTERNALSYM SetPrivateObjectSecurityEx}

function GetPrivateObjectSecurity(ObjectDescriptor: PSECURITY_DESCRIPTOR;
  SecurityInformation: SECURITY_INFORMATION;
  ResultantDescriptor: PSECURITY_DESCRIPTOR; DescriptorLength: DWORD;
  var ReturnLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetPrivateObjectSecurity}

function DestroyPrivateObjectSecurity(var ObjectDescriptor: PSECURITY_DESCRIPTOR): BOOL; stdcall;
{$EXTERNALSYM DestroyPrivateObjectSecurity}

function MakeSelfRelativeSD(pAbsoluteSecurityDescriptor: PSECURITY_DESCRIPTOR;
  pSelfRelativeSecurityDescriptor: PSECURITY_DESCRIPTOR; var lpdwBufferLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM MakeSelfRelativeSD}

function MakeAbsoluteSD(pSelfRelativeSecurityDescriptor: PSECURITY_DESCRIPTOR;
  pAbsoluteSecurityDescriptor: PSECURITY_DESCRIPTOR;
  var lpdwAbsoluteSecurityDescriptorSize: DWORD; pDacl: PACL;
  var lpdwDaclSize: DWORD; pSacl: PACL; var lpdwSaclSize: DWORD; pOwner: PSID;
  var lpdwOwnerSize: DWORD; pPrimaryGroup: PSID; var lpdwPrimaryGroupSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM MakeAbsoluteSD}

function MakeAbsoluteSD2(pSelfRelativeSecurityDescriptor: PSECURITY_DESCRIPTOR;
  var lpdwBufferSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM MakeAbsoluteSD2}

function SetFileSecurityA(lpFileName: LPCSTR; SecurityInformation: SECURITY_INFORMATION;
  pSecurityDescriptor: PSECURITY_DESCRIPTOR): BOOL; stdcall;
{$EXTERNALSYM SetFileSecurityA}
function SetFileSecurityW(lpFileName: LPCWSTR; SecurityInformation: SECURITY_INFORMATION;
  pSecurityDescriptor: PSECURITY_DESCRIPTOR): BOOL; stdcall;
{$EXTERNALSYM SetFileSecurityW}
function SetFileSecurity(lpFileName: LPCTSTR; SecurityInformation: SECURITY_INFORMATION;
  pSecurityDescriptor: PSECURITY_DESCRIPTOR): BOOL; stdcall;
{$EXTERNALSYM SetFileSecurityA}

function GetFileSecurityA(lpFileName: LPCSTR; RequestedInformation: SECURITY_INFORMATION;
  pSecurityDescriptor: PSECURITY_DESCRIPTOR; nLength: DWORD;
  var lpnLengthNeeded: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetFileSecurityA}
function GetFileSecurityW(lpFileName: LPCWSTR; RequestedInformation: SECURITY_INFORMATION;
  pSecurityDescriptor: PSECURITY_DESCRIPTOR; nLength: DWORD;
  var lpnLengthNeeded: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetFileSecurityW}
function GetFileSecurity(lpFileName: LPCTSTR; RequestedInformation: SECURITY_INFORMATION;
  pSecurityDescriptor: PSECURITY_DESCRIPTOR; nLength: DWORD;
  var lpnLengthNeeded: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetFileSecurityA}

function SetKernelObjectSecurity(Handle: HANDLE; SecurityInformation: SECURITY_INFORMATION;
  SecurityDescriptor: PSECURITY_DESCRIPTOR): BOOL; stdcall;
{$EXTERNALSYM SetKernelObjectSecurity}

function FindFirstChangeNotificationA(lpPathName: LPCSTR; bWatchSubtree: Cardinal;
  dwNotifyFilter: DWORD): HANDLE; stdcall;
{$EXTERNALSYM FindFirstChangeNotificationA}
function FindFirstChangeNotificationW(lpPathName: LPCWSTR; bWatchSubtree: Cardinal;
  dwNotifyFilter: DWORD): HANDLE; stdcall;
{$EXTERNALSYM FindFirstChangeNotificationW}
function FindFirstChangeNotification(lpPathName: LPCTSTR; bWatchSubtree: Cardinal;
  dwNotifyFilter: DWORD): HANDLE; stdcall;
{$EXTERNALSYM FindFirstChangeNotification}

function FindNextChangeNotification(hChangeHandle: HANDLE): BOOL; stdcall;
{$EXTERNALSYM FindNextChangeNotification}

function FindCloseChangeNotification(hChangeHandle: HANDLE): BOOL; stdcall;
{$EXTERNALSYM FindCloseChangeNotification}

function ReadDirectoryChangesW(hDirectory: HANDLE; lpBuffer: LPVOID;
  nBufferLength: DWORD; bWatchSubtree: BOOL; dwNotifyFilter: DWORD;
  lpBytesReturned: LPDWORD; lpOverlapped: LPOVERLAPPED;
  lpCompletionRoutine: LPOVERLAPPED_COMPLETION_ROUTINE): BOOL; stdcall;
{$EXTERNALSYM ReadDirectoryChangesW}

function VirtualLock(lpAddress: LPVOID; dwSize: SIZE_T): BOOL; stdcall;
{$EXTERNALSYM VirtualLock}

function VirtualUnlock(lpAddress: LPVOID; dwSize: SIZE_T): BOOL; stdcall;
{$EXTERNALSYM VirtualUnlock}

function MapViewOfFileEx(hFileMappingObject: HANDLE; dwDesiredAccess: DWORD;
  dwFileOffsetHigh: DWORD; dwFileOffsetLow: DWORD; dwNumberOfBytesToMap: SIZE_T;
  lpBaseAddress: LPVOID): LPVOID; stdcall;
{$EXTERNALSYM MapViewOfFileEx}

function SetPriorityClass(hProcess: HANDLE; dwPriorityClass: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetPriorityClass}

function GetPriorityClass(hProcess: HANDLE): DWORD; stdcall;
{$EXTERNALSYM GetPriorityClass}

function IsBadReadPtr(lp: LPVOID; ucb: UINT_PTR): BOOL; stdcall;
{$EXTERNALSYM IsBadReadPtr}

function IsBadWritePtr(lp: LPVOID; ucb: UINT_PTR): BOOL; stdcall;
{$EXTERNALSYM IsBadWritePtr}

function IsBadHugeReadPtr(lp: LPVOID; ucb: UINT_PTR): BOOL; stdcall;
{$EXTERNALSYM IsBadHugeReadPtr}

function IsBadHugeWritePtr(lp: LPVOID; ucb: UINT_PTR): BOOL; stdcall;
{$EXTERNALSYM IsBadHugeWritePtr}

function IsBadCodePtr(lpfn: FARPROC): BOOL; stdcall;
{$EXTERNALSYM IsBadCodePtr}

function IsBadStringPtrA(lpsz: LPCSTR; ucchMax: UINT_PTR): BOOL; stdcall;
{$EXTERNALSYM IsBadStringPtrA}
function IsBadStringPtrW(lpsz: LPCWSTR; ucchMax: UINT_PTR): BOOL; stdcall;
{$EXTERNALSYM IsBadStringPtrW}
function IsBadStringPtr(lpsz: LPCTSTR; ucchMax: UINT_PTR): BOOL; stdcall;
{$EXTERNALSYM IsBadStringPtr}

function LookupAccountSidA(lpSystemName: LPCSTR; Sid: PSID; Name: LPSTR;
  var cchName: DWORD; ReferencedDomainName: LPSTR; var cchReferencedDomainName: DWORD;
  var peUse: SID_NAME_USE): BOOL; stdcall;
{$EXTERNALSYM LookupAccountSidA}
function LookupAccountSidW(lpSystemName: LPCWSTR; Sid: PSID; Name: LPWSTR;
  var cchName: DWORD; ReferencedDomainName: LPWSTR; var cchReferencedDomainName: DWORD;
  var peUse: SID_NAME_USE): BOOL; stdcall;
{$EXTERNALSYM LookupAccountSidW}
function LookupAccountSid(lpSystemName: LPCTSTR; Sid: PSID; Name: LPTSTR;
  var cchName: DWORD; ReferencedDomainName: LPTSTR; var cchReferencedDomainName: DWORD;
  var peUse: SID_NAME_USE): BOOL; stdcall;
{$EXTERNALSYM LookupAccountSid}

function LookupAccountNameA(lpSystemName, lpAccountName: LPCSTR; Sid: PSID;
  var cbSid: DWORD; ReferencedDomainName: LPSTR; var cchReferencedDomainName: DWORD;
  var peUse: SID_NAME_USE): BOOL; stdcall;
{$EXTERNALSYM LookupAccountNameA}
function LookupAccountNameW(lpSystemName, lpAccountName: LPCWSTR; Sid: PSID;
  var cbSid: DWORD; ReferencedDomainName: LPWSTR; var cchReferencedDomainName: DWORD;
  var peUse: SID_NAME_USE): BOOL; stdcall;
{$EXTERNALSYM LookupAccountNameW}
function LookupAccountName(lpSystemName: LPCTSTR; lpAccountName: LPCTSTR; Sid: PSID;
  var cbSid: DWORD; ReferencedDomainName: LPTSTR; var cchReferencedDomainName: DWORD;
  var peUse: SID_NAME_USE): BOOL; stdcall;
{$EXTERNALSYM LookupAccountName}

function LookupPrivilegeValueA(lpSystemName, lpName: LPCSTR; var lpLuid: LUID): BOOL; stdcall;
{$EXTERNALSYM LookupPrivilegeValueA}
function LookupPrivilegeValueW(lpSystemName, lpName: LPCWSTR; var lpLuid: LUID): BOOL; stdcall;
{$EXTERNALSYM LookupPrivilegeValueW}
function LookupPrivilegeValue(lpSystemName, lpName: LPCTSTR; var lpLuid: LUID): BOOL; stdcall;
{$EXTERNALSYM LookupPrivilegeValue}

function LookupPrivilegeNameA(lpSystemName: LPCSTR; const lpLuid: LUID;
  lpName: LPSTR; var cbName: DWORD): BOOL; stdcall;
{$EXTERNALSYM LookupPrivilegeNameA}
function LookupPrivilegeNameW(lpSystemName: LPCWSTR; const lpLuid: LUID;
  lpName: LPWSTR; var cbName: DWORD): BOOL; stdcall;
{$EXTERNALSYM LookupPrivilegeNameW}
function LookupPrivilegeName(lpSystemName: LPCTSTR; const lpLuid: LUID;
  lpName: LPTSTR; var cbName: DWORD): BOOL; stdcall;
{$EXTERNALSYM LookupPrivilegeName}

function LookupPrivilegeDisplayNameA(lpSystemName, lpName: LPCSTR;
  lpDisplayName: LPSTR; var cbDisplayName, lpLanguageId: DWORD): BOOL; stdcall;
{$EXTERNALSYM LookupPrivilegeDisplayNameA}
function LookupPrivilegeDisplayNameW(lpSystemName, lpName: LPCWSTR;
  lpDisplayName: LPWSTR; var cbDisplayName, lpLanguageId: DWORD): BOOL; stdcall;
{$EXTERNALSYM LookupPrivilegeDisplayNameW}
function LookupPrivilegeDisplayName(lpSystemName, lpName: LPCTSTR;
  lpDisplayName: LPTSTR; var cbDisplayName, lpLanguageId: DWORD): BOOL; stdcall;
{$EXTERNALSYM LookupPrivilegeDisplayName}

function AllocateLocallyUniqueId(var Luid: LUID): BOOL; stdcall;
{$EXTERNALSYM AllocateLocallyUniqueId}

function BuildCommDCBA(lpDef: LPCSTR; var lpDCB: DCB): BOOL; stdcall;
{$EXTERNALSYM BuildCommDCBA}
function BuildCommDCBW(lpDef: LPCWSTR; var lpDCB: DCB): BOOL; stdcall;
{$EXTERNALSYM BuildCommDCBW}
function BuildCommDCB(lpDef: LPCTSTR; var lpDCB: DCB): BOOL; stdcall;
{$EXTERNALSYM BuildCommDCB}

function BuildCommDCBAndTimeoutsA(lpDef: LPCSTR; var lpDCB: DCB;
  var lpCommTimeouts: COMMTIMEOUTS): BOOL; stdcall;
{$EXTERNALSYM BuildCommDCBAndTimeoutsA}
function BuildCommDCBAndTimeoutsW(lpDef: LPCWSTR; var lpDCB: DCB;
  var lpCommTimeouts: COMMTIMEOUTS): BOOL; stdcall;
{$EXTERNALSYM BuildCommDCBAndTimeoutsW}
function BuildCommDCBAndTimeouts(lpDef: LPCTSTR; var lpDCB: DCB;
  var lpCommTimeouts: COMMTIMEOUTS): BOOL; stdcall;
{$EXTERNALSYM BuildCommDCBAndTimeouts}

function CommConfigDialogA(lpszName: LPCSTR; hWnd: HWND; var lpCC: COMMCONFIG): BOOL; stdcall;
{$EXTERNALSYM CommConfigDialogA}
function CommConfigDialogW(lpszName: LPCWSTR; hWnd: HWND; var lpCC: COMMCONFIG): BOOL; stdcall;
{$EXTERNALSYM CommConfigDialogW}
function CommConfigDialog(lpszName: LPCTSTR; hWnd: HWND; var lpCC: COMMCONFIG): BOOL; stdcall;
{$EXTERNALSYM CommConfigDialog}

function GetDefaultCommConfigA(lpszName: LPCSTR; var lpCC: COMMCONFIG;
  var lpdwSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetDefaultCommConfigA}
function GetDefaultCommConfigW(lpszName: LPCWSTR; var lpCC: COMMCONFIG;
  var lpdwSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetDefaultCommConfigW}
function GetDefaultCommConfig(lpszName: LPCTSTR; var lpCC: COMMCONFIG;
  var lpdwSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetDefaultCommConfig}

function SetDefaultCommConfigA(lpszName: LPCSTR; const lpCC: COMMCONFIG;
  dwSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetDefaultCommConfigA}
function SetDefaultCommConfigW(lpszName: LPCWSTR; const lpCC: COMMCONFIG;
  dwSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetDefaultCommConfigW}
function SetDefaultCommConfig(lpszName: LPCTSTR; const lpCC: COMMCONFIG;
  dwSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetDefaultCommConfig}

const
  MAX_COMPUTERNAME_LENGTH = 15;
  {$EXTERNALSYM MAX_COMPUTERNAME_LENGTH}

function GetComputerNameA(lpBuffer: LPSTR; var nSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetComputerNameA}
function GetComputerNameW(lpBuffer: LPWSTR; var nSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetComputerNameW}
function GetComputerName(lpBuffer: LPTSTR; var nSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetComputerName}

function SetComputerNameA(lpComputerName: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM SetComputerNameA}
function SetComputerNameW(lpComputerName: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM SetComputerNameW}
function SetComputerName(lpComputerName: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM SetComputerName}

type
  _COMPUTER_NAME_FORMAT = (
    ComputerNameNetBIOS,
    ComputerNameDnsHostname,
    ComputerNameDnsDomain,
    ComputerNameDnsFullyQualified,
    ComputerNamePhysicalNetBIOS,
    ComputerNamePhysicalDnsHostname,
    ComputerNamePhysicalDnsDomain,
    ComputerNamePhysicalDnsFullyQualified,
    ComputerNameMax);
  {$EXTERNALSYM _COMPUTER_NAME_FORMAT}
  COMPUTER_NAME_FORMAT = _COMPUTER_NAME_FORMAT;
  {$EXTERNALSYM COMPUTER_NAME_FORMAT}
  TComputerNameFormat = COMPUTER_NAME_FORMAT;

function GetComputerNameExA(NameType: COMPUTER_NAME_FORMAT; lpBuffer: LPSTR;
  var nSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetComputerNameExA}
function GetComputerNameExW(NameType: COMPUTER_NAME_FORMAT; lpBuffer: LPWSTR;
  var nSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetComputerNameExW}
function GetComputerNameEx(NameType: COMPUTER_NAME_FORMAT; lpBuffer: LPTSTR;
  var nSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetComputerNameEx}

function SetComputerNameExA(NameType: COMPUTER_NAME_FORMAT; lpBuffer: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM SetComputerNameExA}
function SetComputerNameExW(NameType: COMPUTER_NAME_FORMAT; lpBuffer: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM SetComputerNameExW}
function SetComputerNameEx(NameType: COMPUTER_NAME_FORMAT; lpBuffer: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM SetComputerNameEx}

function DnsHostnameToComputerNameA(Hostname, ComputerName: LPSTR; var nSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM DnsHostnameToComputerNameA}
function DnsHostnameToComputerNameW(Hostname, ComputerName: LPWSTR; var nSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM DnsHostnameToComputerNameW}
function DnsHostnameToComputerName(Hostname, ComputerName: LPTSTR; var nSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM DnsHostnameToComputerName}

function GetUserNameA(lpBuffer: LPSTR; var nSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetUserNameA}
function GetUserNameW(lpBuffer: LPWSTR; var nSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetUserNameW}
function GetUserName(lpBuffer: LPTSTR; var nSize: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetUserName}

//
// Logon Support APIs
//

const
  LOGON32_LOGON_INTERACTIVE       = 2;
  {$EXTERNALSYM LOGON32_LOGON_INTERACTIVE}
  LOGON32_LOGON_NETWORK           = 3;
  {$EXTERNALSYM LOGON32_LOGON_NETWORK}
  LOGON32_LOGON_BATCH             = 4;
  {$EXTERNALSYM LOGON32_LOGON_BATCH}
  LOGON32_LOGON_SERVICE           = 5;
  {$EXTERNALSYM LOGON32_LOGON_SERVICE}
  LOGON32_LOGON_UNLOCK            = 7;
  {$EXTERNALSYM LOGON32_LOGON_UNLOCK}
  LOGON32_LOGON_NETWORK_CLEARTEXT = 8;
  {$EXTERNALSYM LOGON32_LOGON_NETWORK_CLEARTEXT}
  LOGON32_LOGON_NEW_CREDENTIALS   = 9;
  {$EXTERNALSYM LOGON32_LOGON_NEW_CREDENTIALS}

  LOGON32_PROVIDER_DEFAULT = 0;
  {$EXTERNALSYM LOGON32_PROVIDER_DEFAULT}
  LOGON32_PROVIDER_WINNT35 = 1;
  {$EXTERNALSYM LOGON32_PROVIDER_WINNT35}
  LOGON32_PROVIDER_WINNT40 = 2;
  {$EXTERNALSYM LOGON32_PROVIDER_WINNT40}
  LOGON32_PROVIDER_WINNT50 = 3;
  {$EXTERNALSYM LOGON32_PROVIDER_WINNT50}

function LogonUserA(lpszUsername, lpszDomain, lpszPassword: LPCSTR;
  dwLogonType, dwLogonProvider: DWORD; var phToken: HANDLE): BOOL; stdcall;
{$EXTERNALSYM LogonUserA}
function LogonUserW(lpszUsername, lpszDomain, lpszPassword: LPCWSTR;
  dwLogonType, dwLogonProvider: DWORD; var phToken: HANDLE): BOOL; stdcall;
{$EXTERNALSYM LogonUserW}
function LogonUser(lpszUsername, lpszDomain, lpszPassword: LPCTSTR;
  dwLogonType, dwLogonProvider: DWORD; var phToken: HANDLE): BOOL; stdcall;
{$EXTERNALSYM LogonUser}

function LogonUserExA(lpszUsername, lpszDomain, lpszPassword: LPCSTR;
  dwLogonType, dwLogonProvider: DWORD; var phToken: HANDLE; ppLogonSid: PPSID;
  ppProfileBuffer: PPVOID; pdwProfileLength: LPDWORD; pQuotaLimits: PQUOTA_LIMITS): BOOL; stdcall;
{$EXTERNALSYM LogonUserExA}
function LogonUserExW(lpszUsername, lpszDomain, lpszPassword: LPCWSTR;
  dwLogonType, dwLogonProvider: DWORD; var phToken: HANDLE; ppLogonSid: PPSID;
  ppProfileBuffer: PPVOID; pdwProfileLength: LPDWORD; pQuotaLimits: PQUOTA_LIMITS): BOOL; stdcall;
{$EXTERNALSYM LogonUserExW}
function LogonUserEx(lpszUsername, lpszDomain, lpszPassword: LPCTSTR;
  dwLogonType, dwLogonProvider: DWORD; var phToken: HANDLE; ppLogonSid: PPSID;
  ppProfileBuffer: PPVOID; pdwProfileLength: LPDWORD; pQuotaLimits: PQUOTA_LIMITS): BOOL; stdcall;
{$EXTERNALSYM LogonUserEx}

function ImpersonateLoggedOnUser(hToken: HANDLE): BOOL; stdcall;
{$EXTERNALSYM ImpersonateLoggedOnUser}

function CreateProcessAsUserA(hToken: HANDLE; lpApplicationName: LPCSTR;
  lpCommandLine: LPSTR; lpProcessAttributes: LPSECURITY_ATTRIBUTES;
  lpThreadAttributes: LPSECURITY_ATTRIBUTES; bInheritHandles: BOOL;
  dwCreationFlags: DWORD; lpEnvironment: LPVOID; lpCurrentDirectory: LPCSTR;
  const lpStartupInfo: STARTUPINFOA; var lpProcessInformation: PROCESS_INFORMATION): BOOL; stdcall;
{$EXTERNALSYM CreateProcessAsUserA}
function CreateProcessAsUserW(hToken: HANDLE; lpApplicationName: LPCWSTR;
  lpCommandLine: LPWSTR; lpProcessAttributes: LPSECURITY_ATTRIBUTES;
  lpThreadAttributes: LPSECURITY_ATTRIBUTES; bInheritHandles: BOOL;
  dwCreationFlags: DWORD; lpEnvironment: LPVOID; lpCurrentDirectory: LPCWSTR;
  const lpStartupInfo: STARTUPINFOW; var lpProcessInformation: PROCESS_INFORMATION): BOOL; stdcall;
{$EXTERNALSYM CreateProcessAsUserW}
function CreateProcessAsUser(hToken: HANDLE; lpApplicationName: LPCTSTR;
  lpCommandLine: LPTSTR; lpProcessAttributes: LPSECURITY_ATTRIBUTES;
  lpThreadAttributes: LPSECURITY_ATTRIBUTES; bInheritHandles: BOOL;
  dwCreationFlags: DWORD; lpEnvironment: LPVOID; lpCurrentDirectory: LPCTSTR;
  const lpStartupInfo: STARTUPINFO; var lpProcessInformation: PROCESS_INFORMATION): BOOL; stdcall;
{$EXTERNALSYM CreateProcessAsUser}

//
// LogonFlags
//

const
  LOGON_WITH_PROFILE         = $00000001;
  {$EXTERNALSYM LOGON_WITH_PROFILE}
  LOGON_NETCREDENTIALS_ONLY  = $00000002;
  {$EXTERNALSYM LOGON_NETCREDENTIALS_ONLY}
  LOGON_ZERO_PASSWORD_BUFFER = DWORD($80000000);
  {$EXTERNALSYM LOGON_ZERO_PASSWORD_BUFFER}

function CreateProcessWithLogonW(lpUsername, lpDomain, lpPassword: LPCWSTR;
  dwLogonFlags: DWORD; lpApplicationName: LPCWSTR; lpCommandLine: LPWSTR;
  dwCreationFlags: DWORD; lpEnvironment: LPVOID; lpCurrentDirectory: LPCWSTR;
  const lpStartupInfo: STARTUPINFOW; var lpProcessInformation: PROCESS_INFORMATION): BOOL; stdcall;
{$EXTERNALSYM CreateProcessWithLogonW}

function CreateProcessWithTokenW(hToken: HANDLE; dwLogonFlags: DWORD; lpApplicationName: LPCWSTR; lpCommandLine: LPWSTR;
  dwCreationFlags: DWORD; lpEnvironment: LPVOID; lpCurrentDirectory: LPCWSTR; lpStartupInfo: LPSTARTUPINFOW;
  lpProcessInformation: LPPROCESS_INFORMATION): BOOL; stdcall;
{$EXTERNALSYM CreateProcessWithTokenW}

function ImpersonateAnonymousToken(ThreadHandle: HANDLE): BOOL; stdcall;
{$EXTERNALSYM ImpersonateAnonymousToken}

function DuplicateTokenEx(hExistingToken: HANDLE; dwDesiredAccess: DWORD;
  lpTokenAttributes: LPSECURITY_ATTRIBUTES; ImpersonationLevel: SECURITY_IMPERSONATION_LEVEL;
  TokenType: TOKEN_TYPE; var phNewToken: HANDLE): BOOL; stdcall;
{$EXTERNALSYM DuplicateTokenEx}

function CreateRestrictedToken(ExistingTokenHandle: HANDLE; Flags: DWORD;
  DisableSidCount: DWORD; SidsToDisable: PSID_AND_ATTRIBUTES;
  DeletePrivilegeCount: DWORD; PrivilegesToDelete: PLUID_AND_ATTRIBUTES;
  RestrictedSidCount: DWORD; SidsToRestrict: PSID_AND_ATTRIBUTES;
  var NewTokenHandle: HANDLE): BOOL; stdcall;
{$EXTERNALSYM CreateRestrictedToken}

function IsTokenRestricted(TokenHandle: HANDLE): BOOL; stdcall;
{$EXTERNALSYM IsTokenRestricted}

function CheckTokenMembership(TokenHandle: HANDLE; SidToCheck: PSID; var IsMember: BOOL): BOOL; stdcall;
{$EXTERNALSYM CheckTokenMembership}

function IsTokenUntrusted(TokenHandle: HANDLE): BOOL; stdcall;
{$EXTERNALSYM IsTokenUntrusted}

//
// Thread pool API's
//

type
  WAITORTIMERCALLBACK = WAITORTIMERCALLBACKFUNC;
  {$EXTERNALSYM WAITORTIMERCALLBACK}
  TWaitOrTimerCallback = WAITORTIMERCALLBACKFUNC;

function RegisterWaitForSingleObject(var phNewWaitObject: HANDLE; hObject: HANDLE;
  Callback: WAITORTIMERCALLBACK; Context: PVOID; dwMilliseconds, dwFlags: ULONG): BOOL; stdcall;
{$EXTERNALSYM RegisterWaitForSingleObject}

function RegisterWaitForSingleObjectEx(hObject: HANDLE;
  Callback: WAITORTIMERCALLBACK; Context: PVOID; dwMilliseconds, dwFlags: ULONG): HANDLE; stdcall;
{$EXTERNALSYM RegisterWaitForSingleObjectEx}

function UnregisterWait(WaitHandle: HANDLE): BOOL; stdcall;
{$EXTERNALSYM UnregisterWait}

function UnregisterWaitEx(WaitHandle, CompletionEvent: HANDLE): BOOL; stdcall;
{$EXTERNALSYM UnregisterWaitEx}

function QueueUserWorkItem(Function_: LPTHREAD_START_ROUTINE; Context: PVOID;
  Flags: ULONG): BOOL; stdcall;
{$EXTERNALSYM QueueUserWorkItem}

function BindIoCompletionCallback(FileHandle: HANDLE;
  Function_: LPOVERLAPPED_COMPLETION_ROUTINE; Flags: ULONG): BOOL; stdcall;
{$EXTERNALSYM BindIoCompletionCallback}

function CreateTimerQueue: HANDLE; stdcall;
{$EXTERNALSYM CreateTimerQueue}

function CreateTimerQueueTimer(var phNewTimer: HANDLE; TimerQueue: HANDLE;
  Callback: WAITORTIMERCALLBACK; Parameter: PVOID; DueTime, Period: DWORD;
  Flags: ULONG): BOOL; stdcall;
{$EXTERNALSYM CreateTimerQueueTimer}

function ChangeTimerQueueTimer(TimerQueue, Timer: HANDLE; DueTime, Period: ULONG): BOOL; stdcall;
{$EXTERNALSYM ChangeTimerQueueTimer}

function DeleteTimerQueueTimer(TimerQueue, Timer, CompletionEvent: HANDLE): BOOL; stdcall;
{$EXTERNALSYM DeleteTimerQueueTimer}

function DeleteTimerQueueEx(TimerQueue, CompletionEvent: HANDLE): BOOL; stdcall;
{$EXTERNALSYM DeleteTimerQueueEx}

function SetTimerQueueTimer(TimerQueue, Callback: WAITORTIMERCALLBACK;
  Parameter: PVOID; DueTime, Period: DWORD; PreferIo: BOOL): HANDLE; stdcall;
{$EXTERNALSYM SetTimerQueueTimer}

function CancelTimerQueueTimer(TimerQueue, Timer: HANDLE): BOOL; stdcall;
{$EXTERNALSYM CancelTimerQueueTimer}

function DeleteTimerQueue(TimerQueue: HANDLE): BOOL; stdcall;
{$EXTERNALSYM DeleteTimerQueue}

//
// Plug-and-Play API's
//

const
  HW_PROFILE_GUIDLEN = 39; // 36-characters plus NULL terminator
  {$EXTERNALSYM HW_PROFILE_GUIDLEN}
  MAX_PROFILE_LEN    = 80;
  {$EXTERNALSYM MAX_PROFILE_LEN}

  DOCKINFO_UNDOCKED      = $1;
  {$EXTERNALSYM DOCKINFO_UNDOCKED}
  DOCKINFO_DOCKED        = $2;
  {$EXTERNALSYM DOCKINFO_DOCKED}
  DOCKINFO_USER_SUPPLIED = $4;
  {$EXTERNALSYM DOCKINFO_USER_SUPPLIED}
  DOCKINFO_USER_UNDOCKED = DOCKINFO_USER_SUPPLIED or DOCKINFO_UNDOCKED;
  {$EXTERNALSYM DOCKINFO_USER_UNDOCKED}
  DOCKINFO_USER_DOCKED   = DOCKINFO_USER_SUPPLIED or DOCKINFO_DOCKED;
  {$EXTERNALSYM DOCKINFO_USER_DOCKED}

type
  LPHW_PROFILE_INFOA = ^HW_PROFILE_INFOA;
  {$EXTERNALSYM LPHW_PROFILE_INFOA}
  tagHW_PROFILE_INFOA = record
    dwDockInfo: DWORD;
    szHwProfileGuid: array [0..HW_PROFILE_GUIDLEN - 1] of AnsiChar;
    szHwProfileName: array [0..MAX_PROFILE_LEN - 1] of AnsiChar;
  end;
  {$EXTERNALSYM tagHW_PROFILE_INFOA}
  HW_PROFILE_INFOA = tagHW_PROFILE_INFOA;
  {$EXTERNALSYM HW_PROFILE_INFOA}
  THWProfileInfoA = HW_PROFILE_INFOA;
  PHWProfileInfoA = LPHW_PROFILE_INFOA;

  LPHW_PROFILE_INFOW = ^HW_PROFILE_INFOW;
  {$EXTERNALSYM LPHW_PROFILE_INFOW}
  tagHW_PROFILE_INFOW = record
    dwDockInfo: DWORD;
    szHwProfileGuid: array [0..HW_PROFILE_GUIDLEN - 1] of WCHAR;
    szHwProfileName: array [0..MAX_PROFILE_LEN - 1] of WCHAR;
  end;
  {$EXTERNALSYM tagHW_PROFILE_INFOW}
  HW_PROFILE_INFOW = tagHW_PROFILE_INFOW;
  {$EXTERNALSYM HW_PROFILE_INFOW}
  THWProfileInfoW = HW_PROFILE_INFOW;
  PHWProfileInfoW = LPHW_PROFILE_INFOW;

  {$IFDEF UNICODE}
  HW_PROFILE_INFO = HW_PROFILE_INFOW;
  {$EXTERNALSYM HW_PROFILE_INFO}
  LPHW_PROFILE_INFO = LPHW_PROFILE_INFOW;
  {$EXTERNALSYM LPHW_PROFILE_INFO}
  THWProfileInfo = THWProfileInfoW;
  PHWProfileInfo = PHWProfileInfoW;
  {$ELSE}
  HW_PROFILE_INFO = HW_PROFILE_INFOA;
  {$EXTERNALSYM HW_PROFILE_INFO}
  LPHW_PROFILE_INFO = LPHW_PROFILE_INFOA;
  {$EXTERNALSYM LPHW_PROFILE_INFO}
  THWProfileInfo = THWProfileInfoA;
  PHWProfileInfo = PHWProfileInfoA;
  {$ENDIF UNICODE}

function GetCurrentHwProfileA(var lpHwProfileInfo: HW_PROFILE_INFOA): BOOL; stdcall;
{$EXTERNALSYM GetCurrentHwProfileA}
function GetCurrentHwProfileW(var lpHwProfileInfo: HW_PROFILE_INFOW): BOOL; stdcall;
{$EXTERNALSYM GetCurrentHwProfileW}
function GetCurrentHwProfile(var lpHwProfileInfo: HW_PROFILE_INFO): BOOL; stdcall;
{$EXTERNALSYM GetCurrentHwProfile}

//
// Performance counter API's
//

function QueryPerformanceCounter(var lpPerformanceCount: LARGE_INTEGER): BOOL; stdcall;
{$EXTERNALSYM QueryPerformanceCounter}

function QueryPerformanceFrequency(var lpFrequency: LARGE_INTEGER): BOOL; stdcall;
{$EXTERNALSYM QueryPerformanceFrequency}

function GetVersionExA(lpVersionInformation: LPOSVERSIONINFOA): BOOL; stdcall;
{$EXTERNALSYM GetVersionExA}
function GetVersionExW(lpVersionInformation: LPOSVERSIONINFOW): BOOL; stdcall;
{$EXTERNALSYM GetVersionExW}
function GetVersionEx(lpVersionInformation: LPOSVERSIONINFO): BOOL; stdcall;
{$EXTERNALSYM GetVersionEx}

function VerifyVersionInfoA(var lpVersionInformation: OSVERSIONINFOEXA;
  dwTypeMask: DWORD; dwlConditionMask: DWORDLONG): BOOL; stdcall;
{$EXTERNALSYM VerifyVersionInfoA}
function VerifyVersionInfoW(var lpVersionInformation: OSVERSIONINFOEXW;
  dwTypeMask: DWORD; dwlConditionMask: DWORDLONG): BOOL; stdcall;
{$EXTERNALSYM VerifyVersionInfoW}
function VerifyVersionInfo(var lpVersionInformation: OSVERSIONINFOEX;
  dwTypeMask: DWORD; dwlConditionMask: DWORDLONG): BOOL; stdcall;
{$EXTERNALSYM VerifyVersionInfo}

// DOS and OS/2 Compatible Error Code definitions returned by the Win32 Base
// API functions.
//

// #include <winerror.h>

// Abnormal termination codes

const
  TC_NORMAL  = 0;
  {$EXTERNALSYM TC_NORMAL}
  TC_HARDERR = 1;
  {$EXTERNALSYM TC_HARDERR}
  TC_GP_TRAP = 2;
  {$EXTERNALSYM TC_GP_TRAP}
  TC_SIGNAL  = 3;
  {$EXTERNALSYM TC_SIGNAL}

//
// Power Management APIs
//

  AC_LINE_OFFLINE      = $00;
  {$EXTERNALSYM AC_LINE_OFFLINE}
  AC_LINE_ONLINE       = $01;
  {$EXTERNALSYM AC_LINE_ONLINE}
  AC_LINE_BACKUP_POWER = $02;
  {$EXTERNALSYM AC_LINE_BACKUP_POWER}
  AC_LINE_UNKNOWN      = $FF;
  {$EXTERNALSYM AC_LINE_UNKNOWN}

  BATTERY_FLAG_HIGH       = $01;
  {$EXTERNALSYM BATTERY_FLAG_HIGH}
  BATTERY_FLAG_LOW        = $02;
  {$EXTERNALSYM BATTERY_FLAG_LOW}
  BATTERY_FLAG_CRITICAL   = $04;
  {$EXTERNALSYM BATTERY_FLAG_CRITICAL}
  BATTERY_FLAG_CHARGING   = $08;
  {$EXTERNALSYM BATTERY_FLAG_CHARGING}
  BATTERY_FLAG_NO_BATTERY = $80;
  {$EXTERNALSYM BATTERY_FLAG_NO_BATTERY}
  BATTERY_FLAG_UNKNOWN    = $FF;
  {$EXTERNALSYM BATTERY_FLAG_UNKNOWN}

  BATTERY_PERCENTAGE_UNKNOWN = $FF;
  {$EXTERNALSYM BATTERY_PERCENTAGE_UNKNOWN}

  BATTERY_LIFE_UNKNOWN = DWORD($FFFFFFFF);
  {$EXTERNALSYM BATTERY_LIFE_UNKNOWN}

type
  LPSYSTEM_POWER_STATUS = ^SYSTEM_POWER_STATUS;
  {$EXTERNALSYM LPSYSTEM_POWER_STATUS}
  _SYSTEM_POWER_STATUS = record
    ACLineStatus: BYTE;
    BatteryFlag: BYTE;
    BatteryLifePercent: BYTE;
    Reserved1: BYTE;
    BatteryLifeTime: DWORD;
    BatteryFullLifeTime: DWORD;
  end;
  {$EXTERNALSYM _SYSTEM_POWER_STATUS}
  SYSTEM_POWER_STATUS = _SYSTEM_POWER_STATUS;
  {$EXTERNALSYM SYSTEM_POWER_STATUS}
  TSystemPowerStatus = SYSTEM_POWER_STATUS;
  PSystemPowerStatus = LPSYSTEM_POWER_STATUS;

function GetSystemPowerStatus(var lpSystemPowerStatus: SYSTEM_POWER_STATUS): BOOL; stdcall;
{$EXTERNALSYM GetSystemPowerStatus}

function SetSystemPowerState(fSuspend, fForce: BOOL): BOOL; stdcall;
{$EXTERNALSYM SetSystemPowerState}

//
// Very Large Memory API Subset
//

function AllocateUserPhysicalPages(hProcess: HANDLE; var NumberOfPages: ULONG_PTR;
  PageArray: PULONG_PTR): BOOL; stdcall;
{$EXTERNALSYM AllocateUserPhysicalPages}

function FreeUserPhysicalPages(hProcess: HANDLE; var NumberOfPages: ULONG_PTR;
  PageArray: PULONG_PTR): BOOL; stdcall;
{$EXTERNALSYM FreeUserPhysicalPages}

function MapUserPhysicalPages(VirtualAddress: PVOID; NumberOfPages: ULONG_PTR;
  PageArray: PULONG_PTR): BOOL; stdcall;
{$EXTERNALSYM MapUserPhysicalPages}

function MapUserPhysicalPagesScatter(VirtualAddresses: PVOID; NumberOfPages: ULONG_PTR;
  PageArray: PULONG_PTR): BOOL; stdcall;
{$EXTERNALSYM MapUserPhysicalPagesScatter}

function CreateJobObjectA(lpJobAttributes: LPSECURITY_ATTRIBUTES; lpName: LPCSTR): HANDLE; stdcall;
{$EXTERNALSYM CreateJobObjectA}
function CreateJobObjectW(lpJobAttributes: LPSECURITY_ATTRIBUTES; lpName: LPCWSTR): HANDLE; stdcall;
{$EXTERNALSYM CreateJobObjectW}
function CreateJobObject(lpJobAttributes: LPSECURITY_ATTRIBUTES; lpName: LPCTSTR): HANDLE; stdcall;
{$EXTERNALSYM CreateJobObject}

function OpenJobObjectA(dwDesiredAccess: DWORD; bInheritHandle: BOOL; lpName: LPCSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenJobObjectA}
function OpenJobObjectW(dwDesiredAccess: DWORD; bInheritHandle: BOOL; lpName: LPCWSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenJobObjectW}
function OpenJobObject(dwDesiredAccess: DWORD; bInheritHandle: BOOL; lpName: LPCTSTR): HANDLE; stdcall;
{$EXTERNALSYM OpenJobObject}

function AssignProcessToJobObject(hJob, hProcess: HANDLE): BOOL; stdcall;
{$EXTERNALSYM AssignProcessToJobObject}

function TerminateJobObject(hJob: HANDLE; uExitCode: UINT): BOOL; stdcall;
{$EXTERNALSYM TerminateJobObject}

function QueryInformationJobObject(hJob: HANDLE; JobObjectInformationClass: JOBOBJECTINFOCLASS;
  lpJobObjectInformation: LPVOID; cbJobObjectInformationLength: DWORD;
  lpReturnLength: LPDWORD): BOOL; stdcall;
{$EXTERNALSYM QueryInformationJobObject}

function SetInformationJobObject(hJob: HANDLE; JobObjectInformationClass: JOBOBJECTINFOCLASS;
  lpJobObjectInformation: LPVOID; cbJobObjectInformationLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM SetInformationJobObject}

function IsProcessInJob(ProcessHandle, JobHandle: HANDLE; var Result_: BOOL): BOOL; stdcall;
{$EXTERNALSYM IsProcessInJob}

function CreateJobSet(NumJob: ULONG; UserJobSet: PJOB_SET_ARRAY; Flags: ULONG): BOOL; stdcall;
{$EXTERNALSYM CreateJobSet}

function AddVectoredExceptionHandler(FirstHandler: ULONG;
  VectoredHandler: PVECTORED_EXCEPTION_HANDLER): PVOID; stdcall;
{$EXTERNALSYM AddVectoredExceptionHandler}

function RemoveVectoredExceptionHandler(VectoredHandlerHandle: PVOID): ULONG; stdcall;
{$EXTERNALSYM RemoveVectoredExceptionHandler}

//
// New Volume Mount Point API.
//

function FindFirstVolumeA(lpszVolumeName: LPSTR; cchBufferLength: DWORD): HANDLE; stdcall;
{$EXTERNALSYM FindFirstVolumeA}
function FindFirstVolumeW(lpszVolumeName: LPWSTR; cchBufferLength: DWORD): HANDLE; stdcall;
{$EXTERNALSYM FindFirstVolumeW}
function FindFirstVolume(lpszVolumeName: LPTSTR; cchBufferLength: DWORD): HANDLE; stdcall;
{$EXTERNALSYM FindFirstVolume}

function FindNextVolumeA(hFindVolume: HANDLE; lpszVolumeName: LPSTR;
  cchBufferLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM FindNextVolumeA}
function FindNextVolumeW(hFindVolume: HANDLE; lpszVolumeName: LPWSTR;
  cchBufferLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM FindNextVolumeW}
function FindNextVolume(hFindVolume: HANDLE; lpszVolumeName: LPTSTR;
  cchBufferLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM FindNextVolume}

function FindVolumeClose(hFindVolume: HANDLE): BOOL; stdcall;
{$EXTERNALSYM FindVolumeClose}

function FindFirstVolumeMountPointA(lpszRootPathName: LPCSTR;
  lpszVolumeMountPoint: LPSTR; cchBufferLength: DWORD): HANDLE; stdcall;
{$EXTERNALSYM FindFirstVolumeMountPointA}
function FindFirstVolumeMountPointW(lpszRootPathName: LPCWSTR;
  lpszVolumeMountPoint: LPWSTR; cchBufferLength: DWORD): HANDLE; stdcall;
{$EXTERNALSYM FindFirstVolumeMountPointW}
function FindFirstVolumeMountPoint(lpszRootPathName: LPCTSTR;
  lpszVolumeMountPoint: LPTSTR; cchBufferLength: DWORD): HANDLE; stdcall;
{$EXTERNALSYM FindFirstVolumeMountPoint}

function FindNextVolumeMountPointA(hFindVolumeMountPoint: HANDLE;
  lpszVolumeMountPoint: LPSTR; cchBufferLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM FindNextVolumeMountPointA}
function FindNextVolumeMountPointW(hFindVolumeMountPoint: HANDLE;
  lpszVolumeMountPoint: LPWSTR; cchBufferLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM FindNextVolumeMountPointW}
function FindNextVolumeMountPoint(hFindVolumeMountPoint: HANDLE;
  lpszVolumeMountPoint: LPTSTR; cchBufferLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM FindNextVolumeMountPoint}

function FindVolumeMountPointClose(hFindVolumeMountPoint: HANDLE): BOOL; stdcall;
{$EXTERNALSYM FindVolumeMountPointClose}

function SetVolumeMountPointA(lpszVolumeMountPoint, lpszVolumeName: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM SetVolumeMountPointA}
function SetVolumeMountPointW(lpszVolumeMountPoint, lpszVolumeName: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM SetVolumeMountPointW}
function SetVolumeMountPoint(lpszVolumeMountPoint, lpszVolumeName: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM SetVolumeMountPoint}

function DeleteVolumeMountPointA(lpszVolumeMountPoint: LPCSTR): BOOL; stdcall;
{$EXTERNALSYM DeleteVolumeMountPointA}
function DeleteVolumeMountPointW(lpszVolumeMountPoint: LPCWSTR): BOOL; stdcall;
{$EXTERNALSYM DeleteVolumeMountPointW}
function DeleteVolumeMountPoint(lpszVolumeMountPoint: LPCTSTR): BOOL; stdcall;
{$EXTERNALSYM DeleteVolumeMountPoint}

function GetVolumeNameForVolumeMountPointA(lpszVolumeMountPoint: LPCSTR;
  lpszVolumeName: LPSTR; cchBufferLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetVolumeNameForVolumeMountPointA}
function GetVolumeNameForVolumeMountPointW(lpszVolumeMountPoint: LPCWSTR;
  lpszVolumeName: LPWSTR; cchBufferLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetVolumeNameForVolumeMountPointW}
function GetVolumeNameForVolumeMountPoint(lpszVolumeMountPoint: LPCTSTR;
  lpszVolumeName: LPTSTR; cchBufferLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetVolumeNameForVolumeMountPoint}

function GetVolumePathNameA(lpszFileName: LPCSTR; lpszVolumePathName: LPSTR;
  cchBufferLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetVolumePathNameA}
function GetVolumePathNameW(lpszFileName: LPCWSTR; lpszVolumePathName: LPWSTR;
  cchBufferLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetVolumePathNameW}
function GetVolumePathName(lpszFileName: LPCTSTR; lpszVolumePathName: LPTSTR;
  cchBufferLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetVolumePathName}

function GetVolumePathNamesForVolumeNameA(lpszVolumeName, lpszVolumePathNames: LPCSTR;
  cchBufferLength: DWORD; var lpcchReturnLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetVolumePathNamesForVolumeNameA}
function GetVolumePathNamesForVolumeNameW(lpszVolumeName, lpszVolumePathNames: LPCWSTR;
  cchBufferLength: DWORD; var lpcchReturnLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetVolumePathNamesForVolumeNameW}
function GetVolumePathNamesForVolumeName(lpszVolumeName, lpszVolumePathNames: LPCTSTR;
  cchBufferLength: DWORD; var lpcchReturnLength: DWORD): BOOL; stdcall;
{$EXTERNALSYM GetVolumePathNamesForVolumeName}

const
  ACTCTX_FLAG_PROCESSOR_ARCHITECTURE_VALID  = $00000001;
  {$EXTERNALSYM ACTCTX_FLAG_PROCESSOR_ARCHITECTURE_VALID}
  ACTCTX_FLAG_LANGID_VALID                  = $00000002;
  {$EXTERNALSYM ACTCTX_FLAG_LANGID_VALID}
  ACTCTX_FLAG_ASSEMBLY_DIRECTORY_VALID      = $00000004;
  {$EXTERNALSYM ACTCTX_FLAG_ASSEMBLY_DIRECTORY_VALID}
  ACTCTX_FLAG_RESOURCE_NAME_VALID           = $00000008;
  {$EXTERNALSYM ACTCTX_FLAG_RESOURCE_NAME_VALID}
  ACTCTX_FLAG_SET_PROCESS_DEFAULT           = $00000010;
  {$EXTERNALSYM ACTCTX_FLAG_SET_PROCESS_DEFAULT}
  ACTCTX_FLAG_APPLICATION_NAME_VALID        = $00000020;
  {$EXTERNALSYM ACTCTX_FLAG_APPLICATION_NAME_VALID}
  ACTCTX_FLAG_SOURCE_IS_ASSEMBLYREF         = $00000040;
  {$EXTERNALSYM ACTCTX_FLAG_SOURCE_IS_ASSEMBLYREF}
  ACTCTX_FLAG_HMODULE_VALID                 = $00000080;
  {$EXTERNALSYM ACTCTX_FLAG_HMODULE_VALID}

type
  tagACTCTXA = record
    cbSize: ULONG;
    dwFlags: DWORD;
    lpSource: LPCSTR;
    wProcessorArchitecture: USHORT;
    wLangId: LANGID;
    lpAssemblyDirectory: LPCSTR;
    lpResourceName: LPCSTR;
    lpApplicationName: LPCSTR;
    hModule: HMODULE;
  end;
  {$EXTERNALSYM tagACTCTXA}
  ACTCTXA = tagACTCTXA;
  {$EXTERNALSYM ACTCTXA}
  PACTCTXA = ^ACTCTXA;
  {$EXTERNALSYM PACTCTXA}
  TActCtxA = ACTCTXA;

  tagACTCTXW = record
    cbSize: ULONG;
    dwFlags: DWORD;
    lpSource: LPCWSTR;
    wProcessorArchitecture: USHORT;
    wLangId: LANGID;
    lpAssemblyDirectory: LPCWSTR;
    lpResourceName: LPCWSTR;
    lpApplicationName: LPCWSTR;
    hModule: HMODULE;
  end;
  {$EXTERNALSYM tagACTCTXW}
  ACTCTXW = tagACTCTXW;
  {$EXTERNALSYM ACTCTXW}
  PACTCTXW = ^ACTCTXW;
  {$EXTERNALSYM PACTCTXW}
  TActCtxW = ACTCTXW;

  {$IFDEF UNICODE}
  ACTCTX = ACTCTXW;
  {$EXTERNALSYM ACTCTX}
  PACTCTX = PACTCTXW;
  {$EXTERNALSYM PACTCTX}
  TActCtx = TActCtxW;
  {$ELSE}
  ACTCTX = ACTCTXA;
  {$EXTERNALSYM ACTCTX}
  PACTCTX = PACTCTXA;
  {$EXTERNALSYM PACTCTX}
  TActCtx = TActCtxA;
  {$ENDIF UNICODE}

function CreateActCtxA(var pActCtx: ACTCTXA): HANDLE; stdcall;
{$EXTERNALSYM CreateActCtxA}
function CreateActCtxW(var pActCtx: ACTCTXW): HANDLE; stdcall;
{$EXTERNALSYM CreateActCtxW}
function CreateActCtx(var pActCtx: ACTCTX): HANDLE; stdcall;
{$EXTERNALSYM CreateActCtx}

procedure AddRefActCtx(hActCtx: HANDLE); stdcall;
{$EXTERNALSYM AddRefActCtx}

procedure ReleaseActCtx(hActCtx: HANDLE); stdcall;
{$EXTERNALSYM ReleaseActCtx}

function ZombifyActCtx(hActCtx: HANDLE): BOOL; stdcall;
{$EXTERNALSYM ZombifyActCtx}

function ActivateActCtx(hActCtx: HANDLE; var lpCookie: ULONG_PTR): BOOL; stdcall;
{$EXTERNALSYM ActivateActCtx}

const
  DEACTIVATE_ACTCTX_FLAG_FORCE_EARLY_DEACTIVATION = $00000001;
  {$EXTERNALSYM DEACTIVATE_ACTCTX_FLAG_FORCE_EARLY_DEACTIVATION}

function DeactivateActCtx(dwFlags: DWORD; ulCookie: ULONG_PTR): BOOL; stdcall;
{$EXTERNALSYM DeactivateActCtx}

function GetCurrentActCtx(var lphActCtx: HANDLE): BOOL; stdcall;
{$EXTERNALSYM GetCurrentActCtx}

type
  tagACTCTX_SECTION_KEYED_DATA_2600 = record
    cbSize: ULONG;
    ulDataFormatVersion: ULONG;
    lpData: PVOID;
    ulLength: ULONG;
    lpSectionGlobalData: PVOID;
    ulSectionGlobalDataLength: ULONG;
    lpSectionBase: PVOID;
    ulSectionTotalLength: ULONG;
    hActCtx: HANDLE;
    ulAssemblyRosterIndex: ULONG;
  end;
  {$EXTERNALSYM tagACTCTX_SECTION_KEYED_DATA_2600}
  ACTCTX_SECTION_KEYED_DATA_2600 = tagACTCTX_SECTION_KEYED_DATA_2600;
  {$EXTERNALSYM ACTCTX_SECTION_KEYED_DATA_2600}
  PACTCTX_SECTION_KEYED_DATA_2600 = ^ACTCTX_SECTION_KEYED_DATA_2600;
  {$EXTERNALSYM PACTCTX_SECTION_KEYED_DATA_2600}
  PCACTCTX_SECTION_KEYED_DATA_2600 = ^ACTCTX_SECTION_KEYED_DATA_2600;
  {$EXTERNALSYM PCACTCTX_SECTION_KEYED_DATA_2600}
  TActCtxSectionKeyedData2600 = ACTCTX_SECTION_KEYED_DATA_2600;
  PActCtxSectionKeyedData2600 = PACTCTX_SECTION_KEYED_DATA_2600;

  tagACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA = record
    lpInformation: PVOID;
    lpSectionBase: PVOID;
    ulSectionLength: ULONG;
    lpSectionGlobalDataBase: PVOID;
    ulSectionGlobalDataLength: ULONG;
  end;
  {$EXTERNALSYM tagACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA}
  ACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA = tagACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA;
  {$EXTERNALSYM ACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA}
  PACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA = ^ACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA;
  {$EXTERNALSYM PACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA}
  PCACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA = ^ACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA;
  {$EXTERNALSYM PCACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA}
  TActCtxSectionKeyedDataAssemblyMetadata = ACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA;
  PActCtxSectionKeyedDataAssemblyMetadata = PACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA;

  tagACTCTX_SECTION_KEYED_DATA = record
    cbSize: ULONG;
    ulDataFormatVersion: ULONG;
    lpData: PVOID;
    ulLength: ULONG;
    lpSectionGlobalData: PVOID;
    ulSectionGlobalDataLength: ULONG;
    lpSectionBase: PVOID;
    ulSectionTotalLength: ULONG;
    hActCtx: HANDLE;
    ulAssemblyRosterIndex: ULONG;
    // 2600 stops here
    ulFlags: ULONG;
    AssemblyMetadata: ACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA;
  end;
  {$EXTERNALSYM tagACTCTX_SECTION_KEYED_DATA}
  ACTCTX_SECTION_KEYED_DATA = tagACTCTX_SECTION_KEYED_DATA;
  {$EXTERNALSYM ACTCTX_SECTION_KEYED_DATA}
  PACTCTX_SECTION_KEYED_DATA = ^ACTCTX_SECTION_KEYED_DATA;
  {$EXTERNALSYM PACTCTX_SECTION_KEYED_DATA}
  PCACTCTX_SECTION_KEYED_DATA = ^ACTCTX_SECTION_KEYED_DATA;
  {$EXTERNALSYM PCACTCTX_SECTION_KEYED_DATA}
  TActCtxSectionKeyedData = ACTCTX_SECTION_KEYED_DATA;
  PActCtxSectionKeyedData = PACTCTX_SECTION_KEYED_DATA;

const
  FIND_ACTCTX_SECTION_KEY_RETURN_HACTCTX = $00000001;
  {$EXTERNALSYM FIND_ACTCTX_SECTION_KEY_RETURN_HACTCTX}
  FIND_ACTCTX_SECTION_KEY_RETURN_FLAGS   = $00000002;
  {$EXTERNALSYM FIND_ACTCTX_SECTION_KEY_RETURN_FLAGS}
  FIND_ACTCTX_SECTION_KEY_RETURN_ASSEMBLY_METADATA = $00000004;
  {$EXTERNALSYM FIND_ACTCTX_SECTION_KEY_RETURN_ASSEMBLY_METADATA}

function FindActCtxSectionStringA(dwFlags: DWORD; const lpExtensionGuid: TGUID;
  ulSectionId: ULONG; lpStringToFind: LPCSTR; ReturnedData: PACTCTX_SECTION_KEYED_DATA): BOOL; stdcall;
{$EXTERNALSYM FindActCtxSectionStringA}
function FindActCtxSectionStringW(dwFlags: DWORD; const lpExtensionGuid: TGUID;
  ulSectionId: ULONG; lpStringToFind: LPCWSTR; ReturnedData: PACTCTX_SECTION_KEYED_DATA): BOOL; stdcall;
{$EXTERNALSYM FindActCtxSectionStringW}
function FindActCtxSectionString(dwFlags: DWORD; const lpExtensionGuid: TGUID;
  ulSectionId: ULONG; lpStringToFind: LPCTSTR; ReturnedData: PACTCTX_SECTION_KEYED_DATA): BOOL; stdcall;
{$EXTERNALSYM FindActCtxSectionString}

function FindActCtxSectionGuid(dwFlags: DWORD; const lpExtensionGuid: TGUID;
  ulSectionId: ULONG; const lpGuidToFind: TGUID; ReturnedData: PACTCTX_SECTION_KEYED_DATA): BOOL; stdcall;
{$EXTERNALSYM FindActCtxSectionGuid}

type
  _ACTIVATION_CONTEXT_BASIC_INFORMATION = record
    hActCtx: HANDLE;
    dwFlags: DWORD;
  end;
  {$EXTERNALSYM _ACTIVATION_CONTEXT_BASIC_INFORMATION}
  ACTIVATION_CONTEXT_BASIC_INFORMATION = _ACTIVATION_CONTEXT_BASIC_INFORMATION;
  {$EXTERNALSYM ACTIVATION_CONTEXT_BASIC_INFORMATION}
  PACTIVATION_CONTEXT_BASIC_INFORMATION = ^ACTIVATION_CONTEXT_BASIC_INFORMATION;
  {$EXTERNALSYM PACTIVATION_CONTEXT_BASIC_INFORMATION}
  TActivationContextBasicInformation = ACTIVATION_CONTEXT_BASIC_INFORMATION;
  PActivationContextBasicInformation = PACTIVATION_CONTEXT_BASIC_INFORMATION;

  PCACTIVATION_CONTEXT_BASIC_INFORMATION = ^_ACTIVATION_CONTEXT_BASIC_INFORMATION;
  {$EXTERNALSYM PCACTIVATION_CONTEXT_BASIC_INFORMATION}

const
  ACTIVATION_CONTEXT_BASIC_INFORMATION_DEFINED = 1;
  {$EXTERNALSYM ACTIVATION_CONTEXT_BASIC_INFORMATION_DEFINED}

  QUERY_ACTCTX_FLAG_USE_ACTIVE_ACTCTX = $00000004;
  {$EXTERNALSYM QUERY_ACTCTX_FLAG_USE_ACTIVE_ACTCTX}
  QUERY_ACTCTX_FLAG_ACTCTX_IS_HMODULE = $00000008;
  {$EXTERNALSYM QUERY_ACTCTX_FLAG_ACTCTX_IS_HMODULE}
  QUERY_ACTCTX_FLAG_ACTCTX_IS_ADDRESS = $00000010;
  {$EXTERNALSYM QUERY_ACTCTX_FLAG_ACTCTX_IS_ADDRESS}
  QUERY_ACTCTX_FLAG_NO_ADDREF         = $80000000;
  {$EXTERNALSYM QUERY_ACTCTX_FLAG_NO_ADDREF}

//
// switch (ulInfoClass)
//
//  case ActivationContextBasicInformation:
//    pvSubInstance == NULL
//    pvBuffer is of type PACTIVATION_CONTEXT_BASIC_INFORMATION
//
//  case ActivationContextDetailedInformation:
//    pvSubInstance == NULL
//    pvBuffer is of type PACTIVATION_CONTEXT_DETAILED_INFORMATION
//
//  case AssemblyDetailedInformationInActivationContext:
//    pvSubInstance is of type PULONG
//      *pvSubInstance < ACTIVATION_CONTEXT_DETAILED_INFORMATION::ulAssemblyCount
//    pvBuffer is of type PACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION
//
//  case FileInformationInAssemblyOfAssemblyInActivationContext:
//    pvSubInstance is of type PACTIVATION_CONTEXT_QUERY_INDEX
//      pvSubInstance->ulAssemblyIndex < ACTIVATION_CONTEXT_DETAILED_INFORMATION::ulAssemblyCount
//      pvSubInstance->ulFileIndexInAssembly < ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION::ulFileCount
//    pvBuffer is of type PASSEMBLY_FILE_DETAILED_INFORMATION
//
// String are placed after the structs.
//

function QueryActCtxW(dwFlags: DWORD; hActCtx: HANDLE; pvSubInstance: PVOID;
  ulInfoClass: ULONG; pvBuffer: PVOID; cbBuffer: SIZE_T;
  pcbWrittenOrRequired: PSIZE_T): BOOL; stdcall;
{$EXTERNALSYM QueryActCtxW}

type
  PQUERYACTCTXW_FUNC = function(dwFlags: DWORD; hActCtx: HANDLE;
    pvSubInstance: PVOID; ulInfoClass: ULONG; pvBuffer: PVOID; cbBuffer: SIZE_T;
    pcbWrittenOrRequired: PSIZE_T): BOOL; stdcall;
  {$EXTERNALSYM PQUERYACTCTXW_FUNC}

function ProcessIdToSessionId(dwProcessId: DWORD; var pSessionId: DWORD): BOOL; stdcall;
{$EXTERNALSYM ProcessIdToSessionId}

function WTSGetActiveConsoleSessionId: DWORD; stdcall;
{$EXTERNALSYM WTSGetActiveConsoleSessionId}

function IsWow64Process(hProcess: HANDLE; var Wow64Process: BOOL): BOOL; stdcall;
{$EXTERNALSYM IsWow64Process}

function GetLogicalProcessorInformation(Buffer: PSYSTEM_LOGICAL_PROCESSOR_INFORMATION; ReturnedLength: PDWORD): BOOL; stdcall;
{$EXTERNALSYM GetLogicalProcessorInformation}

//
// NUMA Information routines.
//

function GetNumaHighestNodeNumber(var HighestNodeNumber: ULONG): BOOL; stdcall;
{$EXTERNALSYM GetNumaHighestNodeNumber}

function GetNumaProcessorNode(Processor: UCHAR; var NodeNumber: UCHAR): BOOL; stdcall;
{$EXTERNALSYM GetNumaProcessorNode}

function GetNumaNodeProcessorMask(Node: UCHAR; ProcessorMask: ULONGLONG): BOOL; stdcall;
{$EXTERNALSYM GetNumaNodeProcessorMask}

function GetNumaAvailableMemoryNode(Node: UCHAR; var AvailableBytes: ULONGLONG): BOOL; stdcall;
{$EXTERNALSYM GetNumaAvailableMemoryNode}


const
  PROCESS_DEP_ENABLE = 1;
  {$EXTERNALSYM PROCESS_DEP_ENABLE}
  PROCESS_DEP_DISABLE_ATL_THUNK_EMULATION = 2;
  {$EXTERNALSYM PROCESS_DEP_DISABLE_ATL_THUNK_EMULATION}

{$IFDEF WINVISTA_UP}
  {http://msdn2.microsoft.com/en-us/library/bb736299(VS.85).aspx}
  function SetProcessDEPPolicy({__in}dwFlags : DWORD) : Boolean; stdcall;
  {$EXTERNALSYM SetProcessDEPPolicy}

  function GetNamedPipeServerSessionId(Pipe : HANDLE; out ServerSessionID : ULONG) : Boolean; stdcall;
  {$EXTERNALSYM GetNamedPipeServerSessionId}
  function GetNamedPipeServerProcessId(Pipe : HANDLE; out ServerProcessId : ULONG) : Boolean; stdcall;
  {$EXTERNALSYM GetNamedPipeServerProcessId}

  function GetNamedPipeClientProcessId(Pipe : HANDLE; out ClientProcessId : ULONG) : Boolean; stdcall;
  {$EXTERNALSYM GetNamedPipeClientProcessId}
  function GetNamedPipeClientSessionId(Pipe : HANDLE; out ClientSessionId : ULONG) : Boolean; stdcall;
  {$EXTERNALSYM GetNamedPipeClientSessionId}

  function GetNamedPipeClientComputerName(Pipe : HANDLE; {out} ClientComputerName : LPTSTR; ClientComputerNameLength : ULONG) : Boolean; stdcall;
  {$EXTERNALSYM GetNamedPipeClientComputerName}
  function GetNamedPipeClientComputerNameA(Pipe : HANDLE; {out} ClientComputerName : LPSTR; ClientComputerNameLength : ULONG) : Boolean; stdcall;
  {$EXTERNALSYM GetNamedPipeClientComputerNameA}
  function GetNamedPipeClientComputerNameW(Pipe : HANDLE; {out} ClientComputerName : LPWSTR; ClientComputerNameLength : ULONG) : Boolean; stdcall;
  {$EXTERNALSYM GetNamedPipeClientComputerNameA}
{$ENDIF WINVISTA_UP}


{$IF defined(WIN7_UP) or
     (defined(WINXP)   and defined(SERVICEPACK_2)) or
     (defined(WIN2003) and defined(SERVICEPACK_1))}
  {$DEFINE JWENABLE_SETSEARCHPATHMODE}
{$IFEND}

{$IFDEF JWENABLE_SETSEARCHPATHMODE}
const
  BASE_SEARCH_PATH_ENABLE_SAFE_SEARCHMODE     = $00000001;
  BASE_SEARCH_PATH_DISABLE_SAFE_SEARCHMODE    = $00010000;
  BASE_SEARCH_PATH_PERMANENT                  = $00008000;

  function SetSearchPathMode({__in} Flags : DWORD) : BOOL; stdcall;
{$ENDIF}



{$ENDIF JWA_IMPLEMENTATIONSECTION}

{$IFNDEF JWA_OMIT_SECTIONS}
implementation
{$ENDIF JWA_OMIT_SECTIONS}

{$IFNDEF JWA_OMIT_SECTIONS}
const
  kernel32 = 'kernel32.dll';
  advapi32 = 'advapi32.dll';
  {$IFDEF UNICODE}
  AWSuffix = 'W';
  {$ELSE}
  AWSuffix = 'A';
  {$ENDIF UNICODE}
{$ENDIF JWA_OMIT_SECTIONS}

{$IFNDEF JWA_INTERFACESECTION}

procedure MoveMemory(Destination, Source: PVOID; Length: SIZE_T);
begin
  Move(Source^, Destination^, Length);
end;

procedure CopyMemory(Destination, Source: PVOID; Length: SIZE_T);
begin
  Move(Source^, Destination^, Length);
end;

procedure FillMemory(Destination: PVOID; Length: SIZE_T; Fill: BYTE);
begin
  FillChar(Destination^, Length, Fill);
end;

procedure ZeroMemory(Destination: PVOID; Length: SIZE_T);
begin
  FillChar(Destination^, Length, 0);
end;

function SecureZeroMemory({__in}ptr : PVOID;{__in}cnt : SIZE_T) : Pointer;
begin
  FillChar(ptr^, cnt, 0);
  result := ptr;
end;

function FreeModule(hLibModule: HMODULE): BOOL;
begin
  Result := FreeLibrary(hLibModule);
end;

function MakeProcInstance(lpProc: FARPROC; hInstance: HINST): FARPROC;
begin
  Result := lpProc;
end;

procedure FreeProcInstance(lpProc: FARPROC);
begin
  { nothing }
end;

function GlobalLRUNewest(h: HANDLE): HANDLE;
begin
  Result := H;
end;

function GlobalLRUOldest(h: HANDLE): HANDLE;
begin
  Result := H;
end;

function GlobalDiscard(h: HANDLE): HANDLE;
begin
 Result := GlobalReAlloc(h, 0, GMEM_MOVEABLE);
end;

function LocalDiscard(h: HLOCAL): HLOCAL;
begin
  Result := LocalReAlloc(h, 0, LMEM_MOVEABLE);
end;

function GetFreeSpace(w: WORD): DWORD;
begin
  Result := $100000;
end;

{added tweak from
http://sourceforge.net/tracker/index.php?func=detail&aid=1662760&group_id=121894&atid=694029
by
Marco
}
function InterlockedExchangePointer(var Target: PVOID; Value: PVOID): PVOID;
begin
{$ifdef WIN64}
  Result := PVOID(InterlockedExchange64(LONGLONG(Target), LONGLONG(Value)));
{$else}
  Result := PVOID(InterlockedExchange(LONG(Target), LONG(Value)));
{$endif WIN64}
end;

{added tweak from
http://sourceforge.net/tracker/index.php?func=detail&aid=1662760&group_id=121894&atid=694029
by Marco
}
function InterlockedCompareExchangePointer(var Destination: PVOID; Exchange, Comperand: PVOID): PVOID;
begin
{$ifdef WIN64}
  Result := PVOID(InterlockedCompareExchange64(LONGLONG(Destination),
              LONGLONG(Exchange), LONGLONG(Comperand)));
{$else}
  Result := PVOID(InterlockedCompareExchange(LONG(Destination),
    LONG(Exchange), LONG(Comperand)));
{$endif WIN64}
end;

function UnlockResource(hResData: HANDLE): BOOL;
begin
  Result := False;
end;

function HasOverlappedIoCompleted(const lpOverlapped: OVERLAPPED): BOOL;
begin
  Result := NTSTATUS(lpOverlapped.Internal) <> STATUS_PENDING;
end;

// 64 bit interlocked functions from Will

function  InterlockedAnd64(var Destination: LONGLONG; Value: LONGLONG): LONGLONG;
begin
  repeat
    Result := Destination;
  until (InterlockedCompareExchange64(Destination, Result and Value, Result) = Result);
end;

function  InterlockedOr64(var Destination: LONGLONG; Value: LONGLONG): LONGLONG;
begin
  repeat
    Result := Destination;
  until (InterlockedCompareExchange64(Destination, Result or Value, Result) = Result);
end;

function  InterlockedXor64(var Destination: LONGLONG; Value: LONGLONG): LONGLONG;
begin
  repeat
    Result := Destination;
  until (InterlockedCompareExchange64(Destination, Result xor Value, Result) = Result);
end;

function  InterlockedIncrement64(var Addend: LONGLONG): LONGLONG;
begin
  repeat
    Result := Addend;
  until (InterlockedCompareExchange64(Addend, Result + 1, Result) = Result);
  Inc(Result);
end;

function  InterlockedDecrement64(var Addend: LONGLONG): LONGLONG;
begin
  repeat
    Result := Addend;
  until (InterlockedCompareExchange64(Addend, Result - 1, Result) = Result);
  Dec(Result);
end;

function  InterlockedExchange64(var Target: LONGLONG; Value: LONGLONG): LONGLONG;
begin
  repeat
    Result := Target;
  until (InterlockedCompareExchange64(Target, Value, Result) = Result);
end;

function  InterlockedExchangeAdd64(var Addend: LONGLONG; Value: LONGLONG): LONGLONG;
begin
  repeat
    Result := Addend;
  until (InterlockedCompareExchange64(Addend, Result + Value, Result) = Result);
end;

{ MVB:
  The implementation of CreateMutex only interpretes bInitialOwner as True if
  it's ordinal value is 1, all other values are interpreted as False. Delphi
  compiles Longbool(True) as $FFFFFFFF which is consequently interpreted as
  False. Changing the bInitalOwner parameter type to Boolean fixes the problem
  (Boolean(True) = 1) but that would be implementation specific and might break
  in the future, though unlikely. Hence the CreateMutex function here which
  explicitly passes LongBool(1) instead of LongBool(True).


  CW@2009:
    bInitialOwner as LongBool doesn't help at all. So I set it to DWORD to have the
    same size (4). Today, LongBool is the same as BOOL.
}

type
  TCreateMutexA = function(lpMutexAttributes: LPSECURITY_ATTRIBUTES; bInitialOwner: DWORD; lpName: LPCSTR): HANDLE; stdcall;
  TCreateMutexW = function(lpMutexAttributes: LPSECURITY_ATTRIBUTES; bInitialOwner: DWORD; lpName: LPCWSTR): HANDLE; stdcall;

var
  _CreateMutexA: Pointer;
  _CreateMutexW: Pointer;

function CreateMutexA(lpMutexAttributes: LPSECURITY_ATTRIBUTES; bInitialOwner: BOOL; lpName: LPCSTR): HANDLE;
begin
  GetProcedureAddress(_CreateMutexA, kernel32, 'CreateMutexA');
  Result := TCreateMutexA(_CreateMutexA)(lpMutexAttributes, DWORD(Boolean(bInitialOwner)), lpName)
end;

function CreateMutexW(lpMutexAttributes: LPSECURITY_ATTRIBUTES; bInitialOwner: BOOL; lpName: LPCWSTR): HANDLE;
begin
  GetProcedureAddress(_CreateMutexW, kernel32, 'CreateMutexW');
  Result := TCreateMutexW(_CreateMutexW)(lpMutexAttributes, DWORD(Boolean(bInitialOwner)), lpName)
end;

function CreateMutex(lpMutexAttributes: LPSECURITY_ATTRIBUTES; bInitialOwner: BOOL; lpName: LPCTSTR): HANDLE;
begin
{$IFDEF UNICODE}
  result := CreateMutexW(lpMutexAttributes, bInitialOwner, lpName);
{$ELSE}
  result := CreateMutexA(lpMutexAttributes, bInitialOwner, lpName);
{$ENDIF UNICODE}
end;

{$IFDEF DYNAMIC_LINK}

var
  _InterlockedCompareExchange64: Pointer;

function InterlockedCompareExchange64;
begin
  GetProcedureAddress(_InterlockedCompareExchange64, kernel32, 'InterlockedCompareExchange64');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_InterlockedCompareExchange64]
  end;
end;

var
  _InterlockedIncrement: Pointer;

function InterlockedIncrement;
begin
  GetProcedureAddress(_InterlockedIncrement, kernel32, 'InterlockedIncrement');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_InterlockedIncrement]
  end;
end;

var
  _InterlockedDecrement: Pointer;

function InterlockedDecrement;
begin
  GetProcedureAddress(_InterlockedDecrement, kernel32, 'InterlockedDecrement');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_InterlockedDecrement]
  end;
end;

var
  _InterlockedExchange: Pointer;

function InterlockedExchange;
begin
  GetProcedureAddress(_InterlockedExchange, kernel32, 'InterlockedExchange');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_InterlockedExchange]
  end;
end;

var
  _InterlockedExchangeAdd: Pointer;

function InterlockedExchangeAdd;
begin
  GetProcedureAddress(_InterlockedExchangeAdd, kernel32, 'InterlockedExchangeAdd');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_InterlockedExchangeAdd]
  end;
end;

var
  _InterlockedCompareExchange: Pointer;

function InterlockedCompareExchange;
begin
  GetProcedureAddress(_InterlockedCompareExchange, kernel32, 'InterlockedCompareExchange');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_InterlockedCompareExchange]
  end;
end;

var
  _InitializeSListHead: Pointer;

procedure InitializeSListHead;
begin
  GetProcedureAddress(_InitializeSListHead, kernel32, 'InitializeSListHead');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_InitializeSListHead]
  end;
end;

var
  _InterlockedPopEntrySList: Pointer;

function InterlockedPopEntrySList;
begin
  GetProcedureAddress(_InterlockedPopEntrySList, kernel32, 'InterlockedPopEntrySList');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_InterlockedPopEntrySList]
  end;
end;

var
  _InterlockedPushEntrySList: Pointer;

function InterlockedPushEntrySList;
begin
  GetProcedureAddress(_InterlockedPushEntrySList, kernel32, 'InterlockedPushEntrySList');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_InterlockedPushEntrySList]
  end;
end;

var
  _InterlockedFlushSList: Pointer;

function InterlockedFlushSList;
begin
  GetProcedureAddress(_InterlockedFlushSList, kernel32, 'InterlockedFlushSList');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_InterlockedFlushSList]
  end;
end;

var
  _QueryDepthSList: Pointer;

function QueryDepthSList;
begin
  GetProcedureAddress(_QueryDepthSList, kernel32, 'QueryDepthSList');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_QueryDepthSList]
  end;
end;

var
  _FreeResource: Pointer;

function FreeResource;
begin
  GetProcedureAddress(_FreeResource, kernel32, 'FreeResource');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FreeResource]
  end;
end;

var
  _LockResource: Pointer;

function LockResource;
begin
  GetProcedureAddress(_LockResource, kernel32, 'LockResource');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LockResource]
  end;
end;

var
  _FreeLibrary: Pointer;

function FreeLibrary;
begin
  GetProcedureAddress(_FreeLibrary, kernel32, 'FreeLibrary');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FreeLibrary]
  end;
end;

var
  _FreeLibraryAndExitThread: Pointer;

procedure FreeLibraryAndExitThread;
begin
  GetProcedureAddress(_FreeLibraryAndExitThread, kernel32, 'FreeLibraryAndExitThread');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FreeLibraryAndExitThread]
  end;
end;

var
  _DisableThreadLibraryCalls: Pointer;

function DisableThreadLibraryCalls;
begin
  GetProcedureAddress(_DisableThreadLibraryCalls, kernel32, 'DisableThreadLibraryCalls');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DisableThreadLibraryCalls]
  end;
end;

// MVB TODO Dynamic linking for GetProcAddress doesn't make much sense, does it? Same for LoadLibrary.

var
  _GetProcAddress: Pointer;

function GetProcAddress;
begin
  GetProcedureAddress(_GetProcAddress, kernel32, 'GetProcAddress');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProcAddress]
  end;
end;

var
  _GetVersion: Pointer;

function GetVersion;
begin
  GetProcedureAddress(_GetVersion, kernel32, 'GetVersion');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetVersion]
  end;
end;

var
  _GlobalAlloc: Pointer;

function GlobalAlloc;
begin
  GetProcedureAddress(_GlobalAlloc, kernel32, 'GlobalAlloc');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalAlloc]
  end;
end;

var
  _GlobalReAlloc: Pointer;

function GlobalReAlloc;
begin
  GetProcedureAddress(_GlobalReAlloc, kernel32, 'GlobalReAlloc');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalReAlloc]
  end;
end;

var
  _GlobalSize: Pointer;

function GlobalSize;
begin
  GetProcedureAddress(_GlobalSize, kernel32, 'GlobalSize');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalSize]
  end;
end;

var
  _GlobalFlags: Pointer;

function GlobalFlags;
begin
  GetProcedureAddress(_GlobalFlags, kernel32, 'GlobalFlags');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalFlags]
  end;
end;

var
  _GlobalLock: Pointer;

function GlobalLock;
begin
  GetProcedureAddress(_GlobalLock, kernel32, 'GlobalLock');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalLock]
  end;
end;

var
  _GlobalHandle: Pointer;

function GlobalHandle;
begin
  GetProcedureAddress(_GlobalHandle, kernel32, 'GlobalHandle');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalHandle]
  end;
end;

var
  _GlobalUnlock: Pointer;

function GlobalUnlock;
begin
  GetProcedureAddress(_GlobalUnlock, kernel32, 'GlobalUnlock');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalUnlock]
  end;
end;

var
  _GlobalFree: Pointer;

function GlobalFree;
begin
  GetProcedureAddress(_GlobalFree, kernel32, 'GlobalFree');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalFree]
  end;
end;

var
  _GlobalCompact: Pointer;

function GlobalCompact;
begin
  GetProcedureAddress(_GlobalCompact, kernel32, 'GlobalCompact');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalCompact]
  end;
end;

var
  _GlobalFix: Pointer;

procedure GlobalFix;
begin
  GetProcedureAddress(_GlobalFix, kernel32, 'GlobalFix');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalFix]
  end;
end;

var
  _GlobalUnfix: Pointer;

procedure GlobalUnfix;
begin
  GetProcedureAddress(_GlobalUnfix, kernel32, 'GlobalUnfix');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalUnfix]
  end;
end;

var
  _GlobalWire: Pointer;

function GlobalWire;
begin
  GetProcedureAddress(_GlobalWire, kernel32, 'GlobalWire');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalWire]
  end;
end;

var
  _GlobalUnWire: Pointer;

function GlobalUnWire;
begin
  GetProcedureAddress(_GlobalUnWire, kernel32, 'GlobalUnWire');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalUnWire]
  end;
end;

var
  _GlobalMemoryStatus: Pointer;

procedure GlobalMemoryStatus;
begin
  GetProcedureAddress(_GlobalMemoryStatus, kernel32, 'GlobalMemoryStatus');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalMemoryStatus]
  end;
end;

var
  _GlobalMemoryStatusEx: Pointer;

function GlobalMemoryStatusEx;
begin
  GetProcedureAddress(_GlobalMemoryStatusEx, kernel32, 'GlobalMemoryStatusEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalMemoryStatusEx]
  end;
end;

var
  _LocalAlloc: Pointer;

function LocalAlloc;
begin
  GetProcedureAddress(_LocalAlloc, kernel32, 'LocalAlloc');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LocalAlloc]
  end;
end;

var
  _LocalReAlloc: Pointer;

function LocalReAlloc;
begin
  GetProcedureAddress(_LocalReAlloc, kernel32, 'LocalReAlloc');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LocalReAlloc]
  end;
end;

var
  _LocalLock: Pointer;

function LocalLock;
begin
  GetProcedureAddress(_LocalLock, kernel32, 'LocalLock');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LocalLock]
  end;
end;

var
  _LocalHandle: Pointer;

function LocalHandle;
begin
  GetProcedureAddress(_LocalHandle, kernel32, 'LocalHandle');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LocalHandle]
  end;
end;

var
  _LocalUnlock: Pointer;

function LocalUnlock;
begin
  GetProcedureAddress(_LocalUnlock, kernel32, 'LocalUnlock');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LocalUnlock]
  end;
end;

var
  _LocalSize: Pointer;

function LocalSize;
begin
  GetProcedureAddress(_LocalSize, kernel32, 'LocalSize');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LocalSize]
  end;
end;

var
  _LocalFlags: Pointer;

function LocalFlags;
begin
  GetProcedureAddress(_LocalFlags, kernel32, 'LocalFlags');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LocalFlags]
  end;
end;

var
  _LocalFree: Pointer;

function LocalFree;
begin
  GetProcedureAddress(_LocalFree, kernel32, 'LocalFree');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LocalFree]
  end;
end;

var
  _LocalShrink: Pointer;

function LocalShrink;
begin
  GetProcedureAddress(_LocalShrink, kernel32, 'LocalShrink');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LocalShrink]
  end;
end;

var
  _LocalCompact: Pointer;

function LocalCompact;
begin
  GetProcedureAddress(_LocalCompact, kernel32, 'LocalCompact');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LocalCompact]
  end;
end;

var
  _FlushInstructionCache: Pointer;

function FlushInstructionCache;
begin
  GetProcedureAddress(_FlushInstructionCache, kernel32, 'FlushInstructionCache');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FlushInstructionCache]
  end;
end;

var
  _VirtualAlloc: Pointer;

function VirtualAlloc;
begin
  GetProcedureAddress(_VirtualAlloc, kernel32, 'VirtualAlloc');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_VirtualAlloc]
  end;
end;

var
  _VirtualFree: Pointer;

function VirtualFree;
begin
  GetProcedureAddress(_VirtualFree, kernel32, 'VirtualFree');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_VirtualFree]
  end;
end;

var
  _VirtualProtect: Pointer;

function VirtualProtect;
begin
  GetProcedureAddress(_VirtualProtect, kernel32, 'VirtualProtect');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_VirtualProtect]
  end;
end;

var
  _VirtualQuery: Pointer;

function VirtualQuery;
begin
  GetProcedureAddress(_VirtualQuery, kernel32, 'VirtualQuery');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_VirtualQuery]
  end;
end;

var
  _VirtualAllocEx: Pointer;

function VirtualAllocEx;
begin
  GetProcedureAddress(_VirtualAllocEx, kernel32, 'VirtualAllocEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_VirtualAllocEx]
  end;
end;

var
  _GetWriteWatch: Pointer;

function GetWriteWatch;
begin
  GetProcedureAddress(_GetWriteWatch, kernel32, 'GetWriteWatch');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetWriteWatch]
  end;
end;

var
  _ResetWriteWatch: Pointer;

function ResetWriteWatch;
begin
  GetProcedureAddress(_ResetWriteWatch, kernel32, 'ResetWriteWatch');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ResetWriteWatch]
  end;
end;

var
  _GetLargePageMinimum: Pointer;

function GetLargePageMinimum;
begin
  GetProcedureAddress(_GetLargePageMinimum, kernel32, 'GetLargePageMinimum');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetLargePageMinimum]
  end;
end;

var
  _VirtualFreeEx: Pointer;

function VirtualFreeEx;
begin
  GetProcedureAddress(_VirtualFreeEx, kernel32, 'VirtualFreeEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_VirtualFreeEx]
  end;
end;

var
  _VirtualProtectEx: Pointer;

function VirtualProtectEx;
begin
  GetProcedureAddress(_VirtualProtectEx, kernel32, 'VirtualProtectEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_VirtualProtectEx]
  end;
end;

var
  _VirtualQueryEx: Pointer;

function VirtualQueryEx;
begin
  GetProcedureAddress(_VirtualQueryEx, kernel32, 'VirtualQueryEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_VirtualQueryEx]
  end;
end;

var
  _HeapCreate: Pointer;

function HeapCreate;
begin
  GetProcedureAddress(_HeapCreate, kernel32, 'HeapCreate');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_HeapCreate]
  end;
end;

var
  _HeapDestroy: Pointer;

function HeapDestroy;
begin
  GetProcedureAddress(_HeapDestroy, kernel32, 'HeapDestroy');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_HeapDestroy]
  end;
end;

var
  _HeapAlloc: Pointer;

function HeapAlloc;
begin
  GetProcedureAddress(_HeapAlloc, kernel32, 'HeapAlloc');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_HeapAlloc]
  end;
end;

var
  _HeapReAlloc: Pointer;

function HeapReAlloc;
begin
  GetProcedureAddress(_HeapReAlloc, kernel32, 'HeapReAlloc');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_HeapReAlloc]
  end;
end;

var
  _HeapFree: Pointer;

function HeapFree;
begin
  GetProcedureAddress(_HeapFree, kernel32, 'HeapFree');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_HeapFree]
  end;
end;

var
  _HeapSize: Pointer;

function HeapSize;
begin
  GetProcedureAddress(_HeapSize, kernel32, 'HeapSize');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_HeapSize]
  end;
end;

var
  _HeapValidate: Pointer;

function HeapValidate;
begin
  GetProcedureAddress(_HeapValidate, kernel32, 'HeapValidate');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_HeapValidate]
  end;
end;

var
  _HeapCompact: Pointer;

function HeapCompact;
begin
  GetProcedureAddress(_HeapCompact, kernel32, 'HeapCompact');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_HeapCompact]
  end;
end;

var
  _GetProcessHeap: Pointer;

function GetProcessHeap;
begin
  GetProcedureAddress(_GetProcessHeap, kernel32, 'GetProcessHeap');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProcessHeap]
  end;
end;

var
  _GetProcessHeaps: Pointer;

function GetProcessHeaps;
begin
  GetProcedureAddress(_GetProcessHeaps, kernel32, 'GetProcessHeaps');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProcessHeaps]
  end;
end;

var
  _HeapLock: Pointer;

function HeapLock;
begin
  GetProcedureAddress(_HeapLock, kernel32, 'HeapLock');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_HeapLock]
  end;
end;

var
  _HeapUnlock: Pointer;

function HeapUnlock;
begin
  GetProcedureAddress(_HeapUnlock, kernel32, 'HeapUnlock');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_HeapUnlock]
  end;
end;

var
  _HeapWalk: Pointer;

function HeapWalk;
begin
  GetProcedureAddress(_HeapWalk, kernel32, 'HeapWalk');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_HeapWalk]
  end;
end;

var
  _HeapSetInformation: Pointer;

function HeapSetInformation;
begin
  GetProcedureAddress(_HeapSetInformation, kernel32, 'HeapSetInformation');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_HeapSetInformation]
  end;
end;

var
  _HeapQueryInformation: Pointer;

function HeapQueryInformation;
begin
  GetProcedureAddress(_HeapQueryInformation, kernel32, 'HeapQueryInformation');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_HeapQueryInformation]
  end;
end;

var
  _GetBinaryTypeA: Pointer;

function GetBinaryTypeA;
begin
  GetProcedureAddress(_GetBinaryTypeA, kernel32, 'GetBinaryTypeA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetBinaryTypeA]
  end;
end;

var
  _GetBinaryTypeW: Pointer;

function GetBinaryTypeW;
begin
  GetProcedureAddress(_GetBinaryTypeW, kernel32, 'GetBinaryTypeW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetBinaryTypeW]
  end;
end;

var
  _GetBinaryType: Pointer;

function GetBinaryType;
begin
  GetProcedureAddress(_GetBinaryType, kernel32, 'GetBinaryType' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetBinaryType]
  end;
end;

var
  _GetShortPathNameA: Pointer;

function GetShortPathNameA;
begin
  GetProcedureAddress(_GetShortPathNameA, kernel32, 'GetShortPathNameA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetShortPathNameA]
  end;
end;

var
  _GetShortPathNameW: Pointer;

function GetShortPathNameW;
begin
  GetProcedureAddress(_GetShortPathNameW, kernel32, 'GetShortPathNameW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetShortPathNameW]
  end;
end;

var
  _GetShortPathName: Pointer;

function GetShortPathName;
begin
  GetProcedureAddress(_GetShortPathName, kernel32, 'GetShortPathName' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetShortPathName]
  end;
end;

var
  _GetLongPathNameA: Pointer;

function GetLongPathNameA;
begin
  GetProcedureAddress(_GetLongPathNameA, kernel32, 'GetLongPathNameA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetLongPathNameA]
  end;
end;

var
  _GetLongPathNameW: Pointer;

function GetLongPathNameW;
begin
  GetProcedureAddress(_GetLongPathNameW, kernel32, 'GetLongPathNameW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetLongPathNameW]
  end;
end;

var
  _GetLongPathName: Pointer;

function GetLongPathName;
begin
  GetProcedureAddress(_GetLongPathName, kernel32, 'GetLongPathName' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetLongPathName]
  end;
end;

var
  _GetProcessAffinityMask: Pointer;

function GetProcessAffinityMask;
begin
  GetProcedureAddress(_GetProcessAffinityMask, kernel32, 'GetProcessAffinityMask');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProcessAffinityMask]
  end;
end;

var
  _SetProcessAffinityMask: Pointer;

function SetProcessAffinityMask;
begin
  GetProcedureAddress(_SetProcessAffinityMask, kernel32, 'SetProcessAffinityMask');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetProcessAffinityMask]
  end;
end;

var
  _GetProcessHandleCount: Pointer;

function GetProcessHandleCount;
begin
  GetProcedureAddress(_GetProcessHandleCount, kernel32, 'GetProcessHandleCount');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProcessHandleCount]
  end;
end;

var
  _GetProcessTimes: Pointer;

function GetProcessTimes;
begin
  GetProcedureAddress(_GetProcessTimes, kernel32, 'GetProcessTimes');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProcessTimes]
  end;
end;

var
  _GetProcessIoCounters: Pointer;

function GetProcessIoCounters;
begin
  GetProcedureAddress(_GetProcessIoCounters, kernel32, 'GetProcessIoCounters');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProcessIoCounters]
  end;
end;

var
  _GetProcessWorkingSetSize: Pointer;

function GetProcessWorkingSetSize;
begin
  GetProcedureAddress(_GetProcessWorkingSetSize, kernel32, 'GetProcessWorkingSetSize');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProcessWorkingSetSize]
  end;
end;

var
  _GetProcessWorkingSetSizeEx: Pointer;

function GetProcessWorkingSetSizeEx;
begin
  GetProcedureAddress(_GetProcessWorkingSetSizeEx, kernel32, 'GetProcessWorkingSetSizeEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProcessWorkingSetSizeEx]
  end;
end;

var
  _SetProcessWorkingSetSize: Pointer;

function SetProcessWorkingSetSize;
begin
  GetProcedureAddress(_SetProcessWorkingSetSize, kernel32, 'SetProcessWorkingSetSize');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetProcessWorkingSetSize]
  end;
end;

var
  _SetProcessWorkingSetSizeEx: Pointer;

function SetProcessWorkingSetSizeEx;
begin
  GetProcedureAddress(_SetProcessWorkingSetSizeEx, kernel32, 'SetProcessWorkingSetSizeEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetProcessWorkingSetSizeEx]
  end;
end;

var
  _OpenProcess: Pointer;

function OpenProcess;
begin
  GetProcedureAddress(_OpenProcess, kernel32, 'OpenProcess');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenProcess]
  end;
end;

var
  _GetCurrentProcess: Pointer;

function GetCurrentProcess;
begin
  GetProcedureAddress(_GetCurrentProcess, kernel32, 'GetCurrentProcess');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCurrentProcess]
  end;
end;

var
  _GetCurrentProcessId: Pointer;

function GetCurrentProcessId;
begin
  GetProcedureAddress(_GetCurrentProcessId, kernel32, 'GetCurrentProcessId');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCurrentProcessId]
  end;
end;

var
  _ExitProcess: Pointer;

procedure ExitProcess;
begin
  GetProcedureAddress(_ExitProcess, kernel32, 'ExitProcess');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ExitProcess]
  end;
end;

var
  _TerminateProcess: Pointer;

function TerminateProcess;
begin
  GetProcedureAddress(_TerminateProcess, kernel32, 'TerminateProcess');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_TerminateProcess]
  end;
end;

var
  _GetExitCodeProcess: Pointer;

function GetExitCodeProcess;
begin
  GetProcedureAddress(_GetExitCodeProcess, kernel32, 'GetExitCodeProcess');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetExitCodeProcess]
  end;
end;

var
  _FatalExit: Pointer;

procedure FatalExit;
begin
  GetProcedureAddress(_FatalExit, kernel32, 'FatalExit');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FatalExit]
  end;
end;

var
  _GetEnvironmentStringsW: Pointer;

function GetEnvironmentStringsW;
begin
  GetProcedureAddress(_GetEnvironmentStringsW, kernel32, 'GetEnvironmentStringsW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetEnvironmentStringsW]
  end;
end;

var
  _GetEnvironmentStrings: Pointer;

function GetEnvironmentStrings;
begin
  GetProcedureAddress(_GetEnvironmentStrings, kernel32, 'GetEnvironmentStrings' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetEnvironmentStrings]
  end;
end;

var
  _GetEnvironmentStringsA: Pointer;

function GetEnvironmentStringsA;
begin
  GetProcedureAddress(_GetEnvironmentStringsA, kernel32, 'GetEnvironmentStringsA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetEnvironmentStringsA]
  end;
end;


{$IFDEF WIN2003_UP}
var
  _SetEnvironmentStringsA: Pointer;

function SetEnvironmentStringsA;
begin
  GetProcedureAddress(_SetEnvironmentStringsA, kernel32, 'SetEnvironmentStringsA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetEnvironmentStringsA]
  end;
end;

var
  _SetEnvironmentStringsW: Pointer;

function SetEnvironmentStringsW;
begin
  GetProcedureAddress(_SetEnvironmentStringsW, kernel32, 'SetEnvironmentStringsW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetEnvironmentStringsW]
  end;
end;

var
  _SetEnvironmentStrings: Pointer;

function SetEnvironmentStrings;
begin
  GetProcedureAddress(_SetEnvironmentStrings, kernel32, 'SetEnvironmentStrings' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetEnvironmentStrings]
  end;
end;

{$ENDIF WIN2003_UP}

var
  _FreeEnvironmentStringsA: Pointer;

function FreeEnvironmentStringsA;
begin
  GetProcedureAddress(_FreeEnvironmentStringsA, kernel32, 'FreeEnvironmentStringsA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FreeEnvironmentStringsA]
  end;
end;

var
  _FreeEnvironmentStringsW: Pointer;

function FreeEnvironmentStringsW;
begin
  GetProcedureAddress(_FreeEnvironmentStringsW, kernel32, 'FreeEnvironmentStringsW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FreeEnvironmentStringsW]
  end;
end;

var
  _FreeEnvironmentStrings: Pointer;

function FreeEnvironmentStrings;
begin
  GetProcedureAddress(_FreeEnvironmentStrings, kernel32, 'FreeEnvironmentStrings' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FreeEnvironmentStrings]
  end;
end;

var
  _RaiseException: Pointer;

procedure RaiseException;
begin
  GetProcedureAddress(_RaiseException, kernel32, 'RaiseException');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RaiseException]
  end;
end;

var
  _UnhandledExceptionFilter: Pointer;

function UnhandledExceptionFilter;
begin
  GetProcedureAddress(_UnhandledExceptionFilter, kernel32, 'UnhandledExceptionFilter');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_UnhandledExceptionFilter]
  end;
end;

var
  _SetUnhandledExceptionFilter: Pointer;

function SetUnhandledExceptionFilter;
begin
  GetProcedureAddress(_SetUnhandledExceptionFilter, kernel32, 'SetUnhandledExceptionFilter');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetUnhandledExceptionFilter]
  end;
end;

var
  _CreateFiber: Pointer;

function CreateFiber;
begin
  GetProcedureAddress(_CreateFiber, kernel32, 'CreateFiber');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateFiber]
  end;
end;

var
  _CreateFiberEx: Pointer;

function CreateFiberEx;
begin
  GetProcedureAddress(_CreateFiberEx, kernel32, 'CreateFiberEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateFiberEx]
  end;
end;

var
  _DeleteFiber: Pointer;

procedure DeleteFiber;
begin
  GetProcedureAddress(_DeleteFiber, kernel32, 'DeleteFiber');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DeleteFiber]
  end;
end;

var
  _ConvertThreadToFiber: Pointer;

function ConvertThreadToFiber;
begin
  GetProcedureAddress(_ConvertThreadToFiber, kernel32, 'ConvertThreadToFiber');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ConvertThreadToFiber]
  end;
end;

var
  _ConvertThreadToFiberEx: Pointer;

function ConvertThreadToFiberEx;
begin
  GetProcedureAddress(_ConvertThreadToFiberEx, kernel32, 'ConvertThreadToFiberEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ConvertThreadToFiberEx]
  end;
end;

var
  _ConvertFiberToThread: Pointer;

function ConvertFiberToThread;
begin
  GetProcedureAddress(_ConvertFiberToThread, kernel32, 'ConvertFiberToThread');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ConvertFiberToThread]
  end;
end;

var
  _SwitchToFiber: Pointer;

procedure SwitchToFiber;
begin
  GetProcedureAddress(_SwitchToFiber, kernel32, 'SwitchToFiber');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SwitchToFiber]
  end;
end;

var
  _SwitchToThread: Pointer;

function SwitchToThread;
begin
  GetProcedureAddress(_SwitchToThread, kernel32, 'SwitchToThread');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SwitchToThread]
  end;
end;

var
  _CreateThread: Pointer;

function CreateThread;
begin
  GetProcedureAddress(_CreateThread, kernel32, 'CreateThread');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateThread]
  end;
end;

var
  _CreateRemoteThread: Pointer;

function CreateRemoteThread;
begin
  GetProcedureAddress(_CreateRemoteThread, kernel32, 'CreateRemoteThread');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateRemoteThread]
  end;
end;

var
  _GetCurrentThread: Pointer;

function GetCurrentThread;
begin
  GetProcedureAddress(_GetCurrentThread, kernel32, 'GetCurrentThread');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCurrentThread]
  end;
end;

var
  _GetCurrentThreadId: Pointer;

function GetCurrentThreadId;
begin
  GetProcedureAddress(_GetCurrentThreadId, kernel32, 'GetCurrentThreadId');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCurrentThreadId]
  end;
end;

var
  _GetProcessIdOfThread: Pointer;

function GetProcessIdOfThread;
begin
  GetProcedureAddress(_GetProcessIdOfThread, kernel32, 'GetProcessIdOfThread');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProcessIdOfThread]
  end;
end;

var
  _GetThreadId: Pointer;

function GetThreadId;
begin
  GetProcedureAddress(_GetThreadId, kernel32, 'GetThreadId');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetThreadId]
  end;
end;

var
  _GetProcessId: Pointer;

function GetProcessId;
begin
  GetProcedureAddress(_GetProcessId, kernel32, 'GetProcessId');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProcessId]
  end;
end;

var
  _GetCurrentProcessorNumber: Pointer;

function GetCurrentProcessorNumber;
begin
  GetProcedureAddress(_GetCurrentProcessorNumber, kernel32, 'GetCurrentProcessorNumber');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCurrentProcessorNumber]
  end;
end;

var
  _SetThreadAffinityMask: Pointer;

function SetThreadAffinityMask;
begin
  GetProcedureAddress(_SetThreadAffinityMask, kernel32, 'SetThreadAffinityMask');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetThreadAffinityMask]
  end;
end;

var
  _SetThreadIdealProcessor: Pointer;

function SetThreadIdealProcessor;
begin
  GetProcedureAddress(_SetThreadIdealProcessor, kernel32, 'SetThreadIdealProcessor');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetThreadIdealProcessor]
  end;
end;

var
  _SetProcessPriorityBoost: Pointer;

function SetProcessPriorityBoost;
begin
  GetProcedureAddress(_SetProcessPriorityBoost, kernel32, 'SetProcessPriorityBoost');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetProcessPriorityBoost]
  end;
end;

var
  _GetProcessPriorityBoost: Pointer;

function GetProcessPriorityBoost;
begin
  GetProcedureAddress(_GetProcessPriorityBoost, kernel32, 'GetProcessPriorityBoost');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProcessPriorityBoost]
  end;
end;

var
  _RequestWakeupLatency: Pointer;

function RequestWakeupLatency;
begin
  GetProcedureAddress(_RequestWakeupLatency, kernel32, 'RequestWakeupLatency');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RequestWakeupLatency]
  end;
end;

var
  _IsSystemResumeAutomatic: Pointer;

function IsSystemResumeAutomatic;
begin
  GetProcedureAddress(_IsSystemResumeAutomatic, kernel32, 'IsSystemResumeAutomatic');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsSystemResumeAutomatic]
  end;
end;

var
  _OpenThread: Pointer;

function OpenThread;
begin
  GetProcedureAddress(_OpenThread, kernel32, 'OpenThread');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenThread]
  end;
end;

var
  _SetThreadPriority: Pointer;

function SetThreadPriority;
begin
  GetProcedureAddress(_SetThreadPriority, kernel32, 'SetThreadPriority');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetThreadPriority]
  end;
end;

var
  _SetThreadPriorityBoost: Pointer;

function SetThreadPriorityBoost;
begin
  GetProcedureAddress(_SetThreadPriorityBoost, kernel32, 'SetThreadPriorityBoost');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetThreadPriorityBoost]
  end;
end;

var
  _GetThreadPriorityBoost: Pointer;

function GetThreadPriorityBoost;
begin
  GetProcedureAddress(_GetThreadPriorityBoost, kernel32, 'GetThreadPriorityBoost');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetThreadPriorityBoost]
  end;
end;

var
  _GetThreadPriority: Pointer;

function GetThreadPriority;
begin
  GetProcedureAddress(_GetThreadPriority, kernel32, 'GetThreadPriority');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetThreadPriority]
  end;
end;

var
  _GetThreadTimes: Pointer;

function GetThreadTimes;
begin
  GetProcedureAddress(_GetThreadTimes, kernel32, 'GetThreadTimes');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetThreadTimes]
  end;
end;

var
  _GetThreadIOPendingFlag: Pointer;

function GetThreadIOPendingFlag;
begin
  GetProcedureAddress(_GetThreadIOPendingFlag, kernel32, 'GetThreadIOPendingFlag');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetThreadIOPendingFlag]
  end;
end;

var
  _ExitThread: Pointer;

procedure ExitThread;
begin
  GetProcedureAddress(_ExitThread, kernel32, 'ExitThread');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ExitThread]
  end;
end;

var
  _TerminateThread: Pointer;

function TerminateThread;
begin
  GetProcedureAddress(_TerminateThread, kernel32, 'TerminateThread');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_TerminateThread]
  end;
end;

var
  _GetExitCodeThread: Pointer;

function GetExitCodeThread;
begin
  GetProcedureAddress(_GetExitCodeThread, kernel32, 'GetExitCodeThread');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetExitCodeThread]
  end;
end;

var
  _GetThreadSelectorEntry: Pointer;

function GetThreadSelectorEntry;
begin
  GetProcedureAddress(_GetThreadSelectorEntry, kernel32, 'GetThreadSelectorEntry');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetThreadSelectorEntry]
  end;
end;

var
  _SetThreadExecutionState: Pointer;

function SetThreadExecutionState;
begin
  GetProcedureAddress(_SetThreadExecutionState, kernel32, 'SetThreadExecutionState');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetThreadExecutionState]
  end;
end;

var
  _GetLastError: Pointer;

function GetLastError;
begin
  GetProcedureAddress(_GetLastError, kernel32, 'GetLastError');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetLastError]
  end;
end;

var
  _SetLastError: Pointer;

procedure SetLastError;
begin
  GetProcedureAddress(_SetLastError, kernel32, 'SetLastError');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetLastError]
  end;
end;

var
  _RestoreLastError: Pointer;

procedure RestoreLastError;
begin
  GetProcedureAddress(_RestoreLastError, kernel32, 'RestoreLastError');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RestoreLastError]
  end;
end;

var
  _GetOverlappedResult: Pointer;

function GetOverlappedResult;
begin
  GetProcedureAddress(_GetOverlappedResult, kernel32, 'GetOverlappedResult');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetOverlappedResult]
  end;
end;

var
  _CreateIoCompletionPort: Pointer;

function CreateIoCompletionPort;
begin
  GetProcedureAddress(_CreateIoCompletionPort, kernel32, 'CreateIoCompletionPort');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateIoCompletionPort]
  end;
end;

var
  _GetQueuedCompletionStatus: Pointer;

function GetQueuedCompletionStatus;
begin
  GetProcedureAddress(_GetQueuedCompletionStatus, kernel32, 'GetQueuedCompletionStatus');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetQueuedCompletionStatus]
  end;
end;

var
  _PostQueuedCompletionStatus: Pointer;

function PostQueuedCompletionStatus;
begin
  GetProcedureAddress(_PostQueuedCompletionStatus, kernel32, 'PostQueuedCompletionStatus');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_PostQueuedCompletionStatus]
  end;
end;

var
  _SetErrorMode: Pointer;

function SetErrorMode;
begin
  GetProcedureAddress(_SetErrorMode, kernel32, 'SetErrorMode');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetErrorMode]
  end;
end;

var
  _ReadProcessMemory: Pointer;

function ReadProcessMemory;
begin
  GetProcedureAddress(_ReadProcessMemory, kernel32, 'ReadProcessMemory');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReadProcessMemory]
  end;
end;

var
  _WriteProcessMemory: Pointer;

function WriteProcessMemory;
begin
  GetProcedureAddress(_WriteProcessMemory, kernel32, 'WriteProcessMemory');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WriteProcessMemory]
  end;
end;

var
  _GetThreadContext: Pointer;

function GetThreadContext;
begin
  GetProcedureAddress(_GetThreadContext, kernel32, 'GetThreadContext');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetThreadContext]
  end;
end;

var
  _SetThreadContext: Pointer;

function SetThreadContext;
begin
  GetProcedureAddress(_SetThreadContext, kernel32, 'SetThreadContext');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetThreadContext]
  end;
end;

var
  _SuspendThread: Pointer;

function SuspendThread;
begin
  GetProcedureAddress(_SuspendThread, kernel32, 'SuspendThread');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SuspendThread]
  end;
end;

var
  _ResumeThread: Pointer;

function ResumeThread;
begin
  GetProcedureAddress(_ResumeThread, kernel32, 'ResumeThread');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ResumeThread]
  end;
end;

var
  _QueueUserAPC: Pointer;

function QueueUserAPC;
begin
  GetProcedureAddress(_QueueUserAPC, kernel32, 'QueueUserAPC');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_QueueUserAPC]
  end;
end;

var
  _IsDebuggerPresent: Pointer;

function IsDebuggerPresent;
begin
  GetProcedureAddress(_IsDebuggerPresent, kernel32, 'IsDebuggerPresent');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsDebuggerPresent]
  end;
end;

var
  _CheckRemoteDebuggerPresent: Pointer;

function CheckRemoteDebuggerPresent;
begin
  GetProcedureAddress(_CheckRemoteDebuggerPresent, kernel32, 'CheckRemoteDebuggerPresent');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CheckRemoteDebuggerPresent]
  end;
end;

var
  _DebugBreak: Pointer;

procedure DebugBreak;
begin
  GetProcedureAddress(_DebugBreak, kernel32, 'DebugBreak');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DebugBreak]
  end;
end;

var
  _WaitForDebugEvent: Pointer;

function WaitForDebugEvent;
begin
  GetProcedureAddress(_WaitForDebugEvent, kernel32, 'WaitForDebugEvent');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WaitForDebugEvent]
  end;
end;

var
  _ContinueDebugEvent: Pointer;

function ContinueDebugEvent;
begin
  GetProcedureAddress(_ContinueDebugEvent, kernel32, 'ContinueDebugEvent');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ContinueDebugEvent]
  end;
end;

var
  _DebugActiveProcess: Pointer;

function DebugActiveProcess;
begin
  GetProcedureAddress(_DebugActiveProcess, kernel32, 'DebugActiveProcess');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DebugActiveProcess]
  end;
end;

var
  _DebugActiveProcessStop: Pointer;

function DebugActiveProcessStop;
begin
  GetProcedureAddress(_DebugActiveProcessStop, kernel32, 'DebugActiveProcessStop');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DebugActiveProcessStop]
  end;
end;

var
  _DebugSetProcessKillOnExit: Pointer;

function DebugSetProcessKillOnExit;
begin
  GetProcedureAddress(_DebugSetProcessKillOnExit, kernel32, 'DebugSetProcessKillOnExit');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DebugSetProcessKillOnExit]
  end;
end;

var
  _DebugBreakProcess: Pointer;

function DebugBreakProcess;
begin
  GetProcedureAddress(_DebugBreakProcess, kernel32, 'DebugBreakProcess');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DebugBreakProcess]
  end;
end;

var
  _InitializeCriticalSection: Pointer;

procedure InitializeCriticalSection;
begin
  GetProcedureAddress(_InitializeCriticalSection, kernel32, 'InitializeCriticalSection');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_InitializeCriticalSection]
  end;
end;

var
  _EnterCriticalSection: Pointer;

procedure EnterCriticalSection;
begin
  GetProcedureAddress(_EnterCriticalSection, kernel32, 'EnterCriticalSection');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EnterCriticalSection]
  end;
end;

var
  _LeaveCriticalSection: Pointer;

procedure LeaveCriticalSection;
begin
  GetProcedureAddress(_LeaveCriticalSection, kernel32, 'LeaveCriticalSection');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LeaveCriticalSection]
  end;
end;

var
  _InitCritSectAndSpinCount: Pointer;

function InitializeCriticalSectionAndSpinCount;
begin
  GetProcedureAddress(_InitCritSectAndSpinCount, kernel32, 'InitializeCriticalSectionAndSpinCount');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_InitCritSectAndSpinCount]
  end;
end;

var
  _SetCriticalSectionSpinCount: Pointer;

function SetCriticalSectionSpinCount;
begin
  GetProcedureAddress(_SetCriticalSectionSpinCount, kernel32, 'SetCriticalSectionSpinCount');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetCriticalSectionSpinCount]
  end;
end;

var
  _TryEnterCriticalSection: Pointer;

function TryEnterCriticalSection;
begin
  GetProcedureAddress(_TryEnterCriticalSection, kernel32, 'TryEnterCriticalSection');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_TryEnterCriticalSection]
  end;
end;

var
  _DeleteCriticalSection: Pointer;

procedure DeleteCriticalSection;
begin
  GetProcedureAddress(_DeleteCriticalSection, kernel32, 'DeleteCriticalSection');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DeleteCriticalSection]
  end;
end;

var
  _SetEvent: Pointer;

function SetEvent;
begin
  GetProcedureAddress(_SetEvent, kernel32, 'SetEvent');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetEvent]
  end;
end;

var
  _ResetEvent: Pointer;

function ResetEvent;
begin
  GetProcedureAddress(_ResetEvent, kernel32, 'ResetEvent');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ResetEvent]
  end;
end;

var
  _PulseEvent: Pointer;

function PulseEvent;
begin
  GetProcedureAddress(_PulseEvent, kernel32, 'PulseEvent');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_PulseEvent]
  end;
end;

var
  _ReleaseSemaphore: Pointer;

function ReleaseSemaphore;
begin
  GetProcedureAddress(_ReleaseSemaphore, kernel32, 'ReleaseSemaphore');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReleaseSemaphore]
  end;
end;

var
  _ReleaseMutex: Pointer;

function ReleaseMutex;
begin
  GetProcedureAddress(_ReleaseMutex, kernel32, 'ReleaseMutex');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReleaseMutex]
  end;
end;

var
  _WaitForSingleObject: Pointer;

function WaitForSingleObject;
begin
  GetProcedureAddress(_WaitForSingleObject, kernel32, 'WaitForSingleObject');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WaitForSingleObject]
  end;
end;

var
  _WaitForMultipleObjects: Pointer;

function WaitForMultipleObjects;
begin
  GetProcedureAddress(_WaitForMultipleObjects, kernel32, 'WaitForMultipleObjects');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WaitForMultipleObjects]
  end;
end;

var
  _Sleep: Pointer;

procedure Sleep;
begin
  GetProcedureAddress(_Sleep, kernel32, 'Sleep');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_Sleep]
  end;
end;

var
  _LoadResource: Pointer;

function LoadResource;
begin
  GetProcedureAddress(_LoadResource, kernel32, 'LoadResource');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LoadResource]
  end;
end;

var
  _SizeofResource: Pointer;

function SizeofResource;
begin
  GetProcedureAddress(_SizeofResource, kernel32, 'SizeofResource');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SizeofResource]
  end;
end;

var
  _GlobalDeleteAtom: Pointer;

function GlobalDeleteAtom;
begin
  GetProcedureAddress(_GlobalDeleteAtom, kernel32, 'GlobalDeleteAtom');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalDeleteAtom]
  end;
end;

var
  _InitAtomTable: Pointer;

function InitAtomTable;
begin
  GetProcedureAddress(_InitAtomTable, kernel32, 'InitAtomTable');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_InitAtomTable]
  end;
end;

var
  _DeleteAtom: Pointer;

function DeleteAtom;
begin
  GetProcedureAddress(_DeleteAtom, kernel32, 'DeleteAtom');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DeleteAtom]
  end;
end;

var
  _SetHandleCount: Pointer;

function SetHandleCount;
begin
  GetProcedureAddress(_SetHandleCount, kernel32, 'SetHandleCount');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetHandleCount]
  end;
end;

var
  _GetLogicalDrives: Pointer;

function GetLogicalDrives;
begin
  GetProcedureAddress(_GetLogicalDrives, kernel32, 'GetLogicalDrives');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetLogicalDrives]
  end;
end;

var
  _LockFile: Pointer;

function LockFile;
begin
  GetProcedureAddress(_LockFile, kernel32, 'LockFile');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LockFile]
  end;
end;

var
  _UnlockFile: Pointer;

function UnlockFile;
begin
  GetProcedureAddress(_UnlockFile, kernel32, 'UnlockFile');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_UnlockFile]
  end;
end;

var
  _LockFileEx: Pointer;

function LockFileEx;
begin
  GetProcedureAddress(_LockFileEx, kernel32, 'LockFileEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LockFileEx]
  end;
end;

var
  _UnlockFileEx: Pointer;

function UnlockFileEx;
begin
  GetProcedureAddress(_UnlockFileEx, kernel32, 'UnlockFileEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_UnlockFileEx]
  end;
end;

var
  _GetFileInformationByHandle: Pointer;

function GetFileInformationByHandle;
begin
  GetProcedureAddress(_GetFileInformationByHandle, kernel32, 'GetFileInformationByHandle');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFileInformationByHandle]
  end;
end;

var
  _GetFileType: Pointer;

function GetFileType;
begin
  GetProcedureAddress(_GetFileType, kernel32, 'GetFileType');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFileType]
  end;
end;

var
  _GetFileSize: Pointer;

function GetFileSize;
begin
  GetProcedureAddress(_GetFileSize, kernel32, 'GetFileSize');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFileSize]
  end;
end;

var
  _GetFileSizeEx: Pointer;

function GetFileSizeEx;
begin
  GetProcedureAddress(_GetFileSizeEx, kernel32, 'GetFileSizeEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFileSizeEx]
  end;
end;

var
  _GetStdHandle: Pointer;

function GetStdHandle;
begin
  GetProcedureAddress(_GetStdHandle, kernel32, 'GetStdHandle');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetStdHandle]
  end;
end;

var
  _SetStdHandle: Pointer;

function SetStdHandle;
begin
  GetProcedureAddress(_SetStdHandle, kernel32, 'SetStdHandle');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetStdHandle]
  end;
end;

var
  _WriteFile: Pointer;

function WriteFile;
begin
  GetProcedureAddress(_WriteFile, kernel32, 'WriteFile');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WriteFile]
  end;
end;

var
  _ReadFile: Pointer;

function ReadFile;
begin
  GetProcedureAddress(_ReadFile, kernel32, 'ReadFile');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReadFile]
  end;
end;

var
  _FlushFileBuffers: Pointer;

function FlushFileBuffers;
begin
  GetProcedureAddress(_FlushFileBuffers, kernel32, 'FlushFileBuffers');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FlushFileBuffers]
  end;
end;

var
  _DeviceIoControl: Pointer;

function DeviceIoControl;
begin
  GetProcedureAddress(_DeviceIoControl, kernel32, 'DeviceIoControl');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DeviceIoControl]
  end;
end;

var
  _RequestDeviceWakeup: Pointer;

function RequestDeviceWakeup;
begin
  GetProcedureAddress(_RequestDeviceWakeup, kernel32, 'RequestDeviceWakeup');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RequestDeviceWakeup]
  end;
end;

var
  _CancelDeviceWakeupRequest: Pointer;

function CancelDeviceWakeupRequest;
begin
  GetProcedureAddress(_CancelDeviceWakeupRequest, kernel32, 'CancelDeviceWakeupRequest');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CancelDeviceWakeupRequest]
  end;
end;

var
  _GetDevicePowerState: Pointer;

function GetDevicePowerState;
begin
  GetProcedureAddress(_GetDevicePowerState, kernel32, 'GetDevicePowerState');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetDevicePowerState]
  end;
end;

var
  _SetMessageWaitingIndicator: Pointer;

function SetMessageWaitingIndicator;
begin
  GetProcedureAddress(_SetMessageWaitingIndicator, kernel32, 'SetMessageWaitingIndicator');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetMessageWaitingIndicator]
  end;
end;

var
  _SetEndOfFile: Pointer;

function SetEndOfFile;
begin
  GetProcedureAddress(_SetEndOfFile, kernel32, 'SetEndOfFile');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetEndOfFile]
  end;
end;

var
  _SetFilePointer: Pointer;

function SetFilePointer;
begin
  GetProcedureAddress(_SetFilePointer, kernel32, 'SetFilePointer');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetFilePointer]
  end;
end;

var
  _SetFilePointerEx: Pointer;

function SetFilePointerEx;
begin
  GetProcedureAddress(_SetFilePointerEx, kernel32, 'SetFilePointerEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetFilePointerEx]
  end;
end;

var
  _FindClose: Pointer;

function FindClose;
begin
  GetProcedureAddress(_FindClose, kernel32, 'FindClose');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindClose]
  end;
end;

var
  _GetFileTime: Pointer;

function GetFileTime;
begin
  GetProcedureAddress(_GetFileTime, kernel32, 'GetFileTime');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFileTime]
  end;
end;

var
  _SetFileTime: Pointer;

function SetFileTime;
begin
  GetProcedureAddress(_SetFileTime, kernel32, 'SetFileTime');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetFileTime]
  end;
end;

var
  _SetFileValidData: Pointer;

function SetFileValidData;
begin
  GetProcedureAddress(_SetFileValidData, kernel32, 'SetFileValidData');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetFileValidData]
  end;
end;

var
  _SetFileShortNameA: Pointer;

function SetFileShortNameA;
begin
  GetProcedureAddress(_SetFileShortNameA, kernel32, 'SetFileShortNameA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetFileShortNameA]
  end;
end;

var
  _SetFileShortNameW: Pointer;

function SetFileShortNameW;
begin
  GetProcedureAddress(_SetFileShortNameW, kernel32, 'SetFileShortNameW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetFileShortNameW]
  end;
end;

var
  _SetFileShortName: Pointer;

function SetFileShortName;
begin
  GetProcedureAddress(_SetFileShortName, kernel32, 'SetFileShortName' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetFileShortName]
  end;
end;

var
  _CloseHandle: Pointer;

function CloseHandle;
begin
  GetProcedureAddress(_CloseHandle, kernel32, 'CloseHandle');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CloseHandle]
  end;
end;

var
  _DuplicateHandle: Pointer;

function DuplicateHandle;
begin
  GetProcedureAddress(_DuplicateHandle, kernel32, 'DuplicateHandle');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DuplicateHandle]
  end;
end;

var
  _GetHandleInformation: Pointer;

function GetHandleInformation;
begin
  GetProcedureAddress(_GetHandleInformation, kernel32, 'GetHandleInformation');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetHandleInformation]
  end;
end;

var
  _SetHandleInformation: Pointer;

function SetHandleInformation;
begin
  GetProcedureAddress(_SetHandleInformation, kernel32, 'SetHandleInformation');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetHandleInformation]
  end;
end;

var
  _LoadModule: Pointer;

function LoadModule;
begin
  GetProcedureAddress(_LoadModule, kernel32, 'LoadModule');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LoadModule]
  end;
end;

var
  _WinExec: Pointer;

function WinExec;
begin
  GetProcedureAddress(_WinExec, kernel32, 'WinExec');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WinExec]
  end;
end;

var
  _ClearCommBreak: Pointer;

function ClearCommBreak;
begin
  GetProcedureAddress(_ClearCommBreak, kernel32, 'ClearCommBreak');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ClearCommBreak]
  end;
end;

var
  _ClearCommError: Pointer;

function ClearCommError;
begin
  GetProcedureAddress(_ClearCommError, kernel32, 'ClearCommError');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ClearCommError]
  end;
end;

var
  _SetupComm: Pointer;

function SetupComm;
begin
  GetProcedureAddress(_SetupComm, kernel32, 'SetupComm');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetupComm]
  end;
end;

var
  _EscapeCommFunction: Pointer;

function EscapeCommFunction;
begin
  GetProcedureAddress(_EscapeCommFunction, kernel32, 'EscapeCommFunction');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EscapeCommFunction]
  end;
end;

var
  _GetCommConfig: Pointer;

function GetCommConfig;
begin
  GetProcedureAddress(_GetCommConfig, kernel32, 'GetCommConfig');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCommConfig]
  end;
end;

var
  _GetCommMask: Pointer;

function GetCommMask;
begin
  GetProcedureAddress(_GetCommMask, kernel32, 'GetCommMask');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCommMask]
  end;
end;

var
  _GetCommProperties: Pointer;

function GetCommProperties;
begin
  GetProcedureAddress(_GetCommProperties, kernel32, 'GetCommProperties');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCommProperties]
  end;
end;

var
  _GetCommModemStatus: Pointer;

function GetCommModemStatus;
begin
  GetProcedureAddress(_GetCommModemStatus, kernel32, 'GetCommModemStatus');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCommModemStatus]
  end;
end;

var
  _GetCommState: Pointer;

function GetCommState;
begin
  GetProcedureAddress(_GetCommState, kernel32, 'GetCommState');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCommState]
  end;
end;

var
  _GetCommTimeouts: Pointer;

function GetCommTimeouts;
begin
  GetProcedureAddress(_GetCommTimeouts, kernel32, 'GetCommTimeouts');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCommTimeouts]
  end;
end;

var
  _PurgeComm: Pointer;

function PurgeComm;
begin
  GetProcedureAddress(_PurgeComm, kernel32, 'PurgeComm');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_PurgeComm]
  end;
end;

var
  _SetCommBreak: Pointer;

function SetCommBreak;
begin
  GetProcedureAddress(_SetCommBreak, kernel32, 'SetCommBreak');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetCommBreak]
  end;
end;

var
  _SetCommConfig: Pointer;

function SetCommConfig;
begin
  GetProcedureAddress(_SetCommConfig, kernel32, 'SetCommConfig');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetCommConfig]
  end;
end;

var
  _SetCommMask: Pointer;

function SetCommMask;
begin
  GetProcedureAddress(_SetCommMask, kernel32, 'SetCommMask');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetCommMask]
  end;
end;

var
  _SetCommState: Pointer;

function SetCommState;
begin
  GetProcedureAddress(_SetCommState, kernel32, 'SetCommState');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetCommState]
  end;
end;

var
  _SetCommTimeouts: Pointer;

function SetCommTimeouts;
begin
  GetProcedureAddress(_SetCommTimeouts, kernel32, 'SetCommTimeouts');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetCommTimeouts]
  end;
end;

var
  _TransmitCommChar: Pointer;

function TransmitCommChar;
begin
  GetProcedureAddress(_TransmitCommChar, kernel32, 'TransmitCommChar');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_TransmitCommChar]
  end;
end;

var
  _WaitCommEvent: Pointer;

function WaitCommEvent;
begin
  GetProcedureAddress(_WaitCommEvent, kernel32, 'WaitCommEvent');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WaitCommEvent]
  end;
end;

var
  _SetTapePosition: Pointer;

function SetTapePosition;
begin
  GetProcedureAddress(_SetTapePosition, kernel32, 'SetTapePosition');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetTapePosition]
  end;
end;

var
  _GetTapePosition: Pointer;

function GetTapePosition;
begin
  GetProcedureAddress(_GetTapePosition, kernel32, 'GetTapePosition');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetTapePosition]
  end;
end;

var
  _PrepareTape: Pointer;

function PrepareTape;
begin
  GetProcedureAddress(_PrepareTape, kernel32, 'PrepareTape');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_PrepareTape]
  end;
end;

var
  _EraseTape: Pointer;

function EraseTape;
begin
  GetProcedureAddress(_EraseTape, kernel32, 'EraseTape');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EraseTape]
  end;
end;

var
  _CreateTapePartition: Pointer;

function CreateTapePartition;
begin
  GetProcedureAddress(_CreateTapePartition, kernel32, 'CreateTapePartition');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateTapePartition]
  end;
end;

var
  _WriteTapemark: Pointer;

function WriteTapemark;
begin
  GetProcedureAddress(_WriteTapemark, kernel32, 'WriteTapemark');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WriteTapemark]
  end;
end;

var
  _GetTapeStatus: Pointer;

function GetTapeStatus;
begin
  GetProcedureAddress(_GetTapeStatus, kernel32, 'GetTapeStatus');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetTapeStatus]
  end;
end;

var
  _GetTapeParameters: Pointer;

function GetTapeParameters;
begin
  GetProcedureAddress(_GetTapeParameters, kernel32, 'GetTapeParameters');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetTapeParameters]
  end;
end;

var
  _SetTapeParameters: Pointer;

function SetTapeParameters;
begin
  GetProcedureAddress(_SetTapeParameters, kernel32, 'SetTapeParameters');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetTapeParameters]
  end;
end;

var
  _Beep: Pointer;

function Beep;
begin
  GetProcedureAddress(_Beep, kernel32, 'Beep');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_Beep]
  end;
end;

var
  _MulDiv: Pointer;

function MulDiv;
begin
  GetProcedureAddress(_MulDiv, kernel32, 'MulDiv');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_MulDiv]
  end;
end;

var
  _GetSystemTime: Pointer;

procedure GetSystemTime;
begin
  GetProcedureAddress(_GetSystemTime, kernel32, 'GetSystemTime');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSystemTime]
  end;
end;

var
  _GetSystemTimeAsFileTime: Pointer;

procedure GetSystemTimeAsFileTime;
begin
  GetProcedureAddress(_GetSystemTimeAsFileTime, kernel32, 'GetSystemTimeAsFileTime');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSystemTimeAsFileTime]
  end;
end;

var
  _SetSystemTime: Pointer;

function SetSystemTime;
begin
  GetProcedureAddress(_SetSystemTime, kernel32, 'SetSystemTime');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetSystemTime]
  end;
end;

var
  _GetLocalTime: Pointer;

procedure GetLocalTime;
begin
  GetProcedureAddress(_GetLocalTime, kernel32, 'GetLocalTime');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetLocalTime]
  end;
end;

var
  _SetLocalTime: Pointer;

function SetLocalTime;
begin
  GetProcedureAddress(_SetLocalTime, kernel32, 'SetLocalTime');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetLocalTime]
  end;
end;

var
  _GetSystemInfo: Pointer;

procedure GetSystemInfo;
begin
  GetProcedureAddress(_GetSystemInfo, kernel32, 'GetSystemInfo');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSystemInfo]
  end;
end;

var
  _GetSystemRegistryQuota: Pointer;

function GetSystemRegistryQuota;
begin
  GetProcedureAddress(_GetSystemRegistryQuota, kernel32, 'GetSystemRegistryQuota');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSystemRegistryQuota]
  end;
end;

var
  _GetSystemTimes: Pointer;

function GetSystemTimes;
begin
  GetProcedureAddress(_GetSystemTimes, kernel32, 'GetSystemTimes');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSystemTimes]
  end;
end;

var
  _GetNativeSystemInfo: Pointer;

procedure GetNativeSystemInfo;
begin
  GetProcedureAddress(_GetNativeSystemInfo, kernel32, 'GetNativeSystemInfo');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetNativeSystemInfo]
  end;
end;

var
  _IsProcessorFeaturePresent: Pointer;

function IsProcessorFeaturePresent;
begin
  GetProcedureAddress(_IsProcessorFeaturePresent, kernel32, 'IsProcessorFeaturePresent');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsProcessorFeaturePresent]
  end;
end;

var
  _SystemTimeToTzSpecificLocalTime: Pointer;

function SystemTimeToTzSpecificLocalTime;
begin
  GetProcedureAddress(_SystemTimeToTzSpecificLocalTime, kernel32, 'SystemTimeToTzSpecificLocalTime');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SystemTimeToTzSpecificLocalTime]
  end;
end;

var
  _TzSpecificLocalTimeToSystemTime: Pointer;

function TzSpecificLocalTimeToSystemTime;
begin
  GetProcedureAddress(_TzSpecificLocalTimeToSystemTime, kernel32, 'TzSpecificLocalTimeToSystemTime');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_TzSpecificLocalTimeToSystemTime]
  end;
end;

var
  _GetTimeZoneInformation: Pointer;

function GetTimeZoneInformation;
begin
  GetProcedureAddress(_GetTimeZoneInformation, kernel32, 'GetTimeZoneInformation');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetTimeZoneInformation]
  end;
end;

var
  _SetTimeZoneInformation: Pointer;

function SetTimeZoneInformation;
begin
  GetProcedureAddress(_SetTimeZoneInformation, kernel32, 'SetTimeZoneInformation');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetTimeZoneInformation]
  end;
end;

var
  _SystemTimeToFileTime: Pointer;

function SystemTimeToFileTime;
begin
  GetProcedureAddress(_SystemTimeToFileTime, kernel32, 'SystemTimeToFileTime');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SystemTimeToFileTime]
  end;
end;

var
  _FileTimeToLocalFileTime: Pointer;

function FileTimeToLocalFileTime;
begin
  GetProcedureAddress(_FileTimeToLocalFileTime, kernel32, 'FileTimeToLocalFileTime');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FileTimeToLocalFileTime]
  end;
end;

var
  _LocalFileTimeToFileTime: Pointer;

function LocalFileTimeToFileTime;
begin
  GetProcedureAddress(_LocalFileTimeToFileTime, kernel32, 'LocalFileTimeToFileTime');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LocalFileTimeToFileTime]
  end;
end;

var
  _FileTimeToSystemTime: Pointer;

function FileTimeToSystemTime;
begin
  GetProcedureAddress(_FileTimeToSystemTime, kernel32, 'FileTimeToSystemTime');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FileTimeToSystemTime]
  end;
end;

var
  _CompareFileTime: Pointer;

function CompareFileTime;
begin
  GetProcedureAddress(_CompareFileTime, kernel32, 'CompareFileTime');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CompareFileTime]
  end;
end;

var
  _FileTimeToDosDateTime: Pointer;

function FileTimeToDosDateTime;
begin
  GetProcedureAddress(_FileTimeToDosDateTime, kernel32, 'FileTimeToDosDateTime');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FileTimeToDosDateTime]
  end;
end;

var
  _DosDateTimeToFileTime: Pointer;

function DosDateTimeToFileTime;
begin
  GetProcedureAddress(_DosDateTimeToFileTime, kernel32, 'DosDateTimeToFileTime');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DosDateTimeToFileTime]
  end;
end;

var
  _GetTickCount: Pointer;

function GetTickCount;
begin
  GetProcedureAddress(_GetTickCount, kernel32, 'GetTickCount');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetTickCount]
  end;
end;

var
  _SetSystemTimeAdjustment: Pointer;

function SetSystemTimeAdjustment;
begin
  GetProcedureAddress(_SetSystemTimeAdjustment, kernel32, 'SetSystemTimeAdjustment');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetSystemTimeAdjustment]
  end;
end;

var
  _GetSystemTimeAdjustment: Pointer;

function GetSystemTimeAdjustment;
begin
  GetProcedureAddress(_GetSystemTimeAdjustment, kernel32, 'GetSystemTimeAdjustment');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSystemTimeAdjustment]
  end;
end;

var
  _FormatMessageA: Pointer;

function FormatMessageA;
begin
  GetProcedureAddress(_FormatMessageA, kernel32, 'FormatMessageA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FormatMessageA]
  end;
end;

var
  _FormatMessageW: Pointer;

function FormatMessageW;
begin
  GetProcedureAddress(_FormatMessageW, kernel32, 'FormatMessageW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FormatMessageW]
  end;
end;

var
  _FormatMessage: Pointer;

function FormatMessage;
begin
  GetProcedureAddress(_FormatMessage, kernel32, 'FormatMessage' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FormatMessage]
  end;
end;

var
  _CreatePipe: Pointer;

function CreatePipe;
begin
  GetProcedureAddress(_CreatePipe, kernel32, 'CreatePipe');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreatePipe]
  end;
end;

var
  _ConnectNamedPipe: Pointer;

function ConnectNamedPipe;
begin
  GetProcedureAddress(_ConnectNamedPipe, kernel32, 'ConnectNamedPipe');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ConnectNamedPipe]
  end;
end;

var
  _DisconnectNamedPipe: Pointer;

function DisconnectNamedPipe;
begin
  GetProcedureAddress(_DisconnectNamedPipe, kernel32, 'DisconnectNamedPipe');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DisconnectNamedPipe]
  end;
end;

var
  _SetNamedPipeHandleState: Pointer;

function SetNamedPipeHandleState;
begin
  GetProcedureAddress(_SetNamedPipeHandleState, kernel32, 'SetNamedPipeHandleState');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetNamedPipeHandleState]
  end;
end;

var
  _GetNamedPipeInfo: Pointer;

function GetNamedPipeInfo;
begin
  GetProcedureAddress(_GetNamedPipeInfo, kernel32, 'GetNamedPipeInfo');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetNamedPipeInfo]
  end;
end;

var
  _PeekNamedPipe: Pointer;

function PeekNamedPipe;
begin
  GetProcedureAddress(_PeekNamedPipe, kernel32, 'PeekNamedPipe');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_PeekNamedPipe]
  end;
end;

var
  _TransactNamedPipe: Pointer;

function TransactNamedPipe;
begin
  GetProcedureAddress(_TransactNamedPipe, kernel32, 'TransactNamedPipe');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_TransactNamedPipe]
  end;
end;

var
  _CreateMailslotA: Pointer;

function CreateMailslotA;
begin
  GetProcedureAddress(_CreateMailslotA, kernel32, 'CreateMailslotA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateMailslotA]
  end;
end;

var
  _CreateMailslotW: Pointer;

function CreateMailslotW;
begin
  GetProcedureAddress(_CreateMailslotW, kernel32, 'CreateMailslotW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateMailslotW]
  end;
end;

var
  _CreateMailslot: Pointer;

function CreateMailslot;
begin
  GetProcedureAddress(_CreateMailslot, kernel32, 'CreateMailslot' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateMailslot]
  end;
end;

var
  _GetMailslotInfo: Pointer;

function GetMailslotInfo;
begin
  GetProcedureAddress(_GetMailslotInfo, kernel32, 'GetMailslotInfo');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetMailslotInfo]
  end;
end;

var
  _SetMailslotInfo: Pointer;

function SetMailslotInfo;
begin
  GetProcedureAddress(_SetMailslotInfo, kernel32, 'SetMailslotInfo');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetMailslotInfo]
  end;
end;

var
  _MapViewOfFile: Pointer;

function MapViewOfFile;
begin
  GetProcedureAddress(_MapViewOfFile, kernel32, 'MapViewOfFile');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_MapViewOfFile]
  end;
end;

var
  _FlushViewOfFile: Pointer;

function FlushViewOfFile;
begin
  GetProcedureAddress(_FlushViewOfFile, kernel32, 'FlushViewOfFile');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FlushViewOfFile]
  end;
end;

var
  _UnmapViewOfFile: Pointer;

function UnmapViewOfFile;
begin
  GetProcedureAddress(_UnmapViewOfFile, kernel32, 'UnmapViewOfFile');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_UnmapViewOfFile]
  end;
end;

var
  _EncryptFileA: Pointer;

function EncryptFileA;
begin
  GetProcedureAddress(_EncryptFileA, advapi32, 'EncryptFileA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EncryptFileA]
  end;
end;

var
  _EncryptFileW: Pointer;

function EncryptFileW;
begin
  GetProcedureAddress(_EncryptFileW, advapi32, 'EncryptFileW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EncryptFileW]
  end;
end;

var
  _EncryptFile: Pointer;

function EncryptFile;
begin
  GetProcedureAddress(_EncryptFile, advapi32, 'EncryptFile' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EncryptFile]
  end;
end;

var
  _DecryptFileA: Pointer;

function DecryptFileA;
begin
  GetProcedureAddress(_DecryptFileA, advapi32, 'DecryptFileA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DecryptFileA]
  end;
end;

var
  _DecryptFileW: Pointer;

function DecryptFileW;
begin
  GetProcedureAddress(_DecryptFileW, advapi32, 'DecryptFileW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DecryptFileW]
  end;
end;

var
  _DecryptFile: Pointer;

function DecryptFile;
begin
  GetProcedureAddress(_DecryptFile, advapi32, 'DecryptFile' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DecryptFile]
  end;
end;

var
  _FileEncryptionStatusA: Pointer;

function FileEncryptionStatusA;
begin
  GetProcedureAddress(_FileEncryptionStatusA, advapi32, 'FileEncryptionStatusA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FileEncryptionStatusA]
  end;
end;

var
  _FileEncryptionStatusW: Pointer;

function FileEncryptionStatusW;
begin
  GetProcedureAddress(_FileEncryptionStatusW, advapi32, 'FileEncryptionStatusW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FileEncryptionStatusW]
  end;
end;

var
  _FileEncryptionStatus: Pointer;

function FileEncryptionStatus;
begin
  GetProcedureAddress(_FileEncryptionStatus, advapi32, 'FileEncryptionStatus' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FileEncryptionStatus]
  end;
end;

var
  _OpenEncryptedFileRawA: Pointer;

function OpenEncryptedFileRawA;
begin
  GetProcedureAddress(_OpenEncryptedFileRawA, advapi32, 'OpenEncryptedFileRawA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenEncryptedFileRawA]
  end;
end;

var
  _OpenEncryptedFileRawW: Pointer;

function OpenEncryptedFileRawW;
begin
  GetProcedureAddress(_OpenEncryptedFileRawW, advapi32, 'OpenEncryptedFileRawW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenEncryptedFileRawW]
  end;
end;

var
  _OpenEncryptedFileRaw: Pointer;

function OpenEncryptedFileRaw;
begin
  GetProcedureAddress(_OpenEncryptedFileRaw, advapi32, 'OpenEncryptedFileRaw' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenEncryptedFileRaw]
  end;
end;

var
  _ReadEncryptedFileRaw: Pointer;

function ReadEncryptedFileRaw;
begin
  GetProcedureAddress(_ReadEncryptedFileRaw, advapi32, 'ReadEncryptedFileRaw');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReadEncryptedFileRaw]
  end;
end;

var
  _WriteEncryptedFileRaw: Pointer;

function WriteEncryptedFileRaw;
begin
  GetProcedureAddress(_WriteEncryptedFileRaw, advapi32, 'WriteEncryptedFileRaw');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WriteEncryptedFileRaw]
  end;
end;

var
  _CloseEncryptedFileRaw: Pointer;

procedure CloseEncryptedFileRaw;
begin
  GetProcedureAddress(_CloseEncryptedFileRaw, advapi32, 'CloseEncryptedFileRaw');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CloseEncryptedFileRaw]
  end;
end;

var
  _lstrcmpA: Pointer;

function lstrcmpA;
begin
  GetProcedureAddress(_lstrcmpA, kernel32, 'lstrcmpA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_lstrcmpA]
  end;
end;

var
  _lstrcmpW: Pointer;

function lstrcmpW;
begin
  GetProcedureAddress(_lstrcmpW, kernel32, 'lstrcmpW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_lstrcmpW]
  end;
end;

var
  _lstrcmp: Pointer;

function lstrcmp;
begin
  GetProcedureAddress(_lstrcmp, kernel32, 'lstrcmp' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_lstrcmp]
  end;
end;

var
  _lstrcmpiA: Pointer;

function lstrcmpiA;
begin
  GetProcedureAddress(_lstrcmpiA, kernel32, 'lstrcmpiA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_lstrcmpiA]
  end;
end;

var
  _lstrcmpiW: Pointer;

function lstrcmpiW;
begin
  GetProcedureAddress(_lstrcmpiW, kernel32, 'lstrcmpiW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_lstrcmpiW]
  end;
end;

var
  _lstrcmpi: Pointer;

function lstrcmpi;
begin
  GetProcedureAddress(_lstrcmpi, kernel32, 'lstrcmpi' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_lstrcmpi]
  end;
end;

var
  _lstrcpynA: Pointer;

function lstrcpynA;
begin
  GetProcedureAddress(_lstrcpynA, kernel32, 'lstrcpynA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_lstrcpynA]
  end;
end;

var
  _lstrcpynW: Pointer;

function lstrcpynW;
begin
  GetProcedureAddress(_lstrcpynW, kernel32, 'lstrcpynW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_lstrcpynW]
  end;
end;

var
  _lstrcpyn: Pointer;

function lstrcpyn;
begin
  GetProcedureAddress(_lstrcpyn, kernel32, 'lstrcpyn' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_lstrcpyn]
  end;
end;

var
  _lstrcpyA: Pointer;

function lstrcpyA;
begin
  GetProcedureAddress(_lstrcpyA, kernel32, 'lstrcpyA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_lstrcpyA]
  end;
end;

var
  _lstrcpyW: Pointer;

function lstrcpyW;
begin
  GetProcedureAddress(_lstrcpyW, kernel32, 'lstrcpyW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_lstrcpyW]
  end;
end;

var
  _lstrcpy: Pointer;

function lstrcpy;
begin
  GetProcedureAddress(_lstrcpy, kernel32, 'lstrcpy' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_lstrcpy]
  end;
end;

var
  _lstrcatA: Pointer;

function lstrcatA;
begin
  GetProcedureAddress(_lstrcatA, kernel32, 'lstrcatA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_lstrcatA]
  end;
end;

var
  _lstrcatW: Pointer;

function lstrcatW;
begin
  GetProcedureAddress(_lstrcatW, kernel32, 'lstrcatW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_lstrcatW]
  end;
end;

var
  _lstrcat: Pointer;

function lstrcat;
begin
  GetProcedureAddress(_lstrcat, kernel32, 'lstrcat' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_lstrcat]
  end;
end;

var
  _lstrlenA: Pointer;

function lstrlenA;
begin
  GetProcedureAddress(_lstrlenA, kernel32, 'lstrlenA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_lstrlenA]
  end;
end;

var
  _lstrlenW: Pointer;

function lstrlenW;
begin
  GetProcedureAddress(_lstrlenW, kernel32, 'lstrlenW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_lstrlenW]
  end;
end;

var
  _lstrlen: Pointer;

function lstrlen;
begin
  GetProcedureAddress(_lstrlen, kernel32, 'lstrlen' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_lstrlen]
  end;
end;

var
  _OpenFile: Pointer;

function OpenFile;
begin
  GetProcedureAddress(_OpenFile, kernel32, 'OpenFile');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenFile]
  end;
end;

var
  __lopen: Pointer;

function _lopen;
begin
  GetProcedureAddress(__lopen, kernel32, '_lopen');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [__lopen]
  end;
end;

var
  __lcreat: Pointer;

function _lcreat;
begin
  GetProcedureAddress(__lcreat, kernel32, '_lcreat');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [__lcreat]
  end;
end;

var
  __lread: Pointer;

function _lread;
begin
  GetProcedureAddress(__lread, kernel32, '_lread');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [__lread]
  end;
end;

var
  __lwrite: Pointer;

function _lwrite;
begin
  GetProcedureAddress(__lwrite, kernel32, '_lwrite');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [__lwrite]
  end;
end;

var
  __hread: Pointer;

function _hread;
begin
  GetProcedureAddress(__hread, kernel32, '_hread');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [__hread]
  end;
end;

var
  __hwrite: Pointer;

function _hwrite;
begin
  GetProcedureAddress(__hwrite, kernel32, '_hwrite');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [__hwrite]
  end;
end;

var
  __lclose: Pointer;

function _lclose;
begin
  GetProcedureAddress(__lclose, kernel32, '_lclose');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [__lclose]
  end;
end;

var
  __llseek: Pointer;

function _llseek;
begin
  GetProcedureAddress(__llseek, kernel32, '_llseek');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [__llseek]
  end;
end;

var
  _IsTextUnicode: Pointer;

function IsTextUnicode;
begin
  GetProcedureAddress(_IsTextUnicode, advapi32, 'IsTextUnicode');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsTextUnicode]
  end;
end;

var
  _FlsAlloc: Pointer;

function FlsAlloc;
begin
  GetProcedureAddress(_FlsAlloc, kernel32, 'FlsAlloc');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FlsAlloc]
  end;
end;

var
  _FlsGetValue: Pointer;

function FlsGetValue;
begin
  GetProcedureAddress(_FlsGetValue, kernel32, 'FlsGetValue');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FlsGetValue]
  end;
end;

var
  _FlsSetValue: Pointer;

function FlsSetValue;
begin
  GetProcedureAddress(_FlsSetValue, kernel32, 'FlsSetValue');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FlsSetValue]
  end;
end;

var
  _FlsFree: Pointer;

function FlsFree;
begin
  GetProcedureAddress(_FlsFree, kernel32, 'FlsFree');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FlsFree]
  end;
end;

var
  _TlsAlloc: Pointer;

function TlsAlloc;
begin
  GetProcedureAddress(_TlsAlloc, kernel32, 'TlsAlloc');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_TlsAlloc]
  end;
end;

var
  _TlsGetValue: Pointer;

function TlsGetValue;
begin
  GetProcedureAddress(_TlsGetValue, kernel32, 'TlsGetValue');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_TlsGetValue]
  end;
end;

var
  _TlsSetValue: Pointer;

function TlsSetValue;
begin
  GetProcedureAddress(_TlsSetValue, kernel32, 'TlsSetValue');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_TlsSetValue]
  end;
end;

var
  _TlsFree: Pointer;

function TlsFree;
begin
  GetProcedureAddress(_TlsFree, kernel32, 'TlsFree');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_TlsFree]
  end;
end;

var
  _SleepEx: Pointer;

function SleepEx;
begin
  GetProcedureAddress(_SleepEx, kernel32, 'SleepEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SleepEx]
  end;
end;

var
  _WaitForSingleObjectEx: Pointer;

function WaitForSingleObjectEx;
begin
  GetProcedureAddress(_WaitForSingleObjectEx, kernel32, 'WaitForSingleObjectEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WaitForSingleObjectEx]
  end;
end;

var
  _WaitForMultipleObjectsEx: Pointer;

function WaitForMultipleObjectsEx;
begin
  GetProcedureAddress(_WaitForMultipleObjectsEx, kernel32, 'WaitForMultipleObjectsEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WaitForMultipleObjectsEx]
  end;
end;

var
  _SignalObjectAndWait: Pointer;

function SignalObjectAndWait;
begin
  GetProcedureAddress(_SignalObjectAndWait, kernel32, 'SignalObjectAndWait');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SignalObjectAndWait]
  end;
end;

var
  _ReadFileEx: Pointer;

function ReadFileEx;
begin
  GetProcedureAddress(_ReadFileEx, kernel32, 'ReadFileEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReadFileEx]
  end;
end;

var
  _WriteFileEx: Pointer;

function WriteFileEx;
begin
  GetProcedureAddress(_WriteFileEx, kernel32, 'WriteFileEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WriteFileEx]
  end;
end;

var
  _BackupRead: Pointer;

function BackupRead;
begin
  GetProcedureAddress(_BackupRead, kernel32, 'BackupRead');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_BackupRead]
  end;
end;

var
  _BackupSeek: Pointer;

function BackupSeek;
begin
  GetProcedureAddress(_BackupSeek, kernel32, 'BackupSeek');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_BackupSeek]
  end;
end;

var
  _BackupWrite: Pointer;

function BackupWrite;
begin
  GetProcedureAddress(_BackupWrite, kernel32, 'BackupWrite');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_BackupWrite]
  end;
end;

var
  _ReadFileScatter: Pointer;

function ReadFileScatter;
begin
  GetProcedureAddress(_ReadFileScatter, kernel32, 'ReadFileScatter');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReadFileScatter]
  end;
end;

var
  _WriteFileGather: Pointer;

function WriteFileGather;
begin
  GetProcedureAddress(_WriteFileGather, kernel32, 'WriteFileGather');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WriteFileGather]
  end;
end;

var
  _OpenMutexA: Pointer;

function OpenMutexA;
begin
  GetProcedureAddress(_OpenMutexA, kernel32, 'OpenMutexA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenMutexA]
  end;
end;

var
  _OpenMutexW: Pointer;

function OpenMutexW;
begin
  GetProcedureAddress(_OpenMutexW, kernel32, 'OpenMutexW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenMutexW]
  end;
end;

var
  _OpenMutex: Pointer;

function OpenMutex;
begin
  GetProcedureAddress(_OpenMutex, kernel32, 'OpenMutex' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenMutex]
  end;
end;

var
  _CreateEventA: Pointer;

function CreateEventA;
begin
  GetProcedureAddress(_CreateEventA, kernel32, 'CreateEventA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateEventA]
  end;
end;

var
  _CreateEventW: Pointer;

function CreateEventW;
begin
  GetProcedureAddress(_CreateEventW, kernel32, 'CreateEventW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateEventW]
  end;
end;

var
  _CreateEvent: Pointer;

function CreateEvent;
begin
  GetProcedureAddress(_CreateEvent, kernel32, 'CreateEvent' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateEvent]
  end;
end;

var
  _OpenEventA: Pointer;

function OpenEventA;
begin
  GetProcedureAddress(_OpenEventA, kernel32, 'OpenEventA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenEventA]
  end;
end;

var
  _OpenEventW: Pointer;

function OpenEventW;
begin
  GetProcedureAddress(_OpenEventW, kernel32, 'OpenEventW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenEventW]
  end;
end;

var
  _OpenEvent: Pointer;

function OpenEvent;
begin
  GetProcedureAddress(_OpenEvent, kernel32, 'OpenEvent' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenEvent]
  end;
end;

var
  _CreateSemaphoreA: Pointer;

function CreateSemaphoreA;
begin
  GetProcedureAddress(_CreateSemaphoreA, kernel32, 'CreateSemaphoreA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateSemaphoreA]
  end;
end;

var
  _CreateSemaphoreW: Pointer;

function CreateSemaphoreW;
begin
  GetProcedureAddress(_CreateSemaphoreW, kernel32, 'CreateSemaphoreW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateSemaphoreW]
  end;
end;

var
  _CreateSemaphore: Pointer;

function CreateSemaphore;
begin
  GetProcedureAddress(_CreateSemaphore, kernel32, 'CreateSemaphore' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateSemaphore]
  end;
end;

var
  _OpenSemaphoreA: Pointer;

function OpenSemaphoreA;
begin
  GetProcedureAddress(_OpenSemaphoreA, kernel32, 'OpenSemaphoreA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenSemaphoreA]
  end;
end;

var
  _OpenSemaphoreW: Pointer;

function OpenSemaphoreW;
begin
  GetProcedureAddress(_OpenSemaphoreW, kernel32, 'OpenSemaphoreW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenSemaphoreW]
  end;
end;

var
  _OpenSemaphore: Pointer;

function OpenSemaphore;
begin
  GetProcedureAddress(_OpenSemaphore, kernel32, 'OpenSemaphore' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenSemaphore]
  end;
end;

var
  _CreateWaitableTimerA: Pointer;

function CreateWaitableTimerA;
begin
  GetProcedureAddress(_CreateWaitableTimerA, kernel32, 'CreateWaitableTimerA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateWaitableTimerA]
  end;
end;

var
  _CreateWaitableTimerW: Pointer;

function CreateWaitableTimerW;
begin
  GetProcedureAddress(_CreateWaitableTimerW, kernel32, 'CreateWaitableTimerW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateWaitableTimerW]
  end;
end;

var
  _CreateWaitableTimer: Pointer;

function CreateWaitableTimer;
begin
  GetProcedureAddress(_CreateWaitableTimer, kernel32, 'CreateWaitableTimer' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateWaitableTimer]
  end;
end;

var
  _OpenWaitableTimerA: Pointer;

function OpenWaitableTimerA;
begin
  GetProcedureAddress(_OpenWaitableTimerA, kernel32, 'OpenWaitableTimerA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenWaitableTimerA]
  end;
end;

var
  _OpenWaitableTimerW: Pointer;

function OpenWaitableTimerW;
begin
  GetProcedureAddress(_OpenWaitableTimerW, kernel32, 'OpenWaitableTimerW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenWaitableTimerW]
  end;
end;

var
  _OpenWaitableTimer: Pointer;

function OpenWaitableTimer;
begin
  GetProcedureAddress(_OpenWaitableTimer, kernel32, 'OpenWaitableTimer' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenWaitableTimer]
  end;
end;

var
  _SetWaitableTimer: Pointer;

function SetWaitableTimer;
begin
  GetProcedureAddress(_SetWaitableTimer, kernel32, 'SetWaitableTimer');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetWaitableTimer]
  end;
end;

var
  _CancelWaitableTimer: Pointer;

function CancelWaitableTimer;
begin
  GetProcedureAddress(_CancelWaitableTimer, kernel32, 'CancelWaitableTimer');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CancelWaitableTimer]
  end;
end;

var
  _CreateFileMappingA: Pointer;

function CreateFileMappingA;
begin
  GetProcedureAddress(_CreateFileMappingA, kernel32, 'CreateFileMappingA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateFileMappingA]
  end;
end;

var
  _CreateFileMappingW: Pointer;

function CreateFileMappingW;
begin
  GetProcedureAddress(_CreateFileMappingW, kernel32, 'CreateFileMappingW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateFileMappingW]
  end;
end;

var
  _CreateFileMapping: Pointer;

function CreateFileMapping;
begin
  GetProcedureAddress(_CreateFileMapping, kernel32, 'CreateFileMapping' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateFileMapping]
  end;
end;

var
  _OpenFileMappingA: Pointer;

function OpenFileMappingA;
begin
  GetProcedureAddress(_OpenFileMappingA, kernel32, 'OpenFileMappingA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenFileMappingA]
  end;
end;

var
  _OpenFileMappingW: Pointer;

function OpenFileMappingW;
begin
  GetProcedureAddress(_OpenFileMappingW, kernel32, 'OpenFileMappingW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenFileMappingW]
  end;
end;

var
  _OpenFileMapping: Pointer;

function OpenFileMapping;
begin
  GetProcedureAddress(_OpenFileMapping, kernel32, 'OpenFileMapping' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenFileMapping]
  end;
end;

var
  _GetLogicalDriveStringsA: Pointer;

function GetLogicalDriveStringsA;
begin
  GetProcedureAddress(_GetLogicalDriveStringsA, kernel32, 'GetLogicalDriveStringsA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetLogicalDriveStringsA]
  end;
end;

var
  _GetLogicalDriveStringsW: Pointer;

function GetLogicalDriveStringsW;
begin
  GetProcedureAddress(_GetLogicalDriveStringsW, kernel32, 'GetLogicalDriveStringsW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetLogicalDriveStringsW]
  end;
end;

var
  _GetLogicalDriveStrings: Pointer;

function GetLogicalDriveStrings;
begin
  GetProcedureAddress(_GetLogicalDriveStrings, kernel32, 'GetLogicalDriveStrings' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetLogicalDriveStrings]
  end;
end;

var
  _CreateMemResNotification: Pointer;

function CreateMemoryResourceNotification;
begin
  GetProcedureAddress(_CreateMemResNotification, kernel32, 'CreateMemoryResourceNotification');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateMemResNotification]
  end;
end;

var
  _QueryMemoryResourceNotification: Pointer;

function QueryMemoryResourceNotification;
begin
  GetProcedureAddress(_QueryMemoryResourceNotification, kernel32, 'QueryMemoryResourceNotification');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_QueryMemoryResourceNotification]
  end;
end;

var
  _LoadLibraryA: Pointer;

function LoadLibraryA;
begin
  GetProcedureAddress(_LoadLibraryA, kernel32, 'LoadLibraryA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LoadLibraryA]
  end;
end;

var
  _LoadLibraryW: Pointer;

function LoadLibraryW;
begin
  GetProcedureAddress(_LoadLibraryW, kernel32, 'LoadLibraryW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LoadLibraryW]
  end;
end;

var
  _LoadLibrary: Pointer;

function LoadLibrary;
begin
  GetProcedureAddress(_LoadLibrary, kernel32, 'LoadLibrary' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LoadLibrary]
  end;
end;

var
  _LoadLibraryExA: Pointer;

function LoadLibraryExA;
begin
  GetProcedureAddress(_LoadLibraryExA, kernel32, 'LoadLibraryExA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LoadLibraryExA]
  end;
end;

var
  _LoadLibraryExW: Pointer;

function LoadLibraryExW;
begin
  GetProcedureAddress(_LoadLibraryExW, kernel32, 'LoadLibraryExW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LoadLibraryExW]
  end;
end;

var
  _LoadLibraryEx: Pointer;

function LoadLibraryEx;
begin
  GetProcedureAddress(_LoadLibraryEx, kernel32, 'LoadLibraryEx' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LoadLibraryEx]
  end;
end;

var
  _GetModuleFileNameA: Pointer;

function GetModuleFileNameA;
begin
  GetProcedureAddress(_GetModuleFileNameA, kernel32, 'GetModuleFileNameA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetModuleFileNameA]
  end;
end;

var
  _GetModuleFileNameW: Pointer;

function GetModuleFileNameW;
begin
  GetProcedureAddress(_GetModuleFileNameW, kernel32, 'GetModuleFileNameW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetModuleFileNameW]
  end;
end;

var
  _GetModuleFileName: Pointer;

function GetModuleFileName;
begin
  GetProcedureAddress(_GetModuleFileName, kernel32, 'GetModuleFileName' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetModuleFileName]
  end;
end;

var
  _GetModuleHandleA: Pointer;

function GetModuleHandleA;
begin
  GetProcedureAddress(_GetModuleHandleA, kernel32, 'GetModuleHandleA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetModuleHandleA]
  end;
end;

var
  _GetModuleHandleW: Pointer;

function GetModuleHandleW;
begin
  GetProcedureAddress(_GetModuleHandleW, kernel32, 'GetModuleHandleW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetModuleHandleW]
  end;
end;

var
  _GetModuleHandle: Pointer;

function GetModuleHandle;
begin
  GetProcedureAddress(_GetModuleHandle, kernel32, 'GetModuleHandle' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetModuleHandle]
  end;
end;


var
  _InitializePTAttrList: Pointer;

function InitializeProcThreadAttributeList;
begin
  GetProcedureAddress(_InitializePTAttrList, kernel32, 'InitializeProcThreadAttributeList');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_InitializePTAttrList]
  end;
end;

var
  _DeleteProcTAttrList: Pointer;

procedure DeleteProcThreadAttributeList;
begin
  GetProcedureAddress(_DeleteProcTAttrList, kernel32, 'DeleteProcThreadAttributeList');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DeleteProcTAttrList]
  end;
end;

var
  _UpdateProcTAttr: Pointer;

function UpdateProcThreadAttribute;
begin
  GetProcedureAddress(_UpdateProcTAttr, kernel32, 'UpdateProcThreadAttribute');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_UpdateProcTAttr]
  end;
end;

////////////


var
  _CreateProcessA: Pointer;

function CreateProcessA;
begin
  GetProcedureAddress(_CreateProcessA, kernel32, 'CreateProcessA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateProcessA]
  end;
end;

var
  _CreateProcessW: Pointer;

function CreateProcessW;
begin
  GetProcedureAddress(_CreateProcessW, kernel32, 'CreateProcessW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateProcessW]
  end;
end;

var
  _CreateProcess: Pointer;

function CreateProcess;
begin
  GetProcedureAddress(_CreateProcess, kernel32, 'CreateProcess' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateProcess]
  end;
end;

var
  _GetModuleHandleExA: Pointer;

function GetModuleHandleExA;
begin
  GetProcedureAddress(_GetModuleHandleExA, kernel32, 'GetModuleHandleExA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetModuleHandleExA]
  end;
end;

var
  _GetModuleHandleExW: Pointer;

function GetModuleHandleExW;
begin
  GetProcedureAddress(_GetModuleHandleExW, kernel32, 'GetModuleHandleExW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetModuleHandleExW]
  end;
end;

var
  _GetModuleHandleEx: Pointer;

function GetModuleHandleEx;
begin
  GetProcedureAddress(_GetModuleHandleEx, kernel32, 'GetModuleHandleEx' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetModuleHandleEx]
  end;
end;

var
  _NeedCurrentDirectoryForExePathA: Pointer;

function NeedCurrentDirectoryForExePathA;
begin
  GetProcedureAddress(_NeedCurrentDirectoryForExePathA, kernel32, 'NeedCurrentDirectoryForExePathA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_NeedCurrentDirectoryForExePathA]
  end;
end;

var
  _NeedCurrentDirectoryForExePathW: Pointer;

function NeedCurrentDirectoryForExePathW;
begin
  GetProcedureAddress(_NeedCurrentDirectoryForExePathW, kernel32, 'NeedCurrentDirectoryForExePathW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_NeedCurrentDirectoryForExePathW]
  end;
end;

var
  _NeedCurrentDirectoryForExePath: Pointer;

function NeedCurrentDirectoryForExePath;
begin
  GetProcedureAddress(_NeedCurrentDirectoryForExePath, kernel32, 'NeedCurrentDirectoryForExePath' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_NeedCurrentDirectoryForExePath]
  end;
end;

var
  _SetProcessShutdownParameters: Pointer;

function SetProcessShutdownParameters;
begin
  GetProcedureAddress(_SetProcessShutdownParameters, kernel32, 'SetProcessShutdownParameters');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetProcessShutdownParameters]
  end;
end;

var
  _GetProcessShutdownParameters: Pointer;

function GetProcessShutdownParameters;
begin
  GetProcedureAddress(_GetProcessShutdownParameters, kernel32, 'GetProcessShutdownParameters');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProcessShutdownParameters]
  end;
end;

var
  _GetProcessVersion: Pointer;

function GetProcessVersion;
begin
  GetProcedureAddress(_GetProcessVersion, kernel32, 'GetProcessVersion');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProcessVersion]
  end;
end;

var
  _FatalAppExitA: Pointer;

procedure FatalAppExitA;
begin
  GetProcedureAddress(_FatalAppExitA, kernel32, 'FatalAppExitA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FatalAppExitA]
  end;
end;

var
  _FatalAppExitW: Pointer;

procedure FatalAppExitW;
begin
  GetProcedureAddress(_FatalAppExitW, kernel32, 'FatalAppExitW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FatalAppExitW]
  end;
end;

var
  _FatalAppExit: Pointer;

procedure FatalAppExit;
begin
  GetProcedureAddress(_FatalAppExit, kernel32, 'FatalAppExit' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FatalAppExit]
  end;
end;

var
  _GetStartupInfoA: Pointer;

procedure GetStartupInfoA;
begin
  GetProcedureAddress(_GetStartupInfoA, kernel32, 'GetStartupInfoA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetStartupInfoA]
  end;
end;

var
  _GetStartupInfoW: Pointer;

procedure GetStartupInfoW;
begin
  GetProcedureAddress(_GetStartupInfoW, kernel32, 'GetStartupInfoW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetStartupInfoW]
  end;
end;

var
  _GetStartupInfo: Pointer;

procedure GetStartupInfo;
begin
  GetProcedureAddress(_GetStartupInfo, kernel32, 'GetStartupInfo' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetStartupInfo]
  end;
end;

var
  _GetCommandLineA: Pointer;

function GetCommandLineA;
begin
  GetProcedureAddress(_GetCommandLineA, kernel32, 'GetCommandLineA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCommandLineA]
  end;
end;

var
  _GetCommandLineW: Pointer;

function GetCommandLineW;
begin
  GetProcedureAddress(_GetCommandLineW, kernel32, 'GetCommandLineW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCommandLineW]
  end;
end;

var
  _GetCommandLine: Pointer;

function GetCommandLine;
begin
  GetProcedureAddress(_GetCommandLine, kernel32, 'GetCommandLine' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCommandLine]
  end;
end;

var
  _GetEnvironmentVariableA: Pointer;

function GetEnvironmentVariableA;
begin
  GetProcedureAddress(_GetEnvironmentVariableA, kernel32, 'GetEnvironmentVariableA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetEnvironmentVariableA]
  end;
end;

var
  _GetEnvironmentVariableW: Pointer;

function GetEnvironmentVariableW;
begin
  GetProcedureAddress(_GetEnvironmentVariableW, kernel32, 'GetEnvironmentVariableW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetEnvironmentVariableW]
  end;
end;

var
  _GetEnvironmentVariable: Pointer;

function GetEnvironmentVariable;
begin
  GetProcedureAddress(_GetEnvironmentVariable, kernel32, 'GetEnvironmentVariable' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetEnvironmentVariable]
  end;
end;

var
  _SetEnvironmentVariableA: Pointer;

function SetEnvironmentVariableA;
begin
  GetProcedureAddress(_SetEnvironmentVariableA, kernel32, 'SetEnvironmentVariableA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetEnvironmentVariableA]
  end;
end;

var
  _SetEnvironmentVariableW: Pointer;

function SetEnvironmentVariableW;
begin
  GetProcedureAddress(_SetEnvironmentVariableW, kernel32, 'SetEnvironmentVariableW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetEnvironmentVariableW]
  end;
end;

var
  _SetEnvironmentVariable: Pointer;

function SetEnvironmentVariable;
begin
  GetProcedureAddress(_SetEnvironmentVariable, kernel32, 'SetEnvironmentVariable' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetEnvironmentVariable]
  end;
end;

var
  _ExpandEnvironmentStringsA: Pointer;

function ExpandEnvironmentStringsA;
begin
  GetProcedureAddress(_ExpandEnvironmentStringsA, kernel32, 'ExpandEnvironmentStringsA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ExpandEnvironmentStringsA]
  end;
end;

var
  _ExpandEnvironmentStringsW: Pointer;

function ExpandEnvironmentStringsW;
begin
  GetProcedureAddress(_ExpandEnvironmentStringsW, kernel32, 'ExpandEnvironmentStringsW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ExpandEnvironmentStringsW]
  end;
end;

var
  _ExpandEnvironmentStrings: Pointer;

function ExpandEnvironmentStrings;
begin
  GetProcedureAddress(_ExpandEnvironmentStrings, kernel32, 'ExpandEnvironmentStrings' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ExpandEnvironmentStrings]
  end;
end;

var
  _GetFirmwareEnvironmentVariableA: Pointer;

function GetFirmwareEnvironmentVariableA;
begin
  GetProcedureAddress(_GetFirmwareEnvironmentVariableA, kernel32, 'GetFirmwareEnvironmentVariableA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFirmwareEnvironmentVariableA]
  end;
end;

var
  _GetFirmwareEnvironmentVariableW: Pointer;

function GetFirmwareEnvironmentVariableW;
begin
  GetProcedureAddress(_GetFirmwareEnvironmentVariableW, kernel32, 'GetFirmwareEnvironmentVariableW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFirmwareEnvironmentVariableW]
  end;
end;

var
  _GetFirmwareEnvironmentVariable: Pointer;

function GetFirmwareEnvironmentVariable;
begin
  GetProcedureAddress(_GetFirmwareEnvironmentVariable, kernel32, 'GetFirmwareEnvironmentVariable' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFirmwareEnvironmentVariable]
  end;
end;

var
  _SetFirmwareEnvironmentVariableA: Pointer;

function SetFirmwareEnvironmentVariableA;
begin
  GetProcedureAddress(_SetFirmwareEnvironmentVariableA, kernel32, 'SetFirmwareEnvironmentVariableA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetFirmwareEnvironmentVariableA]
  end;
end;

var
  _SetFirmwareEnvironmentVariableW: Pointer;

function SetFirmwareEnvironmentVariableW;
begin
  GetProcedureAddress(_SetFirmwareEnvironmentVariableW, kernel32, 'SetFirmwareEnvironmentVariableW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetFirmwareEnvironmentVariableW]
  end;
end;

var
  _SetFirmwareEnvironmentVariable: Pointer;

function SetFirmwareEnvironmentVariable;
begin
  GetProcedureAddress(_SetFirmwareEnvironmentVariable, kernel32, 'SetFirmwareEnvironmentVariable' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetFirmwareEnvironmentVariable]
  end;
end;

var
  _OutputDebugStringA: Pointer;

procedure OutputDebugStringA;
begin
  GetProcedureAddress(_OutputDebugStringA, kernel32, 'OutputDebugStringA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OutputDebugStringA]
  end;
end;

var
  _OutputDebugStringW: Pointer;

procedure OutputDebugStringW;
begin
  GetProcedureAddress(_OutputDebugStringW, kernel32, 'OutputDebugStringW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OutputDebugStringW]
  end;
end;

var
  _OutputDebugString: Pointer;

procedure OutputDebugString;
begin
  GetProcedureAddress(_OutputDebugString, kernel32, 'OutputDebugString' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OutputDebugString]
  end;
end;

var
  _FindResourceA: Pointer;

function FindResourceA;
begin
  GetProcedureAddress(_FindResourceA, kernel32, 'FindResourceA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindResourceA]
  end;
end;

var
  _FindResourceW: Pointer;

function FindResourceW;
begin
  GetProcedureAddress(_FindResourceW, kernel32, 'FindResourceW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindResourceW]
  end;
end;

var
  _FindResource: Pointer;

function FindResource;
begin
  GetProcedureAddress(_FindResource, kernel32, 'FindResource' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindResource]
  end;
end;

var
  _FindResourceExA: Pointer;

function FindResourceExA;
begin
  GetProcedureAddress(_FindResourceExA, kernel32, 'FindResourceExA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindResourceExA]
  end;
end;

var
  _FindResourceExW: Pointer;

function FindResourceExW;
begin
  GetProcedureAddress(_FindResourceExW, kernel32, 'FindResourceExW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindResourceExW]
  end;
end;

var
  _FindResourceEx: Pointer;

function FindResourceEx;
begin
  GetProcedureAddress(_FindResourceEx, kernel32, 'FindResourceEx' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindResourceEx]
  end;
end;

var
  _EnumResourceTypesA: Pointer;

function EnumResourceTypesA;
begin
  GetProcedureAddress(_EnumResourceTypesA, kernel32, 'EnumResourceTypesA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EnumResourceTypesA]
  end;
end;

var
  _EnumResourceTypesW: Pointer;

function EnumResourceTypesW;
begin
  GetProcedureAddress(_EnumResourceTypesW, kernel32, 'EnumResourceTypesW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EnumResourceTypesW]
  end;
end;

var
  _EnumResourceTypes: Pointer;

function EnumResourceTypes;
begin
  GetProcedureAddress(_EnumResourceTypes, kernel32, 'EnumResourceTypes' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EnumResourceTypes]
  end;
end;

var
  _EnumResourceNamesA: Pointer;

function EnumResourceNamesA;
begin
  GetProcedureAddress(_EnumResourceNamesA, kernel32, 'EnumResourceNamesA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EnumResourceNamesA]
  end;
end;

var
  _EnumResourceNamesW: Pointer;

function EnumResourceNamesW;
begin
  GetProcedureAddress(_EnumResourceNamesW, kernel32, 'EnumResourceNamesW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EnumResourceNamesW]
  end;
end;

var
  _EnumResourceNames: Pointer;

function EnumResourceNames;
begin
  GetProcedureAddress(_EnumResourceNames, kernel32, 'EnumResourceNames' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EnumResourceNames]
  end;
end;

var
  _EnumResourceLanguagesA: Pointer;

function EnumResourceLanguagesA;
begin
  GetProcedureAddress(_EnumResourceLanguagesA, kernel32, 'EnumResourceLanguagesA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EnumResourceLanguagesA]
  end;
end;

var
  _EnumResourceLanguagesW: Pointer;

function EnumResourceLanguagesW;
begin
  GetProcedureAddress(_EnumResourceLanguagesW, kernel32, 'EnumResourceLanguagesW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EnumResourceLanguagesW]
  end;
end;

var
  _EnumResourceLanguages: Pointer;

function EnumResourceLanguages;
begin
  GetProcedureAddress(_EnumResourceLanguages, kernel32, 'EnumResourceLanguages' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EnumResourceLanguages]
  end;
end;

var
  _BeginUpdateResourceA: Pointer;

function BeginUpdateResourceA;
begin
  GetProcedureAddress(_BeginUpdateResourceA, kernel32, 'BeginUpdateResourceA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_BeginUpdateResourceA]
  end;
end;

var
  _BeginUpdateResourceW: Pointer;

function BeginUpdateResourceW;
begin
  GetProcedureAddress(_BeginUpdateResourceW, kernel32, 'BeginUpdateResourceW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_BeginUpdateResourceW]
  end;
end;

var
  _BeginUpdateResource: Pointer;

function BeginUpdateResource;
begin
  GetProcedureAddress(_BeginUpdateResource, kernel32, 'BeginUpdateResource' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_BeginUpdateResource]
  end;
end;

var
  _UpdateResourceA: Pointer;

function UpdateResourceA;
begin
  GetProcedureAddress(_UpdateResourceA, kernel32, 'UpdateResourceA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_UpdateResourceA]
  end;
end;

var
  _UpdateResourceW: Pointer;

function UpdateResourceW;
begin
  GetProcedureAddress(_UpdateResourceW, kernel32, 'UpdateResourceW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_UpdateResourceW]
  end;
end;

var
  _UpdateResource: Pointer;

function UpdateResource;
begin
  GetProcedureAddress(_UpdateResource, kernel32, 'UpdateResource' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_UpdateResource]
  end;
end;

var
  _EndUpdateResourceA: Pointer;

function EndUpdateResourceA;
begin
  GetProcedureAddress(_EndUpdateResourceA, kernel32, 'EndUpdateResourceA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EndUpdateResourceA]
  end;
end;

var
  _EndUpdateResourceW: Pointer;

function EndUpdateResourceW;
begin
  GetProcedureAddress(_EndUpdateResourceW, kernel32, 'EndUpdateResourceW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EndUpdateResourceW]
  end;
end;

var
  _EndUpdateResource: Pointer;

function EndUpdateResource;
begin
  GetProcedureAddress(_EndUpdateResource, kernel32, 'EndUpdateResource' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EndUpdateResource]
  end;
end;

var
  _GlobalAddAtomA: Pointer;

function GlobalAddAtomA;
begin
  GetProcedureAddress(_GlobalAddAtomA, kernel32, 'GlobalAddAtomA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalAddAtomA]
  end;
end;

var
  _GlobalAddAtomW: Pointer;

function GlobalAddAtomW;
begin
  GetProcedureAddress(_GlobalAddAtomW, kernel32, 'GlobalAddAtomW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalAddAtomW]
  end;
end;

var
  _GlobalAddAtom: Pointer;

function GlobalAddAtom;
begin
  GetProcedureAddress(_GlobalAddAtom, kernel32, 'GlobalAddAtom' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalAddAtom]
  end;
end;

var
  _GlobalFindAtomA: Pointer;

function GlobalFindAtomA;
begin
  GetProcedureAddress(_GlobalFindAtomA, kernel32, 'GlobalFindAtomA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalFindAtomA]
  end;
end;

var
  _GlobalFindAtomW: Pointer;

function GlobalFindAtomW;
begin
  GetProcedureAddress(_GlobalFindAtomW, kernel32, 'GlobalFindAtomW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalFindAtomW]
  end;
end;

var
  _GlobalFindAtom: Pointer;

function GlobalFindAtom;
begin
  GetProcedureAddress(_GlobalFindAtom, kernel32, 'GlobalFindAtom' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalFindAtom]
  end;
end;

var
  _GlobalGetAtomNameA: Pointer;

function GlobalGetAtomNameA;
begin
  GetProcedureAddress(_GlobalGetAtomNameA, kernel32, 'GlobalGetAtomNameA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalGetAtomNameA]
  end;
end;

var
  _GlobalGetAtomNameW: Pointer;

function GlobalGetAtomNameW;
begin
  GetProcedureAddress(_GlobalGetAtomNameW, kernel32, 'GlobalGetAtomNameW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalGetAtomNameW]
  end;
end;

var
  _GlobalGetAtomName: Pointer;

function GlobalGetAtomName;
begin
  GetProcedureAddress(_GlobalGetAtomName, kernel32, 'GlobalGetAtomName' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GlobalGetAtomName]
  end;
end;

var
  _AddAtomA: Pointer;

function AddAtomA;
begin
  GetProcedureAddress(_AddAtomA, kernel32, 'AddAtomA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AddAtomA]
  end;
end;

var
  _AddAtomW: Pointer;

function AddAtomW;
begin
  GetProcedureAddress(_AddAtomW, kernel32, 'AddAtomW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AddAtomW]
  end;
end;

var
  _AddAtom: Pointer;

function AddAtom;
begin
  GetProcedureAddress(_AddAtom, kernel32, 'AddAtom' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AddAtom]
  end;
end;

var
  _FindAtomA: Pointer;

function FindAtomA;
begin
  GetProcedureAddress(_FindAtomA, kernel32, 'FindAtomA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindAtomA]
  end;
end;

var
  _FindAtomW: Pointer;

function FindAtomW;
begin
  GetProcedureAddress(_FindAtomW, kernel32, 'FindAtomW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindAtomW]
  end;
end;

var
  _FindAtom: Pointer;

function FindAtom;
begin
  GetProcedureAddress(_FindAtom, kernel32, 'FindAtom' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindAtom]
  end;
end;

var
  _GetAtomNameA: Pointer;

function GetAtomNameA;
begin
  GetProcedureAddress(_GetAtomNameA, kernel32, 'GetAtomNameA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetAtomNameA]
  end;
end;

var
  _GetAtomNameW: Pointer;

function GetAtomNameW;
begin
  GetProcedureAddress(_GetAtomNameW, kernel32, 'GetAtomNameW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetAtomNameW]
  end;
end;

var
  _GetAtomName: Pointer;

function GetAtomName;
begin
  GetProcedureAddress(_GetAtomName, kernel32, 'GetAtomName' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetAtomName]
  end;
end;

var
  _GetProfileIntA: Pointer;

function GetProfileIntA;
begin
  GetProcedureAddress(_GetProfileIntA, kernel32, 'GetProfileIntA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProfileIntA]
  end;
end;

var
  _GetProfileIntW: Pointer;

function GetProfileIntW;
begin
  GetProcedureAddress(_GetProfileIntW, kernel32, 'GetProfileIntW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProfileIntW]
  end;
end;

var
  _GetProfileInt: Pointer;

function GetProfileInt;
begin
  GetProcedureAddress(_GetProfileInt, kernel32, 'GetProfileInt' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProfileInt]
  end;
end;

var
  _GetProfileStringA: Pointer;

function GetProfileStringA;
begin
  GetProcedureAddress(_GetProfileStringA, kernel32, 'GetProfileStringA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProfileStringA]
  end;
end;

var
  _GetProfileStringW: Pointer;

function GetProfileStringW;
begin
  GetProcedureAddress(_GetProfileStringW, kernel32, 'GetProfileStringW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProfileStringW]
  end;
end;

var
  _GetProfileString: Pointer;

function GetProfileString;
begin
  GetProcedureAddress(_GetProfileString, kernel32, 'GetProfileString' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProfileString]
  end;
end;

var
  _WriteProfileStringA: Pointer;

function WriteProfileStringA;
begin
  GetProcedureAddress(_WriteProfileStringA, kernel32, 'WriteProfileStringA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WriteProfileStringA]
  end;
end;

var
  _WriteProfileStringW: Pointer;

function WriteProfileStringW;
begin
  GetProcedureAddress(_WriteProfileStringW, kernel32, 'WriteProfileStringW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WriteProfileStringW]
  end;
end;

var
  _WriteProfileString: Pointer;

function WriteProfileString;
begin
  GetProcedureAddress(_WriteProfileString, kernel32, 'WriteProfileString' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WriteProfileString]
  end;
end;

var
  _GetProfileSectionA: Pointer;

function GetProfileSectionA;
begin
  GetProcedureAddress(_GetProfileSectionA, kernel32, 'GetProfileSectionA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProfileSectionA]
  end;
end;

var
  _GetProfileSectionW: Pointer;

function GetProfileSectionW;
begin
  GetProcedureAddress(_GetProfileSectionW, kernel32, 'GetProfileSectionW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProfileSectionW]
  end;
end;

var
  _GetProfileSection: Pointer;

function GetProfileSection;
begin
  GetProcedureAddress(_GetProfileSection, kernel32, 'GetProfileSection' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetProfileSection]
  end;
end;

var
  _WriteProfileSectionA: Pointer;

function WriteProfileSectionA;
begin
  GetProcedureAddress(_WriteProfileSectionA, kernel32, 'WriteProfileSectionA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WriteProfileSectionA]
  end;
end;

var
  _WriteProfileSectionW: Pointer;

function WriteProfileSectionW;
begin
  GetProcedureAddress(_WriteProfileSectionW, kernel32, 'WriteProfileSectionW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WriteProfileSectionW]
  end;
end;

var
  _WriteProfileSection: Pointer;

function WriteProfileSection;
begin
  GetProcedureAddress(_WriteProfileSection, kernel32, 'WriteProfileSection' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WriteProfileSection]
  end;
end;

var
  _GetPrivateProfileIntA: Pointer;

function GetPrivateProfileIntA;
begin
  GetProcedureAddress(_GetPrivateProfileIntA, kernel32, 'GetPrivateProfileIntA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetPrivateProfileIntA]
  end;
end;

var
  _GetPrivateProfileIntW: Pointer;

function GetPrivateProfileIntW;
begin
  GetProcedureAddress(_GetPrivateProfileIntW, kernel32, 'GetPrivateProfileIntW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetPrivateProfileIntW]
  end;
end;

var
  _GetPrivateProfileInt: Pointer;

function GetPrivateProfileInt;
begin
  GetProcedureAddress(_GetPrivateProfileInt, kernel32, 'GetPrivateProfileInt' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetPrivateProfileInt]
  end;
end;

var
  _GetPrivateProfileStringA: Pointer;

function GetPrivateProfileStringA;
begin
  GetProcedureAddress(_GetPrivateProfileStringA, kernel32, 'GetPrivateProfileStringA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetPrivateProfileStringA]
  end;
end;

var
  _GetPrivateProfileStringW: Pointer;

function GetPrivateProfileStringW;
begin
  GetProcedureAddress(_GetPrivateProfileStringW, kernel32, 'GetPrivateProfileStringW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetPrivateProfileStringW]
  end;
end;

var
  _GetPrivateProfileString: Pointer;

function GetPrivateProfileString;
begin
  GetProcedureAddress(_GetPrivateProfileString, kernel32, 'GetPrivateProfileString' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetPrivateProfileString]
  end;
end;

var
  _WritePrivateProfileStringA: Pointer;

function WritePrivateProfileStringA;
begin
  GetProcedureAddress(_WritePrivateProfileStringA, kernel32, 'WritePrivateProfileStringA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WritePrivateProfileStringA]
  end;
end;

var
  _WritePrivateProfileStringW: Pointer;

function WritePrivateProfileStringW;
begin
  GetProcedureAddress(_WritePrivateProfileStringW, kernel32, 'WritePrivateProfileStringW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WritePrivateProfileStringW]
  end;
end;

var
  _WritePrivateProfileString: Pointer;

function WritePrivateProfileString;
begin
  GetProcedureAddress(_WritePrivateProfileString, kernel32, 'WritePrivateProfileString' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WritePrivateProfileString]
  end;
end;

var
  _GetPrivateProfileSectionA: Pointer;

function GetPrivateProfileSectionA;
begin
  GetProcedureAddress(_GetPrivateProfileSectionA, kernel32, 'GetPrivateProfileSectionA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetPrivateProfileSectionA]
  end;
end;

var
  _GetPrivateProfileSectionW: Pointer;

function GetPrivateProfileSectionW;
begin
  GetProcedureAddress(_GetPrivateProfileSectionW, kernel32, 'GetPrivateProfileSectionW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetPrivateProfileSectionW]
  end;
end;

var
  _GetPrivateProfileSection: Pointer;

function GetPrivateProfileSection;
begin
  GetProcedureAddress(_GetPrivateProfileSection, kernel32, 'GetPrivateProfileSection' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetPrivateProfileSection]
  end;
end;

var
  _WritePrivateProfileSectionA: Pointer;

function WritePrivateProfileSectionA;
begin
  GetProcedureAddress(_WritePrivateProfileSectionA, kernel32, 'WritePrivateProfileSectionA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WritePrivateProfileSectionA]
  end;
end;

var
  _WritePrivateProfileSectionW: Pointer;

function WritePrivateProfileSectionW;
begin
  GetProcedureAddress(_WritePrivateProfileSectionW, kernel32, 'WritePrivateProfileSectionW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WritePrivateProfileSectionW]
  end;
end;

var
  _WritePrivateProfileSection: Pointer;

function WritePrivateProfileSection;
begin
  GetProcedureAddress(_WritePrivateProfileSection, kernel32, 'WritePrivateProfileSection' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WritePrivateProfileSection]
  end;
end;

var
  _GetPrivateProfileSectionNamesA: Pointer;

function GetPrivateProfileSectionNamesA;
begin
  GetProcedureAddress(_GetPrivateProfileSectionNamesA, kernel32, 'GetPrivateProfileSectionNamesA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetPrivateProfileSectionNamesA]
  end;
end;

var
  _GetPrivateProfileSectionNamesW: Pointer;

function GetPrivateProfileSectionNamesW;
begin
  GetProcedureAddress(_GetPrivateProfileSectionNamesW, kernel32, 'GetPrivateProfileSectionNamesW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetPrivateProfileSectionNamesW]
  end;
end;

var
  _GetPrivateProfileSectionNames: Pointer;

function GetPrivateProfileSectionNames;
begin
  GetProcedureAddress(_GetPrivateProfileSectionNames, kernel32, 'GetPrivateProfileSectionNames' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetPrivateProfileSectionNames]
  end;
end;

var
  _GetPrivateProfileStructA: Pointer;

function GetPrivateProfileStructA;
begin
  GetProcedureAddress(_GetPrivateProfileStructA, kernel32, 'GetPrivateProfileStructA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetPrivateProfileStructA]
  end;
end;

var
  _GetPrivateProfileStructW: Pointer;

function GetPrivateProfileStructW;
begin
  GetProcedureAddress(_GetPrivateProfileStructW, kernel32, 'GetPrivateProfileStructW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetPrivateProfileStructW]
  end;
end;

var
  _GetPrivateProfileStruct: Pointer;

function GetPrivateProfileStruct;
begin
  GetProcedureAddress(_GetPrivateProfileStruct, kernel32, 'GetPrivateProfileStruct' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetPrivateProfileStruct]
  end;
end;

var
  _WritePrivateProfileStructA: Pointer;

function WritePrivateProfileStructA;
begin
  GetProcedureAddress(_WritePrivateProfileStructA, kernel32, 'WritePrivateProfileStructA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WritePrivateProfileStructA]
  end;
end;

var
  _WritePrivateProfileStructW: Pointer;

function WritePrivateProfileStructW;
begin
  GetProcedureAddress(_WritePrivateProfileStructW, kernel32, 'WritePrivateProfileStructW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WritePrivateProfileStructW]
  end;
end;

var
  _WritePrivateProfileStruct: Pointer;

function WritePrivateProfileStruct;
begin
  GetProcedureAddress(_WritePrivateProfileStruct, kernel32, 'WritePrivateProfileStruct' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WritePrivateProfileStruct]
  end;
end;

var
  _GetDriveTypeA: Pointer;

function GetDriveTypeA;
begin
  GetProcedureAddress(_GetDriveTypeA, kernel32, 'GetDriveTypeA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetDriveTypeA]
  end;
end;

var
  _GetDriveTypeW: Pointer;

function GetDriveTypeW;
begin
  GetProcedureAddress(_GetDriveTypeW, kernel32, 'GetDriveTypeW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetDriveTypeW]
  end;
end;

var
  _GetDriveType: Pointer;

function GetDriveType;
begin
  GetProcedureAddress(_GetDriveType, kernel32, 'GetDriveType' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetDriveType]
  end;
end;

var
  _GetSystemDirectoryA: Pointer;

function GetSystemDirectoryA;
begin
  GetProcedureAddress(_GetSystemDirectoryA, kernel32, 'GetSystemDirectoryA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSystemDirectoryA]
  end;
end;

var
  _GetSystemDirectoryW: Pointer;

function GetSystemDirectoryW;
begin
  GetProcedureAddress(_GetSystemDirectoryW, kernel32, 'GetSystemDirectoryW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSystemDirectoryW]
  end;
end;

var
  _GetSystemDirectory: Pointer;

function GetSystemDirectory;
begin
  GetProcedureAddress(_GetSystemDirectory, kernel32, 'GetSystemDirectory' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSystemDirectory]
  end;
end;

var
  _GetTempPathA: Pointer;

function GetTempPathA;
begin
  GetProcedureAddress(_GetTempPathA, kernel32, 'GetTempPathA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetTempPathA]
  end;
end;

var
  _GetTempPathW: Pointer;

function GetTempPathW;
begin
  GetProcedureAddress(_GetTempPathW, kernel32, 'GetTempPathW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetTempPathW]
  end;
end;

var
  _GetTempPath: Pointer;

function GetTempPath;
begin
  GetProcedureAddress(_GetTempPath, kernel32, 'GetTempPath' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetTempPath]
  end;
end;

var
  _GetTempFileNameA: Pointer;

function GetTempFileNameA;
begin
  GetProcedureAddress(_GetTempFileNameA, kernel32, 'GetTempFileNameA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetTempFileNameA]
  end;
end;

var
  _GetTempFileNameW: Pointer;

function GetTempFileNameW;
begin
  GetProcedureAddress(_GetTempFileNameW, kernel32, 'GetTempFileNameW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetTempFileNameW]
  end;
end;

var
  _GetTempFileName: Pointer;

function GetTempFileName;
begin
  GetProcedureAddress(_GetTempFileName, kernel32, 'GetTempFileName' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetTempFileName]
  end;
end;

var
  _GetWindowsDirectoryA: Pointer;

function GetWindowsDirectoryA;
begin
  GetProcedureAddress(_GetWindowsDirectoryA, kernel32, 'GetWindowsDirectoryA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetWindowsDirectoryA]
  end;
end;

var
  _GetWindowsDirectoryW: Pointer;

function GetWindowsDirectoryW;
begin
  GetProcedureAddress(_GetWindowsDirectoryW, kernel32, 'GetWindowsDirectoryW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetWindowsDirectoryW]
  end;
end;

var
  _GetWindowsDirectory: Pointer;

function GetWindowsDirectory;
begin
  GetProcedureAddress(_GetWindowsDirectory, kernel32, 'GetWindowsDirectory' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetWindowsDirectory]
  end;
end;

var
  _GetSystemWindowsDirectoryA: Pointer;

function GetSystemWindowsDirectoryA;
begin
  GetProcedureAddress(_GetSystemWindowsDirectoryA, kernel32, 'GetSystemWindowsDirectoryA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSystemWindowsDirectoryA]
  end;
end;

var
  _GetSystemWindowsDirectoryW: Pointer;

function GetSystemWindowsDirectoryW;
begin
  GetProcedureAddress(_GetSystemWindowsDirectoryW, kernel32, 'GetSystemWindowsDirectoryW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSystemWindowsDirectoryW]
  end;
end;

var
  _GetSystemWindowsDirectory: Pointer;

function GetSystemWindowsDirectory;
begin
  GetProcedureAddress(_GetSystemWindowsDirectory, kernel32, 'GetSystemWindowsDirectory' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSystemWindowsDirectory]
  end;
end;

var
  _GetSystemWow64DirectoryA: Pointer;

function GetSystemWow64DirectoryA;
begin
  GetProcedureAddress(_GetSystemWow64DirectoryA, kernel32, 'GetSystemWow64DirectoryA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSystemWow64DirectoryA]
  end;
end;

var
  _GetSystemWow64DirectoryW: Pointer;

function GetSystemWow64DirectoryW;
begin
  GetProcedureAddress(_GetSystemWow64DirectoryW, kernel32, 'GetSystemWow64DirectoryW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSystemWow64DirectoryW]
  end;
end;

var
  _GetSystemWow64Directory: Pointer;

function GetSystemWow64Directory;
begin
  GetProcedureAddress(_GetSystemWow64Directory, kernel32, 'GetSystemWow64Directory' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSystemWow64Directory]
  end;
end;

var
  _Wow64EnableWow64FsRedirection: Pointer;

function Wow64EnableWow64FsRedirection;
begin
  GetProcedureAddress(_Wow64EnableWow64FsRedirection, kernel32, 'Wow64EnableWow64FsRedirection');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_Wow64EnableWow64FsRedirection]
  end;
end;

var
  _Wow64DisableWow64FsRedirection: Pointer;

function Wow64DisableWow64FsRedirection;
begin
  GetProcedureAddress(_Wow64DisableWow64FsRedirection, kernel32, 'Wow64DisableWow64FsRedirection');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_Wow64DisableWow64FsRedirection]
  end;
end;

var
  _Wow64RevertWow64FsRedirection: Pointer;

function Wow64RevertWow64FsRedirection;
begin
  GetProcedureAddress(_Wow64RevertWow64FsRedirection, kernel32, 'Wow64RevertWow64FsRedirection');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_Wow64RevertWow64FsRedirection]
  end;
end;

var
  _SetCurrentDirectoryA: Pointer;

function SetCurrentDirectoryA;
begin
  GetProcedureAddress(_SetCurrentDirectoryA, kernel32, 'SetCurrentDirectoryA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetCurrentDirectoryA]
  end;
end;

var
  _SetCurrentDirectoryW: Pointer;

function SetCurrentDirectoryW;
begin
  GetProcedureAddress(_SetCurrentDirectoryW, kernel32, 'SetCurrentDirectoryW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetCurrentDirectoryW]
  end;
end;

var
  _SetCurrentDirectory: Pointer;

function SetCurrentDirectory;
begin
  GetProcedureAddress(_SetCurrentDirectory, kernel32, 'SetCurrentDirectory' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetCurrentDirectory]
  end;
end;

var
  _GetCurrentDirectoryA: Pointer;

function GetCurrentDirectoryA;
begin
  GetProcedureAddress(_GetCurrentDirectoryA, kernel32, 'GetCurrentDirectoryA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCurrentDirectoryA]
  end;
end;

var
  _GetCurrentDirectoryW: Pointer;

function GetCurrentDirectoryW;
begin
  GetProcedureAddress(_GetCurrentDirectoryW, kernel32, 'GetCurrentDirectoryW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCurrentDirectoryW]
  end;
end;

var
  _GetCurrentDirectory: Pointer;

function GetCurrentDirectory;
begin
  GetProcedureAddress(_GetCurrentDirectory, kernel32, 'GetCurrentDirectory' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCurrentDirectory]
  end;
end;

var
  _SetDllDirectoryA: Pointer;

function SetDllDirectoryA;
begin
  GetProcedureAddress(_SetDllDirectoryA, kernel32, 'SetDllDirectoryA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetDllDirectoryA]
  end;
end;

var
  _SetDllDirectoryW: Pointer;

function SetDllDirectoryW;
begin
  GetProcedureAddress(_SetDllDirectoryW, kernel32, 'SetDllDirectoryW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetDllDirectoryW]
  end;
end;

var
  _SetDllDirectory: Pointer;

function SetDllDirectory;
begin
  GetProcedureAddress(_SetDllDirectory, kernel32, 'SetDllDirectory' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetDllDirectory]
  end;
end;

var
  _GetDllDirectoryA: Pointer;

function GetDllDirectoryA;
begin
  GetProcedureAddress(_GetDllDirectoryA, kernel32, 'GetDllDirectoryA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetDllDirectoryA]
  end;
end;

var
  _GetDllDirectoryW: Pointer;

function GetDllDirectoryW;
begin
  GetProcedureAddress(_GetDllDirectoryW, kernel32, 'GetDllDirectoryW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetDllDirectoryW]
  end;
end;

var
  _GetDllDirectory: Pointer;

function GetDllDirectory;
begin
  GetProcedureAddress(_GetDllDirectory, kernel32, 'GetDllDirectory' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetDllDirectory]
  end;
end;

var
  _GetDiskFreeSpaceA: Pointer;

function GetDiskFreeSpaceA;
begin
  GetProcedureAddress(_GetDiskFreeSpaceA, kernel32, 'GetDiskFreeSpaceA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetDiskFreeSpaceA]
  end;
end;

var
  _GetDiskFreeSpaceW: Pointer;

function GetDiskFreeSpaceW;
begin
  GetProcedureAddress(_GetDiskFreeSpaceW, kernel32, 'GetDiskFreeSpaceW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetDiskFreeSpaceW]
  end;
end;

var
  _GetDiskFreeSpace: Pointer;

function GetDiskFreeSpace;
begin
  GetProcedureAddress(_GetDiskFreeSpace, kernel32, 'GetDiskFreeSpace' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetDiskFreeSpace]
  end;
end;

var
  _GetDiskFreeSpaceExA: Pointer;

function GetDiskFreeSpaceExA;
begin
  GetProcedureAddress(_GetDiskFreeSpaceExA, kernel32, 'GetDiskFreeSpaceExA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetDiskFreeSpaceExA]
  end;
end;

var
  _GetDiskFreeSpaceExW: Pointer;

function GetDiskFreeSpaceExW;
begin
  GetProcedureAddress(_GetDiskFreeSpaceExW, kernel32, 'GetDiskFreeSpaceExW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetDiskFreeSpaceExW]
  end;
end;

var
  _GetDiskFreeSpaceEx: Pointer;

function GetDiskFreeSpaceEx;
begin
  GetProcedureAddress(_GetDiskFreeSpaceEx, kernel32, 'GetDiskFreeSpaceEx' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetDiskFreeSpaceEx]
  end;
end;

var
  _CreateDirectoryA: Pointer;

function CreateDirectoryA;
begin
  GetProcedureAddress(_CreateDirectoryA, kernel32, 'CreateDirectoryA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateDirectoryA]
  end;
end;

var
  _CreateDirectoryW: Pointer;

function CreateDirectoryW;
begin
  GetProcedureAddress(_CreateDirectoryW, kernel32, 'CreateDirectoryW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateDirectoryW]
  end;
end;

var
  _CreateDirectory: Pointer;

function CreateDirectory;
begin
  GetProcedureAddress(_CreateDirectory, kernel32, 'CreateDirectory' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateDirectory]
  end;
end;

var
  _CreateDirectoryExA: Pointer;

function CreateDirectoryExA;
begin
  GetProcedureAddress(_CreateDirectoryExA, kernel32, 'CreateDirectoryExA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateDirectoryExA]
  end;
end;

var
  _CreateDirectoryExW: Pointer;

function CreateDirectoryExW;
begin
  GetProcedureAddress(_CreateDirectoryExW, kernel32, 'CreateDirectoryExW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateDirectoryExW]
  end;
end;

var
  _CreateDirectoryEx: Pointer;

function CreateDirectoryEx;
begin
  GetProcedureAddress(_CreateDirectoryEx, kernel32, 'CreateDirectoryEx' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateDirectoryEx]
  end;
end;

var
  _RemoveDirectoryA: Pointer;

function RemoveDirectoryA;
begin
  GetProcedureAddress(_RemoveDirectoryA, kernel32, 'RemoveDirectoryA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RemoveDirectoryA]
  end;
end;

var
  _RemoveDirectoryW: Pointer;

function RemoveDirectoryW;
begin
  GetProcedureAddress(_RemoveDirectoryW, kernel32, 'RemoveDirectoryW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RemoveDirectoryW]
  end;
end;

var
  _RemoveDirectory: Pointer;

function RemoveDirectory;
begin
  GetProcedureAddress(_RemoveDirectory, kernel32, 'RemoveDirectory' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RemoveDirectory]
  end;
end;

var
  _GetFullPathNameA: Pointer;

function GetFullPathNameA;
begin
  GetProcedureAddress(_GetFullPathNameA, kernel32, 'GetFullPathNameA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFullPathNameA]
  end;
end;

var
  _GetFullPathNameW: Pointer;

function GetFullPathNameW;
begin
  GetProcedureAddress(_GetFullPathNameW, kernel32, 'GetFullPathNameW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFullPathNameW]
  end;
end;

var
  _GetFullPathName: Pointer;

function GetFullPathName;
begin
  GetProcedureAddress(_GetFullPathName, kernel32, 'GetFullPathName' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFullPathName]
  end;
end;

var
  _DefineDosDeviceA: Pointer;

function DefineDosDeviceA;
begin
  GetProcedureAddress(_DefineDosDeviceA, kernel32, 'DefineDosDeviceA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DefineDosDeviceA]
  end;
end;

var
  _DefineDosDeviceW: Pointer;

function DefineDosDeviceW;
begin
  GetProcedureAddress(_DefineDosDeviceW, kernel32, 'DefineDosDeviceW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DefineDosDeviceW]
  end;
end;

var
  _DefineDosDevice: Pointer;

function DefineDosDevice;
begin
  GetProcedureAddress(_DefineDosDevice, kernel32, 'DefineDosDevice' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DefineDosDevice]
  end;
end;

var
  _QueryDosDeviceA: Pointer;

function QueryDosDeviceA;
begin
  GetProcedureAddress(_QueryDosDeviceA, kernel32, 'QueryDosDeviceA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_QueryDosDeviceA]
  end;
end;

var
  _QueryDosDeviceW: Pointer;

function QueryDosDeviceW;
begin
  GetProcedureAddress(_QueryDosDeviceW, kernel32, 'QueryDosDeviceW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_QueryDosDeviceW]
  end;
end;

var
  _QueryDosDevice: Pointer;

function QueryDosDevice;
begin
  GetProcedureAddress(_QueryDosDevice, kernel32, 'QueryDosDevice' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_QueryDosDevice]
  end;
end;

var
  _CreateFileA: Pointer;

function CreateFileA;
begin
  GetProcedureAddress(_CreateFileA, kernel32, 'CreateFileA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateFileA]
  end;
end;

var
  _CreateFileW: Pointer;

function CreateFileW;
begin
  GetProcedureAddress(_CreateFileW, kernel32, 'CreateFileW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateFileW]
  end;
end;

var
  _CreateFile: Pointer;

function CreateFile;
begin
  GetProcedureAddress(_CreateFile, kernel32, 'CreateFile' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateFile]
  end;
end;

var
  _ReOpenFile: Pointer;

function ReOpenFile;
begin
  GetProcedureAddress(_ReOpenFile, kernel32, 'ReOpenFile');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReOpenFile]
  end;
end;

var
  _SetFileAttributesA: Pointer;

function SetFileAttributesA;
begin
  GetProcedureAddress(_SetFileAttributesA, kernel32, 'SetFileAttributesA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetFileAttributesA]
  end;
end;

var
  _SetFileAttributesW: Pointer;

function SetFileAttributesW;
begin
  GetProcedureAddress(_SetFileAttributesW, kernel32, 'SetFileAttributesW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetFileAttributesW]
  end;
end;

var
  _SetFileAttributes: Pointer;

function SetFileAttributes;
begin
  GetProcedureAddress(_SetFileAttributes, kernel32, 'SetFileAttributes' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetFileAttributes]
  end;
end;

var
  _GetFileAttributesA: Pointer;

function GetFileAttributesA;
begin
  GetProcedureAddress(_GetFileAttributesA, kernel32, 'GetFileAttributesA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFileAttributesA]
  end;
end;

var
  _GetFileAttributesW: Pointer;

function GetFileAttributesW;
begin
  GetProcedureAddress(_GetFileAttributesW, kernel32, 'GetFileAttributesW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFileAttributesW]
  end;
end;

var
  _GetFileAttributes: Pointer;

function GetFileAttributes;
begin
  GetProcedureAddress(_GetFileAttributes, kernel32, 'GetFileAttributes' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFileAttributes]
  end;
end;

var
  _GetFileAttributesExA: Pointer;

function GetFileAttributesExA;
begin
  GetProcedureAddress(_GetFileAttributesExA, kernel32, 'GetFileAttributesExA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFileAttributesExA]
  end;
end;

var
  _GetFileAttributesExW: Pointer;

function GetFileAttributesExW;
begin
  GetProcedureAddress(_GetFileAttributesExW, kernel32, 'GetFileAttributesExW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFileAttributesExW]
  end;
end;

var
  _GetFileAttributesEx: Pointer;

function GetFileAttributesEx;
begin
  GetProcedureAddress(_GetFileAttributesEx, kernel32, 'GetFileAttributesEx' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFileAttributesEx]
  end;
end;

var
  _GetCompressedFileSizeA: Pointer;

function GetCompressedFileSizeA;
begin
  GetProcedureAddress(_GetCompressedFileSizeA, kernel32, 'GetCompressedFileSizeA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCompressedFileSizeA]
  end;
end;

var
  _GetCompressedFileSizeW: Pointer;

function GetCompressedFileSizeW;
begin
  GetProcedureAddress(_GetCompressedFileSizeW, kernel32, 'GetCompressedFileSizeW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCompressedFileSizeW]
  end;
end;

var
  _GetCompressedFileSize: Pointer;

function GetCompressedFileSize;
begin
  GetProcedureAddress(_GetCompressedFileSize, kernel32, 'GetCompressedFileSize' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCompressedFileSize]
  end;
end;

var
  _DeleteFileA: Pointer;

function DeleteFileA;
begin
  GetProcedureAddress(_DeleteFileA, kernel32, 'DeleteFileA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DeleteFileA]
  end;
end;

var
  _DeleteFileW: Pointer;

function DeleteFileW;
begin
  GetProcedureAddress(_DeleteFileW, kernel32, 'DeleteFileW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DeleteFileW]
  end;
end;

var
  _DeleteFile: Pointer;

function DeleteFile;
begin
  GetProcedureAddress(_DeleteFile, kernel32, 'DeleteFile' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DeleteFile]
  end;
end;

var
  _FindFirstFileExA: Pointer;

function FindFirstFileExA;
begin
  GetProcedureAddress(_FindFirstFileExA, kernel32, 'FindFirstFileExA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindFirstFileExA]
  end;
end;

var
  _FindFirstFileExW: Pointer;

function FindFirstFileExW;
begin
  GetProcedureAddress(_FindFirstFileExW, kernel32, 'FindFirstFileExW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindFirstFileExW]
  end;
end;

var
  _FindFirstFileEx: Pointer;

function FindFirstFileEx;
begin
  GetProcedureAddress(_FindFirstFileEx, kernel32, 'FindFirstFileEx' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindFirstFileEx]
  end;
end;

var
  _FindFirstFileA: Pointer;

function FindFirstFileA;
begin
  GetProcedureAddress(_FindFirstFileA, kernel32, 'FindFirstFileA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindFirstFileA]
  end;
end;

var
  _FindFirstFileW: Pointer;

function FindFirstFileW;
begin
  GetProcedureAddress(_FindFirstFileW, kernel32, 'FindFirstFileW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindFirstFileW]
  end;
end;

var
  _FindFirstFile: Pointer;

function FindFirstFile;
begin
  GetProcedureAddress(_FindFirstFile, kernel32, 'FindFirstFile' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindFirstFile]
  end;
end;

var
  _FindNextFileA: Pointer;

function FindNextFileA;
begin
  GetProcedureAddress(_FindNextFileA, kernel32, 'FindNextFileA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindNextFileA]
  end;
end;

var
  _FindNextFileW: Pointer;

function FindNextFileW;
begin
  GetProcedureAddress(_FindNextFileW, kernel32, 'FindNextFileW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindNextFileW]
  end;
end;

var
  _FindNextFile: Pointer;

function FindNextFile;
begin
  GetProcedureAddress(_FindNextFile, kernel32, 'FindNextFile' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindNextFile]
  end;
end;

var
  _SearchPathA: Pointer;

function SearchPathA;
begin
  GetProcedureAddress(_SearchPathA, kernel32, 'SearchPathA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SearchPathA]
  end;
end;

var
  _SearchPathW: Pointer;

function SearchPathW;
begin
  GetProcedureAddress(_SearchPathW, kernel32, 'SearchPathW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SearchPathW]
  end;
end;

var
  _SearchPath: Pointer;

function SearchPath;
begin
  GetProcedureAddress(_SearchPath, kernel32, 'SearchPath' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SearchPath]
  end;
end;

var
  _CopyFileA: Pointer;

function CopyFileA;
begin
  GetProcedureAddress(_CopyFileA, kernel32, 'CopyFileA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CopyFileA]
  end;
end;

var
  _CopyFileW: Pointer;

function CopyFileW;
begin
  GetProcedureAddress(_CopyFileW, kernel32, 'CopyFileW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CopyFileW]
  end;
end;

var
  _CopyFile: Pointer;

function CopyFile;
begin
  GetProcedureAddress(_CopyFile, kernel32, 'CopyFile' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CopyFile]
  end;
end;

var
  _CopyFileExA: Pointer;

function CopyFileExA;
begin
  GetProcedureAddress(_CopyFileExA, kernel32, 'CopyFileExA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CopyFileExA]
  end;
end;

var
  _CopyFileExW: Pointer;

function CopyFileExW;
begin
  GetProcedureAddress(_CopyFileExW, kernel32, 'CopyFileExW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CopyFileExW]
  end;
end;

var
  _CopyFileEx: Pointer;

function CopyFileEx;
begin
  GetProcedureAddress(_CopyFileEx, kernel32, 'CopyFileEx' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CopyFileEx]
  end;
end;

var
  _MoveFileA: Pointer;

function MoveFileA;
begin
  GetProcedureAddress(_MoveFileA, kernel32, 'MoveFileA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_MoveFileA]
  end;
end;

var
  _MoveFileW: Pointer;

function MoveFileW;
begin
  GetProcedureAddress(_MoveFileW, kernel32, 'MoveFileW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_MoveFileW]
  end;
end;

var
  _MoveFile: Pointer;

function MoveFile;
begin
  GetProcedureAddress(_MoveFile, kernel32, 'MoveFile' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_MoveFile]
  end;
end;

var
  _MoveFileExA: Pointer;

function MoveFileExA;
begin
  GetProcedureAddress(_MoveFileExA, kernel32, 'MoveFileExA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_MoveFileExA]
  end;
end;

var
  _MoveFileExW: Pointer;

function MoveFileExW;
begin
  GetProcedureAddress(_MoveFileExW, kernel32, 'MoveFileExW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_MoveFileExW]
  end;
end;

var
  _MoveFileEx: Pointer;

function MoveFileEx;
begin
  GetProcedureAddress(_MoveFileEx, kernel32, 'MoveFileEx' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_MoveFileEx]
  end;
end;

var
  _MoveFileWithProgressA: Pointer;

function MoveFileWithProgressA;
begin
  GetProcedureAddress(_MoveFileWithProgressA, kernel32, 'MoveFileWithProgressA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_MoveFileWithProgressA]
  end;
end;

var
  _MoveFileWithProgressW: Pointer;

function MoveFileWithProgressW;
begin
  GetProcedureAddress(_MoveFileWithProgressW, kernel32, 'MoveFileWithProgressW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_MoveFileWithProgressW]
  end;
end;

var
  _MoveFileWithProgress: Pointer;

function MoveFileWithProgress;
begin
  GetProcedureAddress(_MoveFileWithProgress, kernel32, 'MoveFileWithProgress' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_MoveFileWithProgress]
  end;
end;

var
  _ReplaceFileA: Pointer;

function ReplaceFileA;
begin
  GetProcedureAddress(_ReplaceFileA, kernel32, 'ReplaceFileA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReplaceFileA]
  end;
end;

var
  _ReplaceFileW: Pointer;

function ReplaceFileW;
begin
  GetProcedureAddress(_ReplaceFileW, kernel32, 'ReplaceFileW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReplaceFileW]
  end;
end;

var
  _ReplaceFile: Pointer;

function ReplaceFile;
begin
  GetProcedureAddress(_ReplaceFile, kernel32, 'ReplaceFile' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReplaceFile]
  end;
end;

var
  _CreateHardLinkA: Pointer;

function CreateHardLinkA;
begin
  GetProcedureAddress(_CreateHardLinkA, kernel32, 'CreateHardLinkA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateHardLinkA]
  end;
end;

var
  _CreateHardLinkW: Pointer;

function CreateHardLinkW;
begin
  GetProcedureAddress(_CreateHardLinkW, kernel32, 'CreateHardLinkW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateHardLinkW]
  end;
end;

var
  _CreateHardLink: Pointer;

function CreateHardLink;
begin
  GetProcedureAddress(_CreateHardLink, kernel32, 'CreateHardLink' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateHardLink]
  end;
end;

var
  _FindFirstStreamW: Pointer;

function FindFirstStreamW;
begin
  GetProcedureAddress(_FindFirstStreamW, kernel32, 'FindFirstStreamW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindFirstStreamW]
  end;
end;

var
  _FindNextStreamW: Pointer;

function FindNextStreamW;
begin
  GetProcedureAddress(_FindNextStreamW, kernel32, 'FindNextStreamW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindNextStreamW]
  end;
end;

var
  _CreateNamedPipeA: Pointer;

function CreateNamedPipeA;
begin
  GetProcedureAddress(_CreateNamedPipeA, kernel32, 'CreateNamedPipeA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateNamedPipeA]
  end;
end;

var
  _CreateNamedPipeW: Pointer;

function CreateNamedPipeW;
begin
  GetProcedureAddress(_CreateNamedPipeW, kernel32, 'CreateNamedPipeW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateNamedPipeW]
  end;
end;

var
  _CreateNamedPipe: Pointer;

function CreateNamedPipe;
begin
  GetProcedureAddress(_CreateNamedPipe, kernel32, 'CreateNamedPipe' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateNamedPipe]
  end;
end;

var
  _GetNamedPipeHandleStateA: Pointer;

function GetNamedPipeHandleStateA;
begin
  GetProcedureAddress(_GetNamedPipeHandleStateA, kernel32, 'GetNamedPipeHandleStateA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetNamedPipeHandleStateA]
  end;
end;

var
  _GetNamedPipeHandleStateW: Pointer;

function GetNamedPipeHandleStateW;
begin
  GetProcedureAddress(_GetNamedPipeHandleStateW, kernel32, 'GetNamedPipeHandleStateW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetNamedPipeHandleStateW]
  end;
end;

var
  _GetNamedPipeHandleState: Pointer;

function GetNamedPipeHandleState;
begin
  GetProcedureAddress(_GetNamedPipeHandleState, kernel32, 'GetNamedPipeHandleState' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetNamedPipeHandleState]
  end;
end;

var
  _CallNamedPipeA: Pointer;

function CallNamedPipeA;
begin
  GetProcedureAddress(_CallNamedPipeA, kernel32, 'CallNamedPipeA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CallNamedPipeA]
  end;
end;

var
  _CallNamedPipeW: Pointer;

function CallNamedPipeW;
begin
  GetProcedureAddress(_CallNamedPipeW, kernel32, 'CallNamedPipeW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CallNamedPipeW]
  end;
end;

var
  _CallNamedPipe: Pointer;

function CallNamedPipe;
begin
  GetProcedureAddress(_CallNamedPipe, kernel32, 'CallNamedPipe' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CallNamedPipe]
  end;
end;

var
  _WaitNamedPipeA: Pointer;

function WaitNamedPipeA;
begin
  GetProcedureAddress(_WaitNamedPipeA, kernel32, 'WaitNamedPipeA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WaitNamedPipeA]
  end;
end;

var
  _WaitNamedPipeW: Pointer;

function WaitNamedPipeW;
begin
  GetProcedureAddress(_WaitNamedPipeW, kernel32, 'WaitNamedPipeW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WaitNamedPipeW]
  end;
end;

var
  _WaitNamedPipe: Pointer;

function WaitNamedPipe;
begin
  GetProcedureAddress(_WaitNamedPipe, kernel32, 'WaitNamedPipe' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WaitNamedPipe]
  end;
end;

var
  _SetVolumeLabelA: Pointer;

function SetVolumeLabelA;
begin
  GetProcedureAddress(_SetVolumeLabelA, kernel32, 'SetVolumeLabelA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetVolumeLabelA]
  end;
end;

var
  _SetVolumeLabelW: Pointer;

function SetVolumeLabelW;
begin
  GetProcedureAddress(_SetVolumeLabelW, kernel32, 'SetVolumeLabelW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetVolumeLabelW]
  end;
end;

var
  _SetVolumeLabel: Pointer;

function SetVolumeLabel;
begin
  GetProcedureAddress(_SetVolumeLabel, kernel32, 'SetVolumeLabel' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetVolumeLabel]
  end;
end;

var
  _SetFileApisToOEM: Pointer;

procedure SetFileApisToOEM;
begin
  GetProcedureAddress(_SetFileApisToOEM, kernel32, 'SetFileApisToOEM');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetFileApisToOEM]
  end;
end;

var
  _SetFileApisToANSI: Pointer;

procedure SetFileApisToANSI;
begin
  GetProcedureAddress(_SetFileApisToANSI, kernel32, 'SetFileApisToANSI');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetFileApisToANSI]
  end;
end;

var
  _AreFileApisANSI: Pointer;

function AreFileApisANSI;
begin
  GetProcedureAddress(_AreFileApisANSI, kernel32, 'AreFileApisANSI');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AreFileApisANSI]
  end;
end;

var
  _GetVolumeInformationA: Pointer;

function GetVolumeInformationA;
begin
  GetProcedureAddress(_GetVolumeInformationA, kernel32, 'GetVolumeInformationA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetVolumeInformationA]
  end;
end;

var
  _GetVolumeInformationW: Pointer;

function GetVolumeInformationW;
begin
  GetProcedureAddress(_GetVolumeInformationW, kernel32, 'GetVolumeInformationW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetVolumeInformationW]
  end;
end;

var
  _GetVolumeInformation: Pointer;

function GetVolumeInformation;
begin
  GetProcedureAddress(_GetVolumeInformation, kernel32, 'GetVolumeInformation' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetVolumeInformation]
  end;
end;

var
  _CancelIo: Pointer;

function CancelIo;
begin
  GetProcedureAddress(_CancelIo, kernel32, 'CancelIo');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CancelIo]
  end;
end;

var
  _ClearEventLogA: Pointer;

function ClearEventLogA;
begin
  GetProcedureAddress(_ClearEventLogA, advapi32, 'ClearEventLogA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ClearEventLogA]
  end;
end;

var
  _ClearEventLogW: Pointer;

function ClearEventLogW;
begin
  GetProcedureAddress(_ClearEventLogW, advapi32, 'ClearEventLogW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ClearEventLogW]
  end;
end;

var
  _ClearEventLog: Pointer;

function ClearEventLog;
begin
  GetProcedureAddress(_ClearEventLog, advapi32, 'ClearEventLog' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ClearEventLog]
  end;
end;

var
  _BackupEventLogA: Pointer;

function BackupEventLogA;
begin
  GetProcedureAddress(_BackupEventLogA, advapi32, 'BackupEventLogA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_BackupEventLogA]
  end;
end;

var
  _BackupEventLogW: Pointer;

function BackupEventLogW;
begin
  GetProcedureAddress(_BackupEventLogW, advapi32, 'BackupEventLogW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_BackupEventLogW]
  end;
end;

var
  _BackupEventLog: Pointer;

function BackupEventLog;
begin
  GetProcedureAddress(_BackupEventLog, advapi32, 'BackupEventLog' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_BackupEventLog]
  end;
end;

var
  _CloseEventLog: Pointer;

function CloseEventLog;
begin
  GetProcedureAddress(_CloseEventLog, advapi32, 'CloseEventLog');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CloseEventLog]
  end;
end;

var
  _DeregisterEventSource: Pointer;

function DeregisterEventSource;
begin
  GetProcedureAddress(_DeregisterEventSource, advapi32, 'DeregisterEventSource');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DeregisterEventSource]
  end;
end;

var
  _NotifyChangeEventLog: Pointer;

function NotifyChangeEventLog;
begin
  GetProcedureAddress(_NotifyChangeEventLog, advapi32, 'NotifyChangeEventLog');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_NotifyChangeEventLog]
  end;
end;

var
  _GetNumberOfEventLogRecords: Pointer;

function GetNumberOfEventLogRecords;
begin
  GetProcedureAddress(_GetNumberOfEventLogRecords, advapi32, 'GetNumberOfEventLogRecords');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetNumberOfEventLogRecords]
  end;
end;

var
  _GetOldestEventLogRecord: Pointer;

function GetOldestEventLogRecord;
begin
  GetProcedureAddress(_GetOldestEventLogRecord, advapi32, 'GetOldestEventLogRecord');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetOldestEventLogRecord]
  end;
end;

var
  _OpenEventLogA: Pointer;

function OpenEventLogA;
begin
  GetProcedureAddress(_OpenEventLogA, advapi32, 'OpenEventLogA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenEventLogA]
  end;
end;

var
  _OpenEventLogW: Pointer;

function OpenEventLogW;
begin
  GetProcedureAddress(_OpenEventLogW, advapi32, 'OpenEventLogW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenEventLogW]
  end;
end;

var
  _OpenEventLog: Pointer;

function OpenEventLog;
begin
  GetProcedureAddress(_OpenEventLog, advapi32, 'OpenEventLog' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenEventLog]
  end;
end;

var
  _RegisterEventSourceA: Pointer;

function RegisterEventSourceA;
begin
  GetProcedureAddress(_RegisterEventSourceA, advapi32, 'RegisterEventSourceA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RegisterEventSourceA]
  end;
end;

var
  _RegisterEventSourceW: Pointer;

function RegisterEventSourceW;
begin
  GetProcedureAddress(_RegisterEventSourceW, advapi32, 'RegisterEventSourceW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RegisterEventSourceW]
  end;
end;

var
  _RegisterEventSource: Pointer;

function RegisterEventSource;
begin
  GetProcedureAddress(_RegisterEventSource, advapi32, 'RegisterEventSource' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RegisterEventSource]
  end;
end;

var
  _OpenBackupEventLogA: Pointer;

function OpenBackupEventLogA;
begin
  GetProcedureAddress(_OpenBackupEventLogA, advapi32, 'OpenBackupEventLogA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenBackupEventLogA]
  end;
end;

var
  _OpenBackupEventLogW: Pointer;

function OpenBackupEventLogW;
begin
  GetProcedureAddress(_OpenBackupEventLogW, advapi32, 'OpenBackupEventLogW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenBackupEventLogW]
  end;
end;

var
  _OpenBackupEventLog: Pointer;

function OpenBackupEventLog;
begin
  GetProcedureAddress(_OpenBackupEventLog, advapi32, 'OpenBackupEventLog' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenBackupEventLog]
  end;
end;

var
  _ReadEventLogA: Pointer;

function ReadEventLogA;
begin
  GetProcedureAddress(_ReadEventLogA, advapi32, 'ReadEventLogA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReadEventLogA]
  end;
end;

var
  _ReadEventLogW: Pointer;

function ReadEventLogW;
begin
  GetProcedureAddress(_ReadEventLogW, advapi32, 'ReadEventLogW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReadEventLogW]
  end;
end;

var
  _ReadEventLog: Pointer;

function ReadEventLog;
begin
  GetProcedureAddress(_ReadEventLog, advapi32, 'ReadEventLog' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReadEventLog]
  end;
end;

var
  _ReportEventA: Pointer;

function ReportEventA;
begin
  GetProcedureAddress(_ReportEventA, advapi32, 'ReportEventA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReportEventA]
  end;
end;

var
  _ReportEventW: Pointer;

function ReportEventW;
begin
  GetProcedureAddress(_ReportEventW, advapi32, 'ReportEventW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReportEventW]
  end;
end;

var
  _ReportEvent: Pointer;

function ReportEvent;
begin
  GetProcedureAddress(_ReportEvent, advapi32, 'ReportEvent' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReportEvent]
  end;
end;

var
  _GetEventLogInformation: Pointer;

function GetEventLogInformation;
begin
  GetProcedureAddress(_GetEventLogInformation, advapi32, 'GetEventLogInformation');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetEventLogInformation]
  end;
end;

var
  _DuplicateToken: Pointer;

function DuplicateToken;
begin
  GetProcedureAddress(_DuplicateToken, advapi32, 'DuplicateToken');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DuplicateToken]
  end;
end;

var
  _GetKernelObjectSecurity: Pointer;

function GetKernelObjectSecurity;
begin
  GetProcedureAddress(_GetKernelObjectSecurity, advapi32, 'GetKernelObjectSecurity');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetKernelObjectSecurity]
  end;
end;

var
  _ImpersonateNamedPipeClient: Pointer;

function ImpersonateNamedPipeClient;
begin
  GetProcedureAddress(_ImpersonateNamedPipeClient, advapi32, 'ImpersonateNamedPipeClient');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ImpersonateNamedPipeClient]
  end;
end;

var
  _ImpersonateSelf: Pointer;

function ImpersonateSelf;
begin
  GetProcedureAddress(_ImpersonateSelf, advapi32, 'ImpersonateSelf');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ImpersonateSelf]
  end;
end;

var
  _RevertToSelf: Pointer;

function RevertToSelf;
begin
  GetProcedureAddress(_RevertToSelf, advapi32, 'RevertToSelf');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RevertToSelf]
  end;
end;

var
  _SetThreadToken: Pointer;

function SetThreadToken;
begin
  GetProcedureAddress(_SetThreadToken, advapi32, 'SetThreadToken');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetThreadToken]
  end;
end;

var
  _AccessCheck: Pointer;

function AccessCheck;
begin
  GetProcedureAddress(_AccessCheck, advapi32, 'AccessCheck');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AccessCheck]
  end;
end;

var
  _AccessCheckByType: Pointer;

function AccessCheckByType;
begin
  GetProcedureAddress(_AccessCheckByType, advapi32, 'AccessCheckByType');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AccessCheckByType]
  end;
end;

var
  _AccessCheckByTypeResultList: Pointer;

function AccessCheckByTypeResultList;
begin
  GetProcedureAddress(_AccessCheckByTypeResultList, advapi32, 'AccessCheckByTypeResultList');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AccessCheckByTypeResultList]
  end;
end;

var
  _OpenProcessToken: Pointer;

function OpenProcessToken;
begin
  GetProcedureAddress(_OpenProcessToken, advapi32, 'OpenProcessToken');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenProcessToken]
  end;
end;

var
  _OpenThreadToken: Pointer;

function OpenThreadToken;
begin
  GetProcedureAddress(_OpenThreadToken, advapi32, 'OpenThreadToken');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenThreadToken]
  end;
end;

var
  _GetTokenInformation: Pointer;

function GetTokenInformation;
begin
  GetProcedureAddress(_GetTokenInformation, advapi32, 'GetTokenInformation');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetTokenInformation]
  end;
end;

var
  _SetTokenInformation: Pointer;

function SetTokenInformation;
begin
  GetProcedureAddress(_SetTokenInformation, advapi32, 'SetTokenInformation');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetTokenInformation]
  end;
end;

var
  _AdjustTokenPrivileges: Pointer;

function AdjustTokenPrivileges;
begin
  GetProcedureAddress(_AdjustTokenPrivileges, advapi32, 'AdjustTokenPrivileges');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AdjustTokenPrivileges]
  end;
end;

var
  _AdjustTokenGroups: Pointer;

function AdjustTokenGroups;
begin
  GetProcedureAddress(_AdjustTokenGroups, advapi32, 'AdjustTokenGroups');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AdjustTokenGroups]
  end;
end;

var
  _PrivilegeCheck: Pointer;

function PrivilegeCheck;
begin
  GetProcedureAddress(_PrivilegeCheck, advapi32, 'PrivilegeCheck');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_PrivilegeCheck]
  end;
end;

var
  _AccessCheckAndAuditAlarmA: Pointer;

function AccessCheckAndAuditAlarmA;
begin
  GetProcedureAddress(_AccessCheckAndAuditAlarmA, advapi32, 'AccessCheckAndAuditAlarmA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AccessCheckAndAuditAlarmA]
  end;
end;

var
  _AccessCheckAndAuditAlarmW: Pointer;

function AccessCheckAndAuditAlarmW;
begin
  GetProcedureAddress(_AccessCheckAndAuditAlarmW, advapi32, 'AccessCheckAndAuditAlarmW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AccessCheckAndAuditAlarmW]
  end;
end;

var
  _AccessCheckAndAuditAlarm: Pointer;

function AccessCheckAndAuditAlarm;
begin
  GetProcedureAddress(_AccessCheckAndAuditAlarm, advapi32, 'AccessCheckAndAuditAlarm' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AccessCheckAndAuditAlarm]
  end;
end;

var
  _AccessCheckByTypeAndAuditAlarmA: Pointer;

function AccessCheckByTypeAndAuditAlarmA;
begin
  GetProcedureAddress(_AccessCheckByTypeAndAuditAlarmA, advapi32, 'AccessCheckByTypeAndAuditAlarmA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AccessCheckByTypeAndAuditAlarmA]
  end;
end;

var
  _AccessCheckByTypeAndAuditAlarmW: Pointer;

function AccessCheckByTypeAndAuditAlarmW;
begin
  GetProcedureAddress(_AccessCheckByTypeAndAuditAlarmW, advapi32, 'AccessCheckByTypeAndAuditAlarmW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AccessCheckByTypeAndAuditAlarmW]
  end;
end;

var
  _AccessCheckByTypeAndAuditAlarm: Pointer;

function AccessCheckByTypeAndAuditAlarm;
begin
  GetProcedureAddress(_AccessCheckByTypeAndAuditAlarm, advapi32, 'AccessCheckByTypeAndAuditAlarm' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AccessCheckByTypeAndAuditAlarm]
  end;
end;

var
  _AccessCheckByTypeResultListAndA: Pointer;

function AccessCheckByTypeResultListAndAuditAlarmA;
begin
  GetProcedureAddress(_AccessCheckByTypeResultListAndA, advapi32, 'AccessCheckByTypeResultListAndAuditAlarmA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AccessCheckByTypeResultListAndA]
  end;
end;

var
  _AccessCheckByTypeResultListAndW: Pointer;

function AccessCheckByTypeResultListAndAuditAlarmW;
begin
  GetProcedureAddress(_AccessCheckByTypeResultListAndW, advapi32, 'AccessCheckByTypeResultListAndAuditAlarmW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AccessCheckByTypeResultListAndW]
  end;
end;

var
  _AccessCheckByTypeResultListAnd: Pointer;

function AccessCheckByTypeResultListAndAuditAlarm;
begin
  GetProcedureAddress(_AccessCheckByTypeResultListAnd, advapi32, 'AccessCheckByTypeResultListAndAuditAlarm' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AccessCheckByTypeResultListAnd]
  end;
end;

var
  _AccessCheckByTRLAndAAByHA: Pointer;

function AccessCheckByTypeResultListAndAuditAlarmByHandleA;
begin
  GetProcedureAddress(_AccessCheckByTRLAndAAByHA, advapi32, 'AccessCheckByTypeResultListAndAuditAlarmByHandleA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AccessCheckByTRLAndAAByHA]
  end;
end;

var
  _AccessCheckByTRLAndAAByHW: Pointer;

function AccessCheckByTypeResultListAndAuditAlarmByHandleW;
begin
  GetProcedureAddress(_AccessCheckByTRLAndAAByHW, advapi32, 'AccessCheckByTypeResultListAndAuditAlarmByHandleW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AccessCheckByTRLAndAAByHW]
  end;
end;

var
  _AccessCheckByTRLAndAAByH: Pointer;

function AccessCheckByTypeResultListAndAuditAlarmByHandle;
begin
  GetProcedureAddress(_AccessCheckByTRLAndAAByH, advapi32, 'AccessCheckByTypeResultListAndAuditAlarmByHandle' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AccessCheckByTRLAndAAByH]
  end;
end;

var
  _ObjectOpenAuditAlarmA: Pointer;

function ObjectOpenAuditAlarmA;
begin
  GetProcedureAddress(_ObjectOpenAuditAlarmA, advapi32, 'ObjectOpenAuditAlarmA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ObjectOpenAuditAlarmA]
  end;
end;

var
  _ObjectOpenAuditAlarmW: Pointer;

function ObjectOpenAuditAlarmW;
begin
  GetProcedureAddress(_ObjectOpenAuditAlarmW, advapi32, 'ObjectOpenAuditAlarmW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ObjectOpenAuditAlarmW]
  end;
end;

var
  _ObjectOpenAuditAlarm: Pointer;

function ObjectOpenAuditAlarm;
begin
  GetProcedureAddress(_ObjectOpenAuditAlarm, advapi32, 'ObjectOpenAuditAlarm' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ObjectOpenAuditAlarm]
  end;
end;

var
  _ObjectPrivilegeAuditAlarmA: Pointer;

function ObjectPrivilegeAuditAlarmA;
begin
  GetProcedureAddress(_ObjectPrivilegeAuditAlarmA, advapi32, 'ObjectPrivilegeAuditAlarmA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ObjectPrivilegeAuditAlarmA]
  end;
end;

var
  _ObjectPrivilegeAuditAlarmW: Pointer;

function ObjectPrivilegeAuditAlarmW;
begin
  GetProcedureAddress(_ObjectPrivilegeAuditAlarmW, advapi32, 'ObjectPrivilegeAuditAlarmW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ObjectPrivilegeAuditAlarmW]
  end;
end;

var
  _ObjectPrivilegeAuditAlarm: Pointer;

function ObjectPrivilegeAuditAlarm;
begin
  GetProcedureAddress(_ObjectPrivilegeAuditAlarm, advapi32, 'ObjectPrivilegeAuditAlarm' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ObjectPrivilegeAuditAlarm]
  end;
end;

var
  _ObjectCloseAuditAlarmA: Pointer;

function ObjectCloseAuditAlarmA;
begin
  GetProcedureAddress(_ObjectCloseAuditAlarmA, advapi32, 'ObjectCloseAuditAlarmA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ObjectCloseAuditAlarmA]
  end;
end;

var
  _ObjectCloseAuditAlarmW: Pointer;

function ObjectCloseAuditAlarmW;
begin
  GetProcedureAddress(_ObjectCloseAuditAlarmW, advapi32, 'ObjectCloseAuditAlarmW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ObjectCloseAuditAlarmW]
  end;
end;

var
  _ObjectCloseAuditAlarm: Pointer;

function ObjectCloseAuditAlarm;
begin
  GetProcedureAddress(_ObjectCloseAuditAlarm, advapi32, 'ObjectCloseAuditAlarm' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ObjectCloseAuditAlarm]
  end;
end;

var
  _ObjectDeleteAuditAlarmA: Pointer;

function ObjectDeleteAuditAlarmA;
begin
  GetProcedureAddress(_ObjectDeleteAuditAlarmA, advapi32, 'ObjectDeleteAuditAlarmA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ObjectDeleteAuditAlarmA]
  end;
end;

var
  _ObjectDeleteAuditAlarmW: Pointer;

function ObjectDeleteAuditAlarmW;
begin
  GetProcedureAddress(_ObjectDeleteAuditAlarmW, advapi32, 'ObjectDeleteAuditAlarmW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ObjectDeleteAuditAlarmW]
  end;
end;

var
  _ObjectDeleteAuditAlarm: Pointer;

function ObjectDeleteAuditAlarm;
begin
  GetProcedureAddress(_ObjectDeleteAuditAlarm, advapi32, 'ObjectDeleteAuditAlarm' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ObjectDeleteAuditAlarm]
  end;
end;

var
  _PrivilegedServiceAuditAlarmA: Pointer;

function PrivilegedServiceAuditAlarmA;
begin
  GetProcedureAddress(_PrivilegedServiceAuditAlarmA, advapi32, 'PrivilegedServiceAuditAlarmA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_PrivilegedServiceAuditAlarmA]
  end;
end;

var
  _PrivilegedServiceAuditAlarmW: Pointer;

function PrivilegedServiceAuditAlarmW;
begin
  GetProcedureAddress(_PrivilegedServiceAuditAlarmW, advapi32, 'PrivilegedServiceAuditAlarmW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_PrivilegedServiceAuditAlarmW]
  end;
end;

var
  _PrivilegedServiceAuditAlarm: Pointer;

function PrivilegedServiceAuditAlarm;
begin
  GetProcedureAddress(_PrivilegedServiceAuditAlarm, advapi32, 'PrivilegedServiceAuditAlarm' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_PrivilegedServiceAuditAlarm]
  end;
end;

var
  _IsWellKnownSid: Pointer;

function IsWellKnownSid;
begin
  GetProcedureAddress(_IsWellKnownSid, advapi32, 'IsWellKnownSid');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsWellKnownSid]
  end;
end;

var
  _CreateWellKnownSid: Pointer;

function CreateWellKnownSid;
begin
  GetProcedureAddress(_CreateWellKnownSid, advapi32, 'CreateWellKnownSid');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateWellKnownSid]
  end;
end;

var
  _EqualDomainSid: Pointer;

function EqualDomainSid;
begin
  GetProcedureAddress(_EqualDomainSid, advapi32, 'EqualDomainSid');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EqualDomainSid]
  end;
end;

var
  _GetWindowsAccountDomainSid: Pointer;

function GetWindowsAccountDomainSid;
begin
  GetProcedureAddress(_GetWindowsAccountDomainSid, advapi32, 'GetWindowsAccountDomainSid');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetWindowsAccountDomainSid]
  end;
end;

var
  _IsValidSid: Pointer;

function IsValidSid;
begin
  GetProcedureAddress(_IsValidSid, advapi32, 'IsValidSid');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsValidSid]
  end;
end;

var
  _EqualSid: Pointer;

function EqualSid;
begin
  GetProcedureAddress(_EqualSid, advapi32, 'EqualSid');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EqualSid]
  end;
end;

var
  _EqualPrefixSid: Pointer;

function EqualPrefixSid;
begin
  GetProcedureAddress(_EqualPrefixSid, advapi32, 'EqualPrefixSid');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_EqualPrefixSid]
  end;
end;

var
  _GetSidLengthRequired: Pointer;

function GetSidLengthRequired;
begin
  GetProcedureAddress(_GetSidLengthRequired, advapi32, 'GetSidLengthRequired');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSidLengthRequired]
  end;
end;

var
  _AllocateAndInitializeSid: Pointer;

function AllocateAndInitializeSid;
begin
  GetProcedureAddress(_AllocateAndInitializeSid, advapi32, 'AllocateAndInitializeSid');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AllocateAndInitializeSid]
  end;
end;

var
  _FreeSid: Pointer;

function FreeSid;
begin
  GetProcedureAddress(_FreeSid, advapi32, 'FreeSid');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FreeSid]
  end;
end;

var
  _InitializeSid: Pointer;

function InitializeSid;
begin
  GetProcedureAddress(_InitializeSid, advapi32, 'InitializeSid');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_InitializeSid]
  end;
end;

var
  _GetSidIdentifierAuthority: Pointer;

function GetSidIdentifierAuthority;
begin
  GetProcedureAddress(_GetSidIdentifierAuthority, advapi32, 'GetSidIdentifierAuthority');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSidIdentifierAuthority]
  end;
end;

var
  _GetSidSubAuthority: Pointer;

function GetSidSubAuthority;
begin
  GetProcedureAddress(_GetSidSubAuthority, advapi32, 'GetSidSubAuthority');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSidSubAuthority]
  end;
end;

var
  _GetSidSubAuthorityCount: Pointer;

function GetSidSubAuthorityCount;
begin
  GetProcedureAddress(_GetSidSubAuthorityCount, advapi32, 'GetSidSubAuthorityCount');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSidSubAuthorityCount]
  end;
end;

var
  _GetLengthSid: Pointer;

function GetLengthSid;
begin
  GetProcedureAddress(_GetLengthSid, advapi32, 'GetLengthSid');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetLengthSid]
  end;
end;

var
  _CopySid: Pointer;

function CopySid;
begin
  GetProcedureAddress(_CopySid, advapi32, 'CopySid');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CopySid]
  end;
end;

var
  _AreAllAccessesGranted: Pointer;

function AreAllAccessesGranted;
begin
  GetProcedureAddress(_AreAllAccessesGranted, advapi32, 'AreAllAccessesGranted');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AreAllAccessesGranted]
  end;
end;

var
  _AreAnyAccessesGranted: Pointer;

function AreAnyAccessesGranted;
begin
  GetProcedureAddress(_AreAnyAccessesGranted, advapi32, 'AreAnyAccessesGranted');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AreAnyAccessesGranted]
  end;
end;

var
  _MapGenericMask: Pointer;

procedure MapGenericMask;
begin
  GetProcedureAddress(_MapGenericMask, advapi32, 'MapGenericMask');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_MapGenericMask]
  end;
end;

var
  _IsValidAcl: Pointer;

function IsValidAcl;
begin
  GetProcedureAddress(_IsValidAcl, advapi32, 'IsValidAcl');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsValidAcl]
  end;
end;

var
  _InitializeAcl: Pointer;

function InitializeAcl;
begin
  GetProcedureAddress(_InitializeAcl, advapi32, 'InitializeAcl');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_InitializeAcl]
  end;
end;

var
  _GetAclInformation: Pointer;

function GetAclInformation;
begin
  GetProcedureAddress(_GetAclInformation, advapi32, 'GetAclInformation');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetAclInformation]
  end;
end;

var
  _SetAclInformation: Pointer;

function SetAclInformation;
begin
  GetProcedureAddress(_SetAclInformation, advapi32, 'SetAclInformation');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetAclInformation]
  end;
end;

var
  _AddAce: Pointer;

function AddAce;
begin
  GetProcedureAddress(_AddAce, advapi32, 'AddAce');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AddAce]
  end;
end;

var
  _DeleteAce: Pointer;

function DeleteAce;
begin
  GetProcedureAddress(_DeleteAce, advapi32, 'DeleteAce');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DeleteAce]
  end;
end;

var
  _GetAce: Pointer;

function GetAce;
begin
  GetProcedureAddress(_GetAce, advapi32, 'GetAce');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetAce]
  end;
end;

var
  _AddAccessAllowedAce: Pointer;

function AddAccessAllowedAce;
begin
  GetProcedureAddress(_AddAccessAllowedAce, advapi32, 'AddAccessAllowedAce');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AddAccessAllowedAce]
  end;
end;

var
  _AddAccessAllowedAceEx: Pointer;

function AddAccessAllowedAceEx;
begin
  GetProcedureAddress(_AddAccessAllowedAceEx, advapi32, 'AddAccessAllowedAceEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AddAccessAllowedAceEx]
  end;
end;

var
  _AddAccessDeniedAce: Pointer;

function AddAccessDeniedAce;
begin
  GetProcedureAddress(_AddAccessDeniedAce, advapi32, 'AddAccessDeniedAce');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AddAccessDeniedAce]
  end;
end;

var
  _AddAccessDeniedAceEx: Pointer;

function AddAccessDeniedAceEx;
begin
  GetProcedureAddress(_AddAccessDeniedAceEx, advapi32, 'AddAccessDeniedAceEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AddAccessDeniedAceEx]
  end;
end;

var
  _AddAuditAccessAce: Pointer;

function AddAuditAccessAce;
begin
  GetProcedureAddress(_AddAuditAccessAce, advapi32, 'AddAuditAccessAce');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AddAuditAccessAce]
  end;
end;

var
  _AddAuditAccessAceEx: Pointer;

function AddAuditAccessAceEx;
begin
  GetProcedureAddress(_AddAuditAccessAceEx, advapi32, 'AddAuditAccessAceEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AddAuditAccessAceEx]
  end;
end;

var
  _AddAccessAllowedObjectAce: Pointer;

function AddAccessAllowedObjectAce;
begin
  GetProcedureAddress(_AddAccessAllowedObjectAce, advapi32, 'AddAccessAllowedObjectAce');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AddAccessAllowedObjectAce]
  end;
end;

var
  _AddAccessDeniedObjectAce: Pointer;

function AddAccessDeniedObjectAce;
begin
  GetProcedureAddress(_AddAccessDeniedObjectAce, advapi32, 'AddAccessDeniedObjectAce');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AddAccessDeniedObjectAce]
  end;
end;

var
  _AddAuditAccessObjectAce: Pointer;

function AddAuditAccessObjectAce;
begin
  GetProcedureAddress(_AddAuditAccessObjectAce, advapi32, 'AddAuditAccessObjectAce');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AddAuditAccessObjectAce]
  end;
end;

var
  _FindFirstFreeAce: Pointer;

function FindFirstFreeAce;
begin
  GetProcedureAddress(_FindFirstFreeAce, advapi32, 'FindFirstFreeAce');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindFirstFreeAce]
  end;
end;

var
  _InitializeSecurityDescriptor: Pointer;

function InitializeSecurityDescriptor;
begin
  GetProcedureAddress(_InitializeSecurityDescriptor, advapi32, 'InitializeSecurityDescriptor');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_InitializeSecurityDescriptor]
  end;
end;

var
  _IsValidSecurityDescriptor: Pointer;

function IsValidSecurityDescriptor;
begin
  GetProcedureAddress(_IsValidSecurityDescriptor, advapi32, 'IsValidSecurityDescriptor');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsValidSecurityDescriptor]
  end;
end;

var
  _GetSecurityDescriptorLength: Pointer;

function GetSecurityDescriptorLength;
begin
  GetProcedureAddress(_GetSecurityDescriptorLength, advapi32, 'GetSecurityDescriptorLength');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSecurityDescriptorLength]
  end;
end;

var
  _GetSecurityDescriptorControl: Pointer;

function GetSecurityDescriptorControl;
begin
  GetProcedureAddress(_GetSecurityDescriptorControl, advapi32, 'GetSecurityDescriptorControl');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSecurityDescriptorControl]
  end;
end;

var
  _SetSecurityDescriptorControl: Pointer;

function SetSecurityDescriptorControl;
begin
  GetProcedureAddress(_SetSecurityDescriptorControl, advapi32, 'SetSecurityDescriptorControl');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetSecurityDescriptorControl]
  end;
end;

var
  _SetSecurityDescriptorDacl: Pointer;

function SetSecurityDescriptorDacl;
begin
  GetProcedureAddress(_SetSecurityDescriptorDacl, advapi32, 'SetSecurityDescriptorDacl');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetSecurityDescriptorDacl]
  end;
end;

var
  _GetSecurityDescriptorDacl: Pointer;

function GetSecurityDescriptorDacl;
begin
  GetProcedureAddress(_GetSecurityDescriptorDacl, advapi32, 'GetSecurityDescriptorDacl');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSecurityDescriptorDacl]
  end;
end;

var
  _SetSecurityDescriptorSacl: Pointer;

function SetSecurityDescriptorSacl;
begin
  GetProcedureAddress(_SetSecurityDescriptorSacl, advapi32, 'SetSecurityDescriptorSacl');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetSecurityDescriptorSacl]
  end;
end;

var
  _GetSecurityDescriptorSacl: Pointer;

function GetSecurityDescriptorSacl;
begin
  GetProcedureAddress(_GetSecurityDescriptorSacl, advapi32, 'GetSecurityDescriptorSacl');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSecurityDescriptorSacl]
  end;
end;

var
  _SetSecurityDescriptorOwner: Pointer;

function SetSecurityDescriptorOwner;
begin
  GetProcedureAddress(_SetSecurityDescriptorOwner, advapi32, 'SetSecurityDescriptorOwner');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetSecurityDescriptorOwner]
  end;
end;

var
  _GetSecurityDescriptorOwner: Pointer;

function GetSecurityDescriptorOwner;
begin
  GetProcedureAddress(_GetSecurityDescriptorOwner, advapi32, 'GetSecurityDescriptorOwner');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSecurityDescriptorOwner]
  end;
end;

var
  _SetSecurityDescriptorGroup: Pointer;

function SetSecurityDescriptorGroup;
begin
  GetProcedureAddress(_SetSecurityDescriptorGroup, advapi32, 'SetSecurityDescriptorGroup');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetSecurityDescriptorGroup]
  end;
end;

var
  _GetSecurityDescriptorGroup: Pointer;

function GetSecurityDescriptorGroup;
begin
  GetProcedureAddress(_GetSecurityDescriptorGroup, advapi32, 'GetSecurityDescriptorGroup');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSecurityDescriptorGroup]
  end;
end;

var
  _SetSecurityDescriptorRMControl: Pointer;

function SetSecurityDescriptorRMControl;
begin
  GetProcedureAddress(_SetSecurityDescriptorRMControl, advapi32, 'SetSecurityDescriptorRMControl');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetSecurityDescriptorRMControl]
  end;
end;

var
  _GetSecurityDescriptorRMControl: Pointer;

function GetSecurityDescriptorRMControl;
begin
  GetProcedureAddress(_GetSecurityDescriptorRMControl, advapi32, 'GetSecurityDescriptorRMControl');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSecurityDescriptorRMControl]
  end;
end;

var
  _CreatePrivateObjectSecurity: Pointer;

function CreatePrivateObjectSecurity;
begin
  GetProcedureAddress(_CreatePrivateObjectSecurity, advapi32, 'CreatePrivateObjectSecurity');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreatePrivateObjectSecurity]
  end;
end;

var
  _ConvertToAutoInheritPrObjSec: Pointer;

function ConvertToAutoInheritPrivateObjectSecurity;
begin
  GetProcedureAddress(_ConvertToAutoInheritPrObjSec, advapi32, 'ConvertToAutoInheritPrivateObjectSecurity');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ConvertToAutoInheritPrObjSec]
  end;
end;

var
  _CreatePrivateObjectSecurityEx: Pointer;

function CreatePrivateObjectSecurityEx;
begin
  GetProcedureAddress(_CreatePrivateObjectSecurityEx, advapi32, 'CreatePrivateObjectSecurityEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreatePrivateObjectSecurityEx]
  end;
end;

var
  _SetPrivateObjectSecurity: Pointer;

function SetPrivateObjectSecurity;
begin
  GetProcedureAddress(_SetPrivateObjectSecurity, advapi32, 'SetPrivateObjectSecurity');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetPrivateObjectSecurity]
  end;
end;

var
  _SetPrivateObjectSecurityEx: Pointer;

function SetPrivateObjectSecurityEx;
begin
  GetProcedureAddress(_SetPrivateObjectSecurityEx, advapi32, 'SetPrivateObjectSecurityEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetPrivateObjectSecurityEx]
  end;
end;

var
  _GetPrivateObjectSecurity: Pointer;

function GetPrivateObjectSecurity;
begin
  GetProcedureAddress(_GetPrivateObjectSecurity, advapi32, 'GetPrivateObjectSecurity');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetPrivateObjectSecurity]
  end;
end;

var
  _DestroyPrivateObjectSecurity: Pointer;

function DestroyPrivateObjectSecurity;
begin
  GetProcedureAddress(_DestroyPrivateObjectSecurity, advapi32, 'DestroyPrivateObjectSecurity');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DestroyPrivateObjectSecurity]
  end;
end;

var
  _MakeSelfRelativeSD: Pointer;

function MakeSelfRelativeSD;
begin
  GetProcedureAddress(_MakeSelfRelativeSD, advapi32, 'MakeSelfRelativeSD');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_MakeSelfRelativeSD]
  end;
end;

var
  _MakeAbsoluteSD: Pointer;

function MakeAbsoluteSD;
begin
  GetProcedureAddress(_MakeAbsoluteSD, advapi32, 'MakeAbsoluteSD');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_MakeAbsoluteSD]
  end;
end;

var
  _MakeAbsoluteSD2: Pointer;

function MakeAbsoluteSD2;
begin
  GetProcedureAddress(_MakeAbsoluteSD2, advapi32, 'MakeAbsoluteSD2');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_MakeAbsoluteSD2]
  end;
end;

var
  _SetFileSecurityA: Pointer;

function SetFileSecurityA;
begin
  GetProcedureAddress(_SetFileSecurityA, advapi32, 'SetFileSecurityA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetFileSecurityA]
  end;
end;

var
  _SetFileSecurityW: Pointer;

function SetFileSecurityW;
begin
  GetProcedureAddress(_SetFileSecurityW, advapi32, 'SetFileSecurityW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetFileSecurityW]
  end;
end;

var
  _SetFileSecurity: Pointer;

function SetFileSecurity;
begin
  GetProcedureAddress(_SetFileSecurity, advapi32, 'SetFileSecurity' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetFileSecurity]
  end;
end;

var
  _GetFileSecurityA: Pointer;

function GetFileSecurityA;
begin
  GetProcedureAddress(_GetFileSecurityA, advapi32, 'GetFileSecurityA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFileSecurityA]
  end;
end;

var
  _GetFileSecurityW: Pointer;

function GetFileSecurityW;
begin
  GetProcedureAddress(_GetFileSecurityW, advapi32, 'GetFileSecurityW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFileSecurityW]
  end;
end;

var
  _GetFileSecurity: Pointer;

function GetFileSecurity;
begin
  GetProcedureAddress(_GetFileSecurity, advapi32, 'GetFileSecurity' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetFileSecurity]
  end;
end;

var
  _SetKernelObjectSecurity: Pointer;

function SetKernelObjectSecurity;
begin
  GetProcedureAddress(_SetKernelObjectSecurity, advapi32, 'SetKernelObjectSecurity');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetKernelObjectSecurity]
  end;
end;

var
  _FindFirstChangeNotificationA: Pointer;

function FindFirstChangeNotificationA;
begin
  GetProcedureAddress(_FindFirstChangeNotificationA, kernel32, 'FindFirstChangeNotificationA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindFirstChangeNotificationA]
  end;
end;

var
  _FindFirstChangeNotificationW: Pointer;

function FindFirstChangeNotificationW;
begin
  GetProcedureAddress(_FindFirstChangeNotificationW, kernel32, 'FindFirstChangeNotificationW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindFirstChangeNotificationW]
  end;
end;

var
  _FindFirstChangeNotification: Pointer;

function FindFirstChangeNotification;
begin
  GetProcedureAddress(_FindFirstChangeNotification, kernel32, 'FindFirstChangeNotification' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindFirstChangeNotification]
  end;
end;

var
  _FindNextChangeNotification: Pointer;

function FindNextChangeNotification;
begin
  GetProcedureAddress(_FindNextChangeNotification, kernel32, 'FindNextChangeNotification');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindNextChangeNotification]
  end;
end;

var
  _FindCloseChangeNotification: Pointer;

function FindCloseChangeNotification;
begin
  GetProcedureAddress(_FindCloseChangeNotification, kernel32, 'FindCloseChangeNotification');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindCloseChangeNotification]
  end;
end;

var
  _ReadDirectoryChangesW: Pointer;

function ReadDirectoryChangesW;
begin
  GetProcedureAddress(_ReadDirectoryChangesW, kernel32, 'ReadDirectoryChangesW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReadDirectoryChangesW]
  end;
end;

var
  _VirtualLock: Pointer;

function VirtualLock;
begin
  GetProcedureAddress(_VirtualLock, kernel32, 'VirtualLock');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_VirtualLock]
  end;
end;

var
  _VirtualUnlock: Pointer;

function VirtualUnlock;
begin
  GetProcedureAddress(_VirtualUnlock, kernel32, 'VirtualUnlock');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_VirtualUnlock]
  end;
end;

var
  _MapViewOfFileEx: Pointer;

function MapViewOfFileEx;
begin
  GetProcedureAddress(_MapViewOfFileEx, kernel32, 'MapViewOfFileEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_MapViewOfFileEx]
  end;
end;

var
  _SetPriorityClass: Pointer;

function SetPriorityClass;
begin
  GetProcedureAddress(_SetPriorityClass, kernel32, 'SetPriorityClass');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetPriorityClass]
  end;
end;

var
  _GetPriorityClass: Pointer;

function GetPriorityClass;
begin
  GetProcedureAddress(_GetPriorityClass, kernel32, 'GetPriorityClass');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetPriorityClass]
  end;
end;

var
  _IsBadReadPtr: Pointer;

function IsBadReadPtr;
begin
  GetProcedureAddress(_IsBadReadPtr, kernel32, 'IsBadReadPtr');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsBadReadPtr]
  end;
end;

var
  _IsBadWritePtr: Pointer;

function IsBadWritePtr;
begin
  GetProcedureAddress(_IsBadWritePtr, kernel32, 'IsBadWritePtr');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsBadWritePtr]
  end;
end;

var
  _IsBadHugeReadPtr: Pointer;

function IsBadHugeReadPtr;
begin
  GetProcedureAddress(_IsBadHugeReadPtr, kernel32, 'IsBadHugeReadPtr');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsBadHugeReadPtr]
  end;
end;

var
  _IsBadHugeWritePtr: Pointer;

function IsBadHugeWritePtr;
begin
  GetProcedureAddress(_IsBadHugeWritePtr, kernel32, 'IsBadHugeWritePtr');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsBadHugeWritePtr]
  end;
end;

var
  _IsBadCodePtr: Pointer;

function IsBadCodePtr;
begin
  GetProcedureAddress(_IsBadCodePtr, kernel32, 'IsBadCodePtr');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsBadCodePtr]
  end;
end;

var
  _IsBadStringPtrA: Pointer;

function IsBadStringPtrA;
begin
  GetProcedureAddress(_IsBadStringPtrA, kernel32, 'IsBadStringPtrA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsBadStringPtrA]
  end;
end;

var
  _IsBadStringPtrW: Pointer;

function IsBadStringPtrW;
begin
  GetProcedureAddress(_IsBadStringPtrW, kernel32, 'IsBadStringPtrW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsBadStringPtrW]
  end;
end;

var
  _IsBadStringPtr: Pointer;

function IsBadStringPtr;
begin
  GetProcedureAddress(_IsBadStringPtr, kernel32, 'IsBadStringPtr' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsBadStringPtr]
  end;
end;

var
  _LookupAccountSidA: Pointer;

function LookupAccountSidA;
begin
  GetProcedureAddress(_LookupAccountSidA, advapi32, 'LookupAccountSidA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LookupAccountSidA]
  end;
end;

var
  _LookupAccountSidW: Pointer;

function LookupAccountSidW;
begin
  GetProcedureAddress(_LookupAccountSidW, advapi32, 'LookupAccountSidW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LookupAccountSidW]
  end;
end;

var
  _LookupAccountSid: Pointer;

function LookupAccountSid;
begin
  GetProcedureAddress(_LookupAccountSid, advapi32, 'LookupAccountSid' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LookupAccountSid]
  end;
end;

var
  _LookupAccountNameA: Pointer;

function LookupAccountNameA;
begin
  GetProcedureAddress(_LookupAccountNameA, advapi32, 'LookupAccountNameA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LookupAccountNameA]
  end;
end;

var
  _LookupAccountNameW: Pointer;

function LookupAccountNameW;
begin
  GetProcedureAddress(_LookupAccountNameW, advapi32, 'LookupAccountNameW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LookupAccountNameW]
  end;
end;

var
  _LookupAccountName: Pointer;

function LookupAccountName;
begin
  GetProcedureAddress(_LookupAccountName, advapi32, 'LookupAccountName' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LookupAccountName]
  end;
end;

var
  _LookupPrivilegeValueA: Pointer;

function LookupPrivilegeValueA;
begin
  GetProcedureAddress(_LookupPrivilegeValueA, advapi32, 'LookupPrivilegeValueA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LookupPrivilegeValueA]
  end;
end;

var
  _LookupPrivilegeValueW: Pointer;

function LookupPrivilegeValueW;
begin
  GetProcedureAddress(_LookupPrivilegeValueW, advapi32, 'LookupPrivilegeValueW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LookupPrivilegeValueW]
  end;
end;

var
  _LookupPrivilegeValue: Pointer;

function LookupPrivilegeValue;
begin
  GetProcedureAddress(_LookupPrivilegeValue, advapi32, 'LookupPrivilegeValue' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LookupPrivilegeValue]
  end;
end;

var
  _LookupPrivilegeNameA: Pointer;

function LookupPrivilegeNameA;
begin
  GetProcedureAddress(_LookupPrivilegeNameA, advapi32, 'LookupPrivilegeNameA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LookupPrivilegeNameA]
  end;
end;

var
  _LookupPrivilegeNameW: Pointer;

function LookupPrivilegeNameW;
begin
  GetProcedureAddress(_LookupPrivilegeNameW, advapi32, 'LookupPrivilegeNameW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LookupPrivilegeNameW]
  end;
end;

var
  _LookupPrivilegeName: Pointer;

function LookupPrivilegeName;
begin
  GetProcedureAddress(_LookupPrivilegeName, advapi32, 'LookupPrivilegeName' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LookupPrivilegeName]
  end;
end;

var
  _LookupPrivilegeDisplayNameA: Pointer;

function LookupPrivilegeDisplayNameA;
begin
  GetProcedureAddress(_LookupPrivilegeDisplayNameA, advapi32, 'LookupPrivilegeDisplayNameA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LookupPrivilegeDisplayNameA]
  end;
end;

var
  _LookupPrivilegeDisplayNameW: Pointer;

function LookupPrivilegeDisplayNameW;
begin
  GetProcedureAddress(_LookupPrivilegeDisplayNameW, advapi32, 'LookupPrivilegeDisplayNameW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LookupPrivilegeDisplayNameW]
  end;
end;

var
  _LookupPrivilegeDisplayName: Pointer;

function LookupPrivilegeDisplayName;
begin
  GetProcedureAddress(_LookupPrivilegeDisplayName, advapi32, 'LookupPrivilegeDisplayName' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LookupPrivilegeDisplayName]
  end;
end;

var
  _AllocateLocallyUniqueId: Pointer;

function AllocateLocallyUniqueId;
begin
  GetProcedureAddress(_AllocateLocallyUniqueId, advapi32, 'AllocateLocallyUniqueId');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AllocateLocallyUniqueId]
  end;
end;

var
  _BuildCommDCBA: Pointer;

function BuildCommDCBA;
begin
  GetProcedureAddress(_BuildCommDCBA, kernel32, 'BuildCommDCBA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_BuildCommDCBA]
  end;
end;

var
  _BuildCommDCBW: Pointer;

function BuildCommDCBW;
begin
  GetProcedureAddress(_BuildCommDCBW, kernel32, 'BuildCommDCBW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_BuildCommDCBW]
  end;
end;

var
  _BuildCommDCB: Pointer;

function BuildCommDCB;
begin
  GetProcedureAddress(_BuildCommDCB, kernel32, 'BuildCommDCB' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_BuildCommDCB]
  end;
end;

var
  _BuildCommDCBAndTimeoutsA: Pointer;

function BuildCommDCBAndTimeoutsA;
begin
  GetProcedureAddress(_BuildCommDCBAndTimeoutsA, kernel32, 'BuildCommDCBAndTimeoutsA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_BuildCommDCBAndTimeoutsA]
  end;
end;

var
  _BuildCommDCBAndTimeoutsW: Pointer;

function BuildCommDCBAndTimeoutsW;
begin
  GetProcedureAddress(_BuildCommDCBAndTimeoutsW, kernel32, 'BuildCommDCBAndTimeoutsW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_BuildCommDCBAndTimeoutsW]
  end;
end;

var
  _BuildCommDCBAndTimeouts: Pointer;

function BuildCommDCBAndTimeouts;
begin
  GetProcedureAddress(_BuildCommDCBAndTimeouts, kernel32, 'BuildCommDCBAndTimeouts' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_BuildCommDCBAndTimeouts]
  end;
end;

var
  _CommConfigDialogA: Pointer;

function CommConfigDialogA;
begin
  GetProcedureAddress(_CommConfigDialogA, kernel32, 'CommConfigDialogA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CommConfigDialogA]
  end;
end;

var
  _CommConfigDialogW: Pointer;

function CommConfigDialogW;
begin
  GetProcedureAddress(_CommConfigDialogW, kernel32, 'CommConfigDialogW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CommConfigDialogW]
  end;
end;

var
  _CommConfigDialog: Pointer;

function CommConfigDialog;
begin
  GetProcedureAddress(_CommConfigDialog, kernel32, 'CommConfigDialog' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CommConfigDialog]
  end;
end;

var
  _GetDefaultCommConfigA: Pointer;

function GetDefaultCommConfigA;
begin
  GetProcedureAddress(_GetDefaultCommConfigA, kernel32, 'GetDefaultCommConfigA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetDefaultCommConfigA]
  end;
end;

var
  _GetDefaultCommConfigW: Pointer;

function GetDefaultCommConfigW;
begin
  GetProcedureAddress(_GetDefaultCommConfigW, kernel32, 'GetDefaultCommConfigW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetDefaultCommConfigW]
  end;
end;

var
  _GetDefaultCommConfig: Pointer;

function GetDefaultCommConfig;
begin
  GetProcedureAddress(_GetDefaultCommConfig, kernel32, 'GetDefaultCommConfig' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetDefaultCommConfig]
  end;
end;

var
  _SetDefaultCommConfigA: Pointer;

function SetDefaultCommConfigA;
begin
  GetProcedureAddress(_SetDefaultCommConfigA, kernel32, 'SetDefaultCommConfigA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetDefaultCommConfigA]
  end;
end;

var
  _SetDefaultCommConfigW: Pointer;

function SetDefaultCommConfigW;
begin
  GetProcedureAddress(_SetDefaultCommConfigW, kernel32, 'SetDefaultCommConfigW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetDefaultCommConfigW]
  end;
end;

var
  _SetDefaultCommConfig: Pointer;

function SetDefaultCommConfig;
begin
  GetProcedureAddress(_SetDefaultCommConfig, kernel32, 'SetDefaultCommConfig' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetDefaultCommConfig]
  end;
end;

var
  _GetComputerNameA: Pointer;

function GetComputerNameA;
begin
  GetProcedureAddress(_GetComputerNameA, kernel32, 'GetComputerNameA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetComputerNameA]
  end;
end;

var
  _GetComputerNameW: Pointer;

function GetComputerNameW;
begin
  GetProcedureAddress(_GetComputerNameW, kernel32, 'GetComputerNameW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetComputerNameW]
  end;
end;

var
  _GetComputerName: Pointer;

function GetComputerName;
begin
  GetProcedureAddress(_GetComputerName, kernel32, 'GetComputerName' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetComputerName]
  end;
end;

var
  _SetComputerNameA: Pointer;

function SetComputerNameA;
begin
  GetProcedureAddress(_SetComputerNameA, kernel32, 'SetComputerNameA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetComputerNameA]
  end;
end;

var
  _SetComputerNameW: Pointer;

function SetComputerNameW;
begin
  GetProcedureAddress(_SetComputerNameW, kernel32, 'SetComputerNameW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetComputerNameW]
  end;
end;

var
  _SetComputerName: Pointer;

function SetComputerName;
begin
  GetProcedureAddress(_SetComputerName, kernel32, 'SetComputerName' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetComputerName]
  end;
end;

var
  _GetComputerNameExA: Pointer;

function GetComputerNameExA;
begin
  GetProcedureAddress(_GetComputerNameExA, kernel32, 'GetComputerNameExA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetComputerNameExA]
  end;
end;

var
  _GetComputerNameExW: Pointer;

function GetComputerNameExW;
begin
  GetProcedureAddress(_GetComputerNameExW, kernel32, 'GetComputerNameExW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetComputerNameExW]
  end;
end;

var
  _GetComputerNameEx: Pointer;

function GetComputerNameEx;
begin
  GetProcedureAddress(_GetComputerNameEx, kernel32, 'GetComputerNameEx' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetComputerNameEx]
  end;
end;

var
  _SetComputerNameExA: Pointer;

function SetComputerNameExA;
begin
  GetProcedureAddress(_SetComputerNameExA, kernel32, 'SetComputerNameExA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetComputerNameExA]
  end;
end;

var
  _SetComputerNameExW: Pointer;

function SetComputerNameExW;
begin
  GetProcedureAddress(_SetComputerNameExW, kernel32, 'SetComputerNameExW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetComputerNameExW]
  end;
end;

var
  _SetComputerNameEx: Pointer;

function SetComputerNameEx;
begin
  GetProcedureAddress(_SetComputerNameEx, kernel32, 'SetComputerNameEx' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetComputerNameEx]
  end;
end;

var
  _DnsHostnameToComputerNameA: Pointer;

function DnsHostnameToComputerNameA;
begin
  GetProcedureAddress(_DnsHostnameToComputerNameA, kernel32, 'DnsHostnameToComputerNameA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DnsHostnameToComputerNameA]
  end;
end;

var
  _DnsHostnameToComputerNameW: Pointer;

function DnsHostnameToComputerNameW;
begin
  GetProcedureAddress(_DnsHostnameToComputerNameW, kernel32, 'DnsHostnameToComputerNameW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DnsHostnameToComputerNameW]
  end;
end;

var
  _DnsHostnameToComputerName: Pointer;

function DnsHostnameToComputerName;
begin
  GetProcedureAddress(_DnsHostnameToComputerName, kernel32, 'DnsHostnameToComputerName' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DnsHostnameToComputerName]
  end;
end;

var
  _GetUserNameA: Pointer;

function GetUserNameA;
begin
  GetProcedureAddress(_GetUserNameA, advapi32, 'GetUserNameA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetUserNameA]
  end;
end;

var
  _GetUserNameW: Pointer;

function GetUserNameW;
begin
  GetProcedureAddress(_GetUserNameW, advapi32, 'GetUserNameW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetUserNameW]
  end;
end;

var
  _GetUserName: Pointer;

function GetUserName;
begin
  GetProcedureAddress(_GetUserName, advapi32, 'GetUserName' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetUserName]
  end;
end;

var
  _LogonUserA: Pointer;

function LogonUserA;
begin
  GetProcedureAddress(_LogonUserA, advapi32, 'LogonUserA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LogonUserA]
  end;
end;

var
  _LogonUserW: Pointer;

function LogonUserW;
begin
  GetProcedureAddress(_LogonUserW, advapi32, 'LogonUserW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LogonUserW]
  end;
end;

var
  _LogonUser: Pointer;

function LogonUser;
begin
  GetProcedureAddress(_LogonUser, advapi32, 'LogonUser' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LogonUser]
  end;
end;

var
  _LogonUserExA: Pointer;

function LogonUserExA;
begin
  GetProcedureAddress(_LogonUserExA, advapi32, 'LogonUserExA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LogonUserExA]
  end;
end;

var
  _LogonUserExW: Pointer;

function LogonUserExW;
begin
  GetProcedureAddress(_LogonUserExW, advapi32, 'LogonUserExW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LogonUserExW]
  end;
end;

var
  _LogonUserEx: Pointer;

function LogonUserEx;
begin
  GetProcedureAddress(_LogonUserEx, advapi32, 'LogonUserEx' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_LogonUserEx]
  end;
end;

var
  _ImpersonateLoggedOnUser: Pointer;

function ImpersonateLoggedOnUser;
begin
  GetProcedureAddress(_ImpersonateLoggedOnUser, advapi32, 'ImpersonateLoggedOnUser');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ImpersonateLoggedOnUser]
  end;
end;

var
  _CreateProcessAsUserA: Pointer;

function CreateProcessAsUserA;
begin
  GetProcedureAddress(_CreateProcessAsUserA, advapi32, 'CreateProcessAsUserA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateProcessAsUserA]
  end;
end;

var
  _CreateProcessAsUserW: Pointer;

function CreateProcessAsUserW;
begin
  GetProcedureAddress(_CreateProcessAsUserW, advapi32, 'CreateProcessAsUserW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateProcessAsUserW]
  end;
end;

var
  _CreateProcessAsUser: Pointer;

function CreateProcessAsUser;
begin
  GetProcedureAddress(_CreateProcessAsUser, advapi32, 'CreateProcessAsUser' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateProcessAsUser]
  end;
end;

var
  _CreateProcessWithLogonW: Pointer;

function CreateProcessWithLogonW;
begin
  GetProcedureAddress(_CreateProcessWithLogonW, advapi32, 'CreateProcessWithLogonW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateProcessWithLogonW]
  end;
end;

var
  _CreateProcessWithTokenW: Pointer;

function CreateProcessWithTokenW;
begin
  GetProcedureAddress(_CreateProcessWithTokenW, advapi32, 'CreateProcessWithTokenW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateProcessWithTokenW]
  end;
end;

var
  _ImpersonateAnonymousToken: Pointer;

function ImpersonateAnonymousToken;
begin
  GetProcedureAddress(_ImpersonateAnonymousToken, advapi32, 'ImpersonateAnonymousToken');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ImpersonateAnonymousToken]
  end;
end;

var
  _DuplicateTokenEx: Pointer;

function DuplicateTokenEx;
begin
  GetProcedureAddress(_DuplicateTokenEx, advapi32, 'DuplicateTokenEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DuplicateTokenEx]
  end;
end;

var
  _CreateRestrictedToken: Pointer;

function CreateRestrictedToken;
begin
  GetProcedureAddress(_CreateRestrictedToken, advapi32, 'CreateRestrictedToken');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateRestrictedToken]
  end;
end;

var
  _IsTokenRestricted: Pointer;

function IsTokenRestricted;
begin
  GetProcedureAddress(_IsTokenRestricted, advapi32, 'IsTokenRestricted');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsTokenRestricted]
  end;
end;

var
  _CheckTokenMembership: Pointer;

function CheckTokenMembership;
begin
  GetProcedureAddress(_CheckTokenMembership, advapi32, 'CheckTokenMembership');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CheckTokenMembership]
  end;
end;

var
  _IsTokenUntrusted: Pointer;

function IsTokenUntrusted;
begin
  GetProcedureAddress(_IsTokenUntrusted, advapi32, 'IsTokenUntrusted');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsTokenUntrusted]
  end;
end;

var
  _RegisterWaitForSingleObject: Pointer;

function RegisterWaitForSingleObject;
begin
  GetProcedureAddress(_RegisterWaitForSingleObject, kernel32, 'RegisterWaitForSingleObject');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RegisterWaitForSingleObject]
  end;
end;

var
  _RegisterWaitForSingleObjectEx: Pointer;

function RegisterWaitForSingleObjectEx;
begin
  GetProcedureAddress(_RegisterWaitForSingleObjectEx, kernel32, 'RegisterWaitForSingleObjectEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RegisterWaitForSingleObjectEx]
  end;
end;

var
  _UnregisterWait: Pointer;

function UnregisterWait;
begin
  GetProcedureAddress(_UnregisterWait, kernel32, 'UnregisterWait');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_UnregisterWait]
  end;
end;

var
  _UnregisterWaitEx: Pointer;

function UnregisterWaitEx;
begin
  GetProcedureAddress(_UnregisterWaitEx, kernel32, 'UnregisterWaitEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_UnregisterWaitEx]
  end;
end;

var
  _QueueUserWorkItem: Pointer;

function QueueUserWorkItem;
begin
  GetProcedureAddress(_QueueUserWorkItem, kernel32, 'QueueUserWorkItem');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_QueueUserWorkItem]
  end;
end;

var
  _BindIoCompletionCallback: Pointer;

function BindIoCompletionCallback;
begin
  GetProcedureAddress(_BindIoCompletionCallback, kernel32, 'BindIoCompletionCallback');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_BindIoCompletionCallback]
  end;
end;

var
  _CreateTimerQueue: Pointer;

function CreateTimerQueue;
begin
  GetProcedureAddress(_CreateTimerQueue, kernel32, 'CreateTimerQueue');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateTimerQueue]
  end;
end;

var
  _CreateTimerQueueTimer: Pointer;

function CreateTimerQueueTimer;
begin
  GetProcedureAddress(_CreateTimerQueueTimer, kernel32, 'CreateTimerQueueTimer');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateTimerQueueTimer]
  end;
end;

var
  _ChangeTimerQueueTimer: Pointer;

function ChangeTimerQueueTimer;
begin
  GetProcedureAddress(_ChangeTimerQueueTimer, kernel32, 'ChangeTimerQueueTimer');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ChangeTimerQueueTimer]
  end;
end;

var
  _DeleteTimerQueueTimer: Pointer;

function DeleteTimerQueueTimer;
begin
  GetProcedureAddress(_DeleteTimerQueueTimer, kernel32, 'DeleteTimerQueueTimer');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DeleteTimerQueueTimer]
  end;
end;

var
  _DeleteTimerQueueEx: Pointer;

function DeleteTimerQueueEx;
begin
  GetProcedureAddress(_DeleteTimerQueueEx, kernel32, 'DeleteTimerQueueEx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DeleteTimerQueueEx]
  end;
end;

var
  _SetTimerQueueTimer: Pointer;

function SetTimerQueueTimer;
begin
  GetProcedureAddress(_SetTimerQueueTimer, kernel32, 'SetTimerQueueTimer');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetTimerQueueTimer]
  end;
end;

var
  _CancelTimerQueueTimer: Pointer;

function CancelTimerQueueTimer;
begin
  GetProcedureAddress(_CancelTimerQueueTimer, kernel32, 'CancelTimerQueueTimer');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CancelTimerQueueTimer]
  end;
end;

var
  _DeleteTimerQueue: Pointer;

function DeleteTimerQueue;
begin
  GetProcedureAddress(_DeleteTimerQueue, kernel32, 'DeleteTimerQueue');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DeleteTimerQueue]
  end;
end;

var
  _GetCurrentHwProfileA: Pointer;

function GetCurrentHwProfileA;
begin
  GetProcedureAddress(_GetCurrentHwProfileA, advapi32, 'GetCurrentHwProfileA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCurrentHwProfileA]
  end;
end;

var
  _GetCurrentHwProfileW: Pointer;

function GetCurrentHwProfileW;
begin
  GetProcedureAddress(_GetCurrentHwProfileW, advapi32, 'GetCurrentHwProfileW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCurrentHwProfileW]
  end;
end;

var
  _GetCurrentHwProfile: Pointer;

function GetCurrentHwProfile;
begin
  GetProcedureAddress(_GetCurrentHwProfile, advapi32, 'GetCurrentHwProfile' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCurrentHwProfile]
  end;
end;

var
  _QueryPerformanceCounter: Pointer;

function QueryPerformanceCounter;
begin
  GetProcedureAddress(_QueryPerformanceCounter, kernel32, 'QueryPerformanceCounter');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_QueryPerformanceCounter]
  end;
end;

var
  _QueryPerformanceFrequency: Pointer;

function QueryPerformanceFrequency;
begin
  GetProcedureAddress(_QueryPerformanceFrequency, kernel32, 'QueryPerformanceFrequency');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_QueryPerformanceFrequency]
  end;
end;

var
  _GetVersionExA: Pointer;

function GetVersionExA;
begin
  GetProcedureAddress(_GetVersionExA, kernel32, 'GetVersionExA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetVersionExA]
  end;
end;

var
  _GetVersionExW: Pointer;

function GetVersionExW;
begin
  GetProcedureAddress(_GetVersionExW, kernel32, 'GetVersionExW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetVersionExW]
  end;
end;

var
  _GetVersionEx: Pointer;

function GetVersionEx;
begin
  GetProcedureAddress(_GetVersionEx, kernel32, 'GetVersionEx' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetVersionEx]
  end;
end;

var
  _VerifyVersionInfoA: Pointer;

function VerifyVersionInfoA;
begin
  GetProcedureAddress(_VerifyVersionInfoA, kernel32, 'VerifyVersionInfoA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_VerifyVersionInfoA]
  end;
end;

var
  _VerifyVersionInfoW: Pointer;

function VerifyVersionInfoW;
begin
  GetProcedureAddress(_VerifyVersionInfoW, kernel32, 'VerifyVersionInfoW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_VerifyVersionInfoW]
  end;
end;

var
  _VerifyVersionInfo: Pointer;

function VerifyVersionInfo;
begin
  GetProcedureAddress(_VerifyVersionInfo, kernel32, 'VerifyVersionInfo' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_VerifyVersionInfo]
  end;
end;

var
  _GetSystemPowerStatus: Pointer;

function GetSystemPowerStatus;
begin
  GetProcedureAddress(_GetSystemPowerStatus, kernel32, 'GetSystemPowerStatus');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetSystemPowerStatus]
  end;
end;

var
  _SetSystemPowerState: Pointer;

function SetSystemPowerState;
begin
  GetProcedureAddress(_SetSystemPowerState, kernel32, 'SetSystemPowerState');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetSystemPowerState]
  end;
end;

var
  _AllocateUserPhysicalPages: Pointer;

function AllocateUserPhysicalPages;
begin
  GetProcedureAddress(_AllocateUserPhysicalPages, kernel32, 'AllocateUserPhysicalPages');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AllocateUserPhysicalPages]
  end;
end;

var
  _FreeUserPhysicalPages: Pointer;

function FreeUserPhysicalPages;
begin
  GetProcedureAddress(_FreeUserPhysicalPages, kernel32, 'FreeUserPhysicalPages');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FreeUserPhysicalPages]
  end;
end;

var
  _MapUserPhysicalPages: Pointer;

function MapUserPhysicalPages;
begin
  GetProcedureAddress(_MapUserPhysicalPages, kernel32, 'MapUserPhysicalPages');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_MapUserPhysicalPages]
  end;
end;

var
  _MapUserPhysicalPagesScatter: Pointer;

function MapUserPhysicalPagesScatter;
begin
  GetProcedureAddress(_MapUserPhysicalPagesScatter, kernel32, 'MapUserPhysicalPagesScatter');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_MapUserPhysicalPagesScatter]
  end;
end;

var
  _CreateJobObjectA: Pointer;

function CreateJobObjectA;
begin
  GetProcedureAddress(_CreateJobObjectA, kernel32, 'CreateJobObjectA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateJobObjectA]
  end;
end;

var
  _CreateJobObjectW: Pointer;

function CreateJobObjectW;
begin
  GetProcedureAddress(_CreateJobObjectW, kernel32, 'CreateJobObjectW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateJobObjectW]
  end;
end;

var
  _CreateJobObject: Pointer;

function CreateJobObject;
begin
  GetProcedureAddress(_CreateJobObject, kernel32, 'CreateJobObject' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateJobObject]
  end;
end;

var
  _OpenJobObjectA: Pointer;

function OpenJobObjectA;
begin
  GetProcedureAddress(_OpenJobObjectA, kernel32, 'OpenJobObjectA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenJobObjectA]
  end;
end;

var
  _OpenJobObjectW: Pointer;

function OpenJobObjectW;
begin
  GetProcedureAddress(_OpenJobObjectW, kernel32, 'OpenJobObjectW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenJobObjectW]
  end;
end;

var
  _OpenJobObject: Pointer;

function OpenJobObject;
begin
  GetProcedureAddress(_OpenJobObject, kernel32, 'OpenJobObject' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_OpenJobObject]
  end;
end;

var
  _AssignProcessToJobObject: Pointer;

function AssignProcessToJobObject;
begin
  GetProcedureAddress(_AssignProcessToJobObject, kernel32, 'AssignProcessToJobObject');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AssignProcessToJobObject]
  end;
end;

var
  _TerminateJobObject: Pointer;

function TerminateJobObject;
begin
  GetProcedureAddress(_TerminateJobObject, kernel32, 'TerminateJobObject');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_TerminateJobObject]
  end;
end;

var
  _QueryInformationJobObject: Pointer;

function QueryInformationJobObject;
begin
  GetProcedureAddress(_QueryInformationJobObject, kernel32, 'QueryInformationJobObject');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_QueryInformationJobObject]
  end;
end;

var
  _SetInformationJobObject: Pointer;

function SetInformationJobObject;
begin
  GetProcedureAddress(_SetInformationJobObject, kernel32, 'SetInformationJobObject');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetInformationJobObject]
  end;
end;

var
  _IsProcessInJob: Pointer;

function IsProcessInJob;
begin
  GetProcedureAddress(_IsProcessInJob, kernel32, 'IsProcessInJob');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsProcessInJob]
  end;
end;

var
  _CreateJobSet: Pointer;

function CreateJobSet;
begin
  GetProcedureAddress(_CreateJobSet, kernel32, 'CreateJobSet');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateJobSet]
  end;
end;

var
  _AddVectoredExceptionHandler: Pointer;

function AddVectoredExceptionHandler;
begin
  GetProcedureAddress(_AddVectoredExceptionHandler, kernel32, 'AddVectoredExceptionHandler');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AddVectoredExceptionHandler]
  end;
end;

var
  _RemoveVectoredExceptionHandler: Pointer;

function RemoveVectoredExceptionHandler;
begin
  GetProcedureAddress(_RemoveVectoredExceptionHandler, kernel32, 'RemoveVectoredExceptionHandler');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RemoveVectoredExceptionHandler]
  end;
end;

var
  _FindFirstVolumeA: Pointer;

function FindFirstVolumeA;
begin
  GetProcedureAddress(_FindFirstVolumeA, kernel32, 'FindFirstVolumeA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindFirstVolumeA]
  end;
end;

var
  _FindFirstVolumeW: Pointer;

function FindFirstVolumeW;
begin
  GetProcedureAddress(_FindFirstVolumeW, kernel32, 'FindFirstVolumeW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindFirstVolumeW]
  end;
end;

var
  _FindFirstVolume: Pointer;

function FindFirstVolume;
begin
  GetProcedureAddress(_FindFirstVolume, kernel32, 'FindFirstVolume' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindFirstVolume]
  end;
end;

var
  _FindNextVolumeA: Pointer;

function FindNextVolumeA;
begin
  GetProcedureAddress(_FindNextVolumeA, kernel32, 'FindNextVolumeA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindNextVolumeA]
  end;
end;

var
  _FindNextVolumeW: Pointer;

function FindNextVolumeW;
begin
  GetProcedureAddress(_FindNextVolumeW, kernel32, 'FindNextVolumeW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindNextVolumeW]
  end;
end;

var
  _FindNextVolume: Pointer;

function FindNextVolume;
begin
  GetProcedureAddress(_FindNextVolume, kernel32, 'FindNextVolume' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindNextVolume]
  end;
end;

var
  _FindVolumeClose: Pointer;

function FindVolumeClose;
begin
  GetProcedureAddress(_FindVolumeClose, kernel32, 'FindVolumeClose');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindVolumeClose]
  end;
end;

var
  _FindFirstVolumeMountPointA: Pointer;

function FindFirstVolumeMountPointA;
begin
  GetProcedureAddress(_FindFirstVolumeMountPointA, kernel32, 'FindFirstVolumeMountPointA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindFirstVolumeMountPointA]
  end;
end;

var
  _FindFirstVolumeMountPointW: Pointer;

function FindFirstVolumeMountPointW;
begin
  GetProcedureAddress(_FindFirstVolumeMountPointW, kernel32, 'FindFirstVolumeMountPointW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindFirstVolumeMountPointW]
  end;
end;

var
  _FindFirstVolumeMountPoint: Pointer;

function FindFirstVolumeMountPoint;
begin
  GetProcedureAddress(_FindFirstVolumeMountPoint, kernel32, 'FindFirstVolumeMountPoint' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindFirstVolumeMountPoint]
  end;
end;

var
  _FindNextVolumeMountPointA: Pointer;

function FindNextVolumeMountPointA;
begin
  GetProcedureAddress(_FindNextVolumeMountPointA, kernel32, 'FindNextVolumeMountPointA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindNextVolumeMountPointA]
  end;
end;

var
  _FindNextVolumeMountPointW: Pointer;

function FindNextVolumeMountPointW;
begin
  GetProcedureAddress(_FindNextVolumeMountPointW, kernel32, 'FindNextVolumeMountPointW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindNextVolumeMountPointW]
  end;
end;

var
  _FindNextVolumeMountPoint: Pointer;

function FindNextVolumeMountPoint;
begin
  GetProcedureAddress(_FindNextVolumeMountPoint, kernel32, 'FindNextVolumeMountPoint' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindNextVolumeMountPoint]
  end;
end;

var
  _FindVolumeMountPointClose: Pointer;

function FindVolumeMountPointClose;
begin
  GetProcedureAddress(_FindVolumeMountPointClose, kernel32, 'FindVolumeMountPointClose');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindVolumeMountPointClose]
  end;
end;

var
  _SetVolumeMountPointA: Pointer;

function SetVolumeMountPointA;
begin
  GetProcedureAddress(_SetVolumeMountPointA, kernel32, 'SetVolumeMountPointA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetVolumeMountPointA]
  end;
end;

var
  _SetVolumeMountPointW: Pointer;

function SetVolumeMountPointW;
begin
  GetProcedureAddress(_SetVolumeMountPointW, kernel32, 'SetVolumeMountPointW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetVolumeMountPointW]
  end;
end;

var
  _SetVolumeMountPoint: Pointer;

function SetVolumeMountPoint;
begin
  GetProcedureAddress(_SetVolumeMountPoint, kernel32, 'SetVolumeMountPoint' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetVolumeMountPoint]
  end;
end;

var
  _DeleteVolumeMountPointA: Pointer;

function DeleteVolumeMountPointA;
begin
  GetProcedureAddress(_DeleteVolumeMountPointA, kernel32, 'DeleteVolumeMountPointA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DeleteVolumeMountPointA]
  end;
end;

var
  _DeleteVolumeMountPointW: Pointer;

function DeleteVolumeMountPointW;
begin
  GetProcedureAddress(_DeleteVolumeMountPointW, kernel32, 'DeleteVolumeMountPointW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DeleteVolumeMountPointW]
  end;
end;

var
  _DeleteVolumeMountPoint: Pointer;

function DeleteVolumeMountPoint;
begin
  GetProcedureAddress(_DeleteVolumeMountPoint, kernel32, 'DeleteVolumeMountPoint' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DeleteVolumeMountPoint]
  end;
end;

var
  _GetVolumeNameForVolMountPointA: Pointer;

function GetVolumeNameForVolumeMountPointA;
begin
  GetProcedureAddress(_GetVolumeNameForVolMountPointA, kernel32, 'GetVolumeNameForVolumeMountPointA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetVolumeNameForVolMountPointA]
  end;
end;

var
  _GetVolumeNameForVolMountPointW: Pointer;

function GetVolumeNameForVolumeMountPointW;
begin
  GetProcedureAddress(_GetVolumeNameForVolMountPointW, kernel32, 'GetVolumeNameForVolumeMountPointW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetVolumeNameForVolMountPointW]
  end;
end;

var
  _GetVolumeNameForVolMountPoint: Pointer;

function GetVolumeNameForVolumeMountPoint;
begin
  GetProcedureAddress(_GetVolumeNameForVolMountPoint, kernel32, 'GetVolumeNameForVolumeMountPoint' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetVolumeNameForVolMountPoint]
  end;
end;

var
  _GetVolumePathNameA: Pointer;

function GetVolumePathNameA;
begin
  GetProcedureAddress(_GetVolumePathNameA, kernel32, 'GetVolumePathNameA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetVolumePathNameA]
  end;
end;

var
  _GetVolumePathNameW: Pointer;

function GetVolumePathNameW;
begin
  GetProcedureAddress(_GetVolumePathNameW, kernel32, 'GetVolumePathNameW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetVolumePathNameW]
  end;
end;

var
  _GetVolumePathName: Pointer;

function GetVolumePathName;
begin
  GetProcedureAddress(_GetVolumePathName, kernel32, 'GetVolumePathName' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetVolumePathName]
  end;
end;

var
  _GetVolumePathNamesForVolNameA: Pointer;

function GetVolumePathNamesForVolumeNameA;
begin
  GetProcedureAddress(_GetVolumePathNamesForVolNameA, kernel32, 'GetVolumePathNamesForVolumeNameA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetVolumePathNamesForVolNameA]
  end;
end;

var
  _GetVolumePathNamesForVolNameW: Pointer;

function GetVolumePathNamesForVolumeNameW;
begin
  GetProcedureAddress(_GetVolumePathNamesForVolNameW, kernel32, 'GetVolumePathNamesForVolumeNameW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetVolumePathNamesForVolNameW]
  end;
end;

var
  _GetVolumePathNamesForVolName: Pointer;

function GetVolumePathNamesForVolumeName;
begin
  GetProcedureAddress(_GetVolumePathNamesForVolName, kernel32, 'GetVolumePathNamesForVolumeName' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetVolumePathNamesForVolName]
  end;
end;

var
  _CreateActCtxA: Pointer;

function CreateActCtxA;
begin
  GetProcedureAddress(_CreateActCtxA, kernel32, 'CreateActCtxA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateActCtxA]
  end;
end;

var
  _CreateActCtxW: Pointer;

function CreateActCtxW;
begin
  GetProcedureAddress(_CreateActCtxW, kernel32, 'CreateActCtxW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateActCtxW]
  end;
end;

var
  _CreateActCtx: Pointer;

function CreateActCtx;
begin
  GetProcedureAddress(_CreateActCtx, kernel32, 'CreateActCtx' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_CreateActCtx]
  end;
end;

var
  _AddRefActCtx: Pointer;

procedure AddRefActCtx;
begin
  GetProcedureAddress(_AddRefActCtx, kernel32, 'AddRefActCtx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AddRefActCtx]
  end;
end;

var
  _ReleaseActCtx: Pointer;

procedure ReleaseActCtx;
begin
  GetProcedureAddress(_ReleaseActCtx, kernel32, 'ReleaseActCtx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReleaseActCtx]
  end;
end;

var
  _ZombifyActCtx: Pointer;

function ZombifyActCtx;
begin
  GetProcedureAddress(_ZombifyActCtx, kernel32, 'ZombifyActCtx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ZombifyActCtx]
  end;
end;

var
  _ActivateActCtx: Pointer;

function ActivateActCtx;
begin
  GetProcedureAddress(_ActivateActCtx, kernel32, 'ActivateActCtx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ActivateActCtx]
  end;
end;

var
  _DeactivateActCtx: Pointer;

function DeactivateActCtx;
begin
  GetProcedureAddress(_DeactivateActCtx, kernel32, 'DeactivateActCtx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_DeactivateActCtx]
  end;
end;

var
  _GetCurrentActCtx: Pointer;

function GetCurrentActCtx;
begin
  GetProcedureAddress(_GetCurrentActCtx, kernel32, 'GetCurrentActCtx');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetCurrentActCtx]
  end;
end;

var
  _FindActCtxSectionStringA: Pointer;

function FindActCtxSectionStringA;
begin
  GetProcedureAddress(_FindActCtxSectionStringA, kernel32, 'FindActCtxSectionStringA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindActCtxSectionStringA]
  end;
end;

var
  _FindActCtxSectionStringW: Pointer;

function FindActCtxSectionStringW;
begin
  GetProcedureAddress(_FindActCtxSectionStringW, kernel32, 'FindActCtxSectionStringW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindActCtxSectionStringW]
  end;
end;

var
  _FindActCtxSectionString: Pointer;

function FindActCtxSectionString;
begin
  GetProcedureAddress(_FindActCtxSectionString, kernel32, 'FindActCtxSectionString' + AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindActCtxSectionString]
  end;
end;

var
  _FindActCtxSectionGuid: Pointer;

function FindActCtxSectionGuid;
begin
  GetProcedureAddress(_FindActCtxSectionGuid, kernel32, 'FindActCtxSectionGuid');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_FindActCtxSectionGuid]
  end;
end;

var
  _QueryActCtxW: Pointer;

function QueryActCtxW;
begin
  GetProcedureAddress(_QueryActCtxW, kernel32, 'QueryActCtxW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_QueryActCtxW]
  end;
end;

var
  _ProcessIdToSessionId: Pointer;

function ProcessIdToSessionId;
begin
  GetProcedureAddress(_ProcessIdToSessionId, kernel32, 'ProcessIdToSessionId');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ProcessIdToSessionId]
  end;
end;

var
  _WTSGetActiveConsoleSessionId: Pointer;

function WTSGetActiveConsoleSessionId;
begin
  GetProcedureAddress(_WTSGetActiveConsoleSessionId, kernel32, 'WTSGetActiveConsoleSessionId');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WTSGetActiveConsoleSessionId]
  end;
end;

var
  _IsWow64Process: Pointer;

function IsWow64Process;
begin
  GetProcedureAddress(_IsWow64Process, kernel32, 'IsWow64Process');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_IsWow64Process]
  end;
end;

var
  _GetLogicalProcessorInformation: Pointer;

function GetLogicalProcessorInformation;
begin
  GetProcedureAddress(_GetLogicalProcessorInformation, kernel32, 'GetLogicalProcessorInformation');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetLogicalProcessorInformation]
  end;
end;

var
  _GetNumaHighestNodeNumber: Pointer;

function GetNumaHighestNodeNumber;
begin
  GetProcedureAddress(_GetNumaHighestNodeNumber, kernel32, 'GetNumaHighestNodeNumber');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetNumaHighestNodeNumber]
  end;
end;

var
  _GetNumaProcessorNode: Pointer;

function GetNumaProcessorNode;
begin
  GetProcedureAddress(_GetNumaProcessorNode, kernel32, 'GetNumaProcessorNode');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetNumaProcessorNode]
  end;
end;

var
  _GetNumaNodeProcessorMask: Pointer;

function GetNumaNodeProcessorMask;
begin
  GetProcedureAddress(_GetNumaNodeProcessorMask, kernel32, 'GetNumaNodeProcessorMask');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetNumaNodeProcessorMask]
  end;
end;

var
  _GetNumaAvailableMemoryNode: Pointer;

function GetNumaAvailableMemoryNode;
begin
  GetProcedureAddress(_GetNumaAvailableMemoryNode, kernel32, 'GetNumaAvailableMemoryNode');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetNumaAvailableMemoryNode]
  end;
end;

{$IFDEF WINVISTA_UP}

var
  _InitializeConditionVariable: Pointer;

procedure InitializeConditionVariable;
begin
  GetProcedureAddress(_InitializeConditionVariable, kernel32, 'InitializeConditionVariable');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_InitializeConditionVariable]
  end;
end;

var
  _SleepConditionVariableCS: Pointer;

function SleepConditionVariableCS;
begin
  GetProcedureAddress(_SleepConditionVariableCS, kernel32, 'SleepConditionVariableCS');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SleepConditionVariableCS]
  end;
end;

var
  _SleepConditionVariableSRW: Pointer;

function SleepConditionVariableSRW;
begin
  GetProcedureAddress(_SleepConditionVariableSRW, kernel32, 'SleepConditionVariableSRW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SleepConditionVariableSRW]
  end;
end;

var
  _WakeAllConditionVariable: Pointer;

procedure WakeAllConditionVariable;
begin
  GetProcedureAddress(_WakeAllConditionVariable, kernel32, 'WakeAllConditionVariable');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WakeAllConditionVariable]
  end;
end;

var
  _WakeConditionVariable: Pointer;

procedure WakeConditionVariable;
begin
  GetProcedureAddress(_WakeConditionVariable, kernel32, 'WakeConditionVariable');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_WakeConditionVariable]
  end;
end;

var
  _InitializeSRWLock: Pointer;

procedure InitializeSRWLock;
begin
  GetProcedureAddress(_InitializeSRWLock, kernel32, 'InitializeSRWLock');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_InitializeSRWLock]
  end;
end;

var
  _ReleaseSRWLockExclusive: Pointer;

procedure ReleaseSRWLockExclusive;
begin
  GetProcedureAddress(_ReleaseSRWLockExclusive, kernel32, 'ReleaseSRWLockExclusive');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReleaseSRWLockExclusive]
  end;
end;

var
  _ReleaseSRWLockShared: Pointer;

procedure ReleaseSRWLockShared;
begin
  GetProcedureAddress(_ReleaseSRWLockShared, kernel32, 'ReleaseSRWLockShared');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_ReleaseSRWLockShared]
  end;
end;

var
  _AcquireSRWLockExclusive: Pointer;

procedure AcquireSRWLockExclusive;
begin
  GetProcedureAddress(_AcquireSRWLockExclusive, kernel32, 'AcquireSRWLockExclusive');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AcquireSRWLockExclusive]
  end;
end;

var
  _AcquireSRWLockShared: Pointer;

procedure AcquireSRWLockShared;
begin
  GetProcedureAddress(_AcquireSRWLockShared, kernel32, 'AcquireSRWLockShared');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AcquireSRWLockShared]
  end;
end;

var
  _TryAcquireSRWLockExclusive: Pointer;

function TryAcquireSRWLockExclusive;
begin
  GetProcedureAddress(_TryAcquireSRWLockExclusive, kernel32, 'TryAcquireSRWLockExclusive');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_TryAcquireSRWLockExclusive]
  end;
end;

var
  _TryAcquireSRWLockShared: Pointer;

function TryAcquireSRWLockShared;
begin
  GetProcedureAddress(_TryAcquireSRWLockShared, kernel32, 'TryAcquireSRWLockShared');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_TryAcquireSRWLockShared]
  end;
end;


var
  _SetProcessDEPPolicy: Pointer;

function SetProcessDEPPolicy({__in}dwFlags : DWORD) : Boolean;
begin
  GetProcedureAddress(_SetProcessDEPPolicy, kernel32, 'SetProcessDEPPolicy');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetProcessDEPPolicy]
  end;
end;


var
  _GetNamedPipeSrvSId: Pointer;

function GetNamedPipeServerSessionId;
begin
  GetProcedureAddress(_GetNamedPipeSrvSId, kernel32, 'GetNamedPipeServerSessionId');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetNamedPipeSrvSId]
  end;
end;


var
  _GetNamedPipeSrvProcId: Pointer;

function GetNamedPipeServerProcessId;
begin
  GetProcedureAddress(_GetNamedPipeSrvProcId, kernel32, 'GetNamedPipeServerProcessId');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetNamedPipeSrvProcId]
  end;
end;


var
  _GetNamedPipeClProcId: Pointer;

function GetNamedPipeClientProcessId;
begin
  GetProcedureAddress(_GetNamedPipeClProcId, kernel32, 'GetNamedPipeClientProcessId');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetNamedPipeClProcId]
  end;
end;

var
  _GetNamedPipeClSId: Pointer;

function GetNamedPipeClientSessionId;
begin
  GetProcedureAddress(_GetNamedPipeClSId, kernel32, 'GetNamedPipeClientSessionId');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetNamedPipeClSId]
  end;
end;


var
  _GetNamedPipeClCompName: Pointer;

function GetNamedPipeClientComputerName;
begin
  GetProcedureAddress(_GetNamedPipeClCompName, kernel32, 'GetNamedPipeClientComputerName'+AWSuffix);
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetNamedPipeClCompName]
  end;
end;

var
  _GetNamedPipeClCompNameA: Pointer;

function GetNamedPipeClientComputerNameA;
begin
  GetProcedureAddress(_GetNamedPipeClCompNameA, kernel32, 'GetNamedPipeClientComputerNameA');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetNamedPipeClCompNameA]
  end;
end;

var
  _GetNamedPipeClCompNameW: Pointer;

function GetNamedPipeClientComputerNameW;
begin
  GetProcedureAddress(_GetNamedPipeClCompNameW, kernel32, 'GetNamedPipeClientComputerNameW');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_GetNamedPipeClCompNameW]
  end;
end;

{$ENDIF WINVISTA_UP}

{$IFDEF JWENABLE_SETSEARCHPATHMODE}
var
  _SetSearchPathMode: Pointer;

function SetSearchPathMode;
begin
  GetProcedureAddress(_SetSearchPathMode, kernel32, 'SetSearchPathMode');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_SetSearchPathMode]
  end;
end;
{$ENDIF}

{$ELSE}


function InterlockedCompareExchange64; external kernel32 name 'InterlockedCompareExchange64';
function InterlockedIncrement; external kernel32 name 'InterlockedIncrement';
function InterlockedDecrement; external kernel32 name 'InterlockedDecrement';
function InterlockedExchange; external kernel32 name 'InterlockedExchange';
function InterlockedExchangeAdd; external kernel32 name 'InterlockedExchangeAdd';
function InterlockedCompareExchange; external kernel32 name 'InterlockedCompareExchange';
procedure InitializeSListHead; external kernel32 name 'InitializeSListHead';
function InterlockedPopEntrySList; external kernel32 name 'InterlockedPopEntrySList';
function InterlockedPushEntrySList; external kernel32 name 'InterlockedPushEntrySList';
function InterlockedFlushSList; external kernel32 name 'InterlockedFlushSList';
function QueryDepthSList; external kernel32 name 'QueryDepthSList';
function FreeResource; external kernel32 name 'FreeResource';
function LockResource; external kernel32 name 'LockResource';
function FreeLibrary; external kernel32 name 'FreeLibrary';
procedure FreeLibraryAndExitThread; external kernel32 name 'FreeLibraryAndExitThread';
function DisableThreadLibraryCalls; external kernel32 name 'DisableThreadLibraryCalls';
function GetProcAddress; external kernel32 name 'GetProcAddress';
function GetVersion; external kernel32 name 'GetVersion';
function GlobalAlloc; external kernel32 name 'GlobalAlloc';
function GlobalReAlloc; external kernel32 name 'GlobalReAlloc';
function GlobalSize; external kernel32 name 'GlobalSize';
function GlobalFlags; external kernel32 name 'GlobalFlags';
function GlobalLock; external kernel32 name 'GlobalLock';
function GlobalHandle; external kernel32 name 'GlobalHandle';
function GlobalUnlock; external kernel32 name 'GlobalUnlock';
function GlobalFree; external kernel32 name 'GlobalFree';
function GlobalCompact; external kernel32 name 'GlobalCompact';
procedure GlobalFix; external kernel32 name 'GlobalFix';
procedure GlobalUnfix; external kernel32 name 'GlobalUnfix';
function GlobalWire; external kernel32 name 'GlobalWire';
function GlobalUnWire; external kernel32 name 'GlobalUnWire';
procedure GlobalMemoryStatus; external kernel32 name 'GlobalMemoryStatus';
function GlobalMemoryStatusEx; external kernel32 name 'GlobalMemoryStatusEx';
function LocalAlloc; external kernel32 name 'LocalAlloc';
function LocalReAlloc; external kernel32 name 'LocalReAlloc';
function LocalLock; external kernel32 name 'LocalLock';
function LocalHandle; external kernel32 name 'LocalHandle';
function LocalUnlock; external kernel32 name 'LocalUnlock';
function LocalSize; external kernel32 name 'LocalSize';
function LocalFlags; external kernel32 name 'LocalFlags';
function LocalFree; external kernel32 name 'LocalFree';
function LocalShrink; external kernel32 name 'LocalShrink';
function LocalCompact; external kernel32 name 'LocalCompact';
function FlushInstructionCache; external kernel32 name 'FlushInstructionCache';
function VirtualAlloc; external kernel32 name 'VirtualAlloc';
function VirtualFree; external kernel32 name 'VirtualFree';
function VirtualProtect; external kernel32 name 'VirtualProtect';
function VirtualQuery; external kernel32 name 'VirtualQuery';
function VirtualAllocEx; external kernel32 name 'VirtualAllocEx';
function GetWriteWatch; external kernel32 name 'GetWriteWatch';
function ResetWriteWatch; external kernel32 name 'ResetWriteWatch';
function GetLargePageMinimum; external kernel32 name 'GetLargePageMinimum';
function VirtualFreeEx; external kernel32 name 'VirtualFreeEx';
function VirtualProtectEx; external kernel32 name 'VirtualProtectEx';
function VirtualQueryEx; external kernel32 name 'VirtualQueryEx';
function HeapCreate; external kernel32 name 'HeapCreate';
function HeapDestroy; external kernel32 name 'HeapDestroy';
function HeapAlloc; external kernel32 name 'HeapAlloc';
function HeapReAlloc; external kernel32 name 'HeapReAlloc';
function HeapFree; external kernel32 name 'HeapFree';
function HeapSize; external kernel32 name 'HeapSize';
function HeapValidate; external kernel32 name 'HeapValidate';
function HeapCompact; external kernel32 name 'HeapCompact';
function GetProcessHeap; external kernel32 name 'GetProcessHeap';
function GetProcessHeaps; external kernel32 name 'GetProcessHeaps';
function HeapLock; external kernel32 name 'HeapLock';
function HeapUnlock; external kernel32 name 'HeapUnlock';
function HeapWalk; external kernel32 name 'HeapWalk';
function HeapSetInformation; external kernel32 name 'HeapSetInformation';
function HeapQueryInformation; external kernel32 name 'HeapQueryInformation';
function GetBinaryTypeA; external kernel32 name 'GetBinaryTypeA';
function GetBinaryTypeW; external kernel32 name 'GetBinaryTypeW';
function GetBinaryType; external kernel32 name 'GetBinaryType' + AWSuffix;
function GetShortPathNameA; external kernel32 name 'GetShortPathNameA';
function GetShortPathNameW; external kernel32 name 'GetShortPathNameW';
function GetShortPathName; external kernel32 name 'GetShortPathName' + AWSuffix;
function GetLongPathNameA; external kernel32 name 'GetLongPathNameA';
function GetLongPathNameW; external kernel32 name 'GetLongPathNameW';
function GetLongPathName; external kernel32 name 'GetLongPathName' + AWSuffix;
function GetProcessAffinityMask; external kernel32 name 'GetProcessAffinityMask';
function SetProcessAffinityMask; external kernel32 name 'SetProcessAffinityMask';
function GetProcessHandleCount; external kernel32 name 'GetProcessHandleCount';
function GetProcessTimes; external kernel32 name 'GetProcessTimes';
function GetProcessIoCounters; external kernel32 name 'GetProcessIoCounters';
function GetProcessWorkingSetSize; external kernel32 name 'GetProcessWorkingSetSize';
function GetProcessWorkingSetSizeEx; external kernel32 name 'GetProcessWorkingSetSizeEx';
function SetProcessWorkingSetSize; external kernel32 name 'SetProcessWorkingSetSize';
function SetProcessWorkingSetSizeEx; external kernel32 name 'SetProcessWorkingSetSizeEx';
function OpenProcess; external kernel32 name 'OpenProcess';
function GetCurrentProcess; external kernel32 name 'GetCurrentProcess';
function GetCurrentProcessId; external kernel32 name 'GetCurrentProcessId';
procedure ExitProcess; external kernel32 name 'ExitProcess';
function TerminateProcess; external kernel32 name 'TerminateProcess';
function GetExitCodeProcess; external kernel32 name 'GetExitCodeProcess';
procedure FatalExit; external kernel32 name 'FatalExit';
function GetEnvironmentStringsW; external kernel32 name 'GetEnvironmentStringsW';
function GetEnvironmentStrings; external kernel32 name 'GetEnvironmentStrings' + AWSuffix;
function GetEnvironmentStringsA; external kernel32 name 'GetEnvironmentStringsA';

{$IFDEF WIN2003_UP}
function SetEnvironmentStringsA; external kernel32 name 'SetEnvironmentStringsA';
function SetEnvironmentStringsW; external kernel32 name 'SetEnvironmentStringsW';
function SetEnvironmentStrings; external kernel32 name 'SetEnvironmentStrings' + AWSuffix;
{$ENDIF WIN2003_UP}

function FreeEnvironmentStringsA; external kernel32 name 'FreeEnvironmentStringsA';
function FreeEnvironmentStringsW; external kernel32 name 'FreeEnvironmentStringsW';
function FreeEnvironmentStrings; external kernel32 name 'FreeEnvironmentStrings' + AWSuffix;
procedure RaiseException; external kernel32 name 'RaiseException';
function UnhandledExceptionFilter; external kernel32 name 'UnhandledExceptionFilter';
function SetUnhandledExceptionFilter; external kernel32 name 'SetUnhandledExceptionFilter';
function CreateFiber; external kernel32 name 'CreateFiber';
function CreateFiberEx; external kernel32 name 'CreateFiberEx';
procedure DeleteFiber; external kernel32 name 'DeleteFiber';
function ConvertThreadToFiber; external kernel32 name 'ConvertThreadToFiber';
function ConvertThreadToFiberEx; external kernel32 name 'ConvertThreadToFiberEx';
function ConvertFiberToThread; external kernel32 name 'ConvertFiberToThread';
procedure SwitchToFiber; external kernel32 name 'SwitchToFiber';
function SwitchToThread; external kernel32 name 'SwitchToThread';
function CreateThread; external kernel32 name 'CreateThread';
function CreateRemoteThread; external kernel32 name 'CreateRemoteThread';
function GetCurrentThread; external kernel32 name 'GetCurrentThread';
function GetCurrentThreadId; external kernel32 name 'GetCurrentThreadId';
function GetProcessIdOfThread; external kernel32 name 'GetProcessIdOfThread';
function GetThreadId; external kernel32 name 'GetThreadId';
function GetProcessId; external kernel32 name 'GetProcessId';
function GetCurrentProcessorNumber; external kernel32 name 'GetCurrentProcessorNumber';
function SetThreadAffinityMask; external kernel32 name 'SetThreadAffinityMask';
function SetThreadIdealProcessor; external kernel32 name 'SetThreadIdealProcessor';
function SetProcessPriorityBoost; external kernel32 name 'SetProcessPriorityBoost';
function GetProcessPriorityBoost; external kernel32 name 'GetProcessPriorityBoost';
function RequestWakeupLatency; external kernel32 name 'RequestWakeupLatency';
function IsSystemResumeAutomatic; external kernel32 name 'IsSystemResumeAutomatic';
function OpenThread; external kernel32 name 'OpenThread';
function SetThreadPriority; external kernel32 name 'SetThreadPriority';
function SetThreadPriorityBoost; external kernel32 name 'SetThreadPriorityBoost';
function GetThreadPriorityBoost; external kernel32 name 'GetThreadPriorityBoost';
function GetThreadPriority; external kernel32 name 'GetThreadPriority';
function GetThreadTimes; external kernel32 name 'GetThreadTimes';
function GetThreadIOPendingFlag; external kernel32 name 'GetThreadIOPendingFlag';
procedure ExitThread; external kernel32 name 'ExitThread';
function TerminateThread; external kernel32 name 'TerminateThread';
function GetExitCodeThread; external kernel32 name 'GetExitCodeThread';
function GetThreadSelectorEntry; external kernel32 name 'GetThreadSelectorEntry';
function SetThreadExecutionState; external kernel32 name 'SetThreadExecutionState';
function GetLastError; external kernel32 name 'GetLastError';
procedure SetLastError; external kernel32 name 'SetLastError';
procedure RestoreLastError; external kernel32 name 'RestoreLastError';
function GetOverlappedResult; external kernel32 name 'GetOverlappedResult';
function CreateIoCompletionPort; external kernel32 name 'CreateIoCompletionPort';
function GetQueuedCompletionStatus; external kernel32 name 'GetQueuedCompletionStatus';
function PostQueuedCompletionStatus; external kernel32 name 'PostQueuedCompletionStatus';
function SetErrorMode; external kernel32 name 'SetErrorMode';
function ReadProcessMemory; external kernel32 name 'ReadProcessMemory';
function WriteProcessMemory; external kernel32 name 'WriteProcessMemory';
function GetThreadContext; external kernel32 name 'GetThreadContext';
function SetThreadContext; external kernel32 name 'SetThreadContext';
function SuspendThread; external kernel32 name 'SuspendThread';
function ResumeThread; external kernel32 name 'ResumeThread';
function QueueUserAPC; external kernel32 name 'QueueUserAPC';
function IsDebuggerPresent; external kernel32 name 'IsDebuggerPresent';
function CheckRemoteDebuggerPresent; external kernel32 name 'CheckRemoteDebuggerPresent';
procedure DebugBreak; external kernel32 name 'DebugBreak';
function WaitForDebugEvent; external kernel32 name 'WaitForDebugEvent';
function ContinueDebugEvent; external kernel32 name 'ContinueDebugEvent';
function DebugActiveProcess; external kernel32 name 'DebugActiveProcess';
function DebugActiveProcessStop; external kernel32 name 'DebugActiveProcessStop';
function DebugSetProcessKillOnExit; external kernel32 name 'DebugSetProcessKillOnExit';
function DebugBreakProcess; external kernel32 name 'DebugBreakProcess';
procedure InitializeCriticalSection; external kernel32 name 'InitializeCriticalSection';
procedure EnterCriticalSection; external kernel32 name 'EnterCriticalSection';
procedure LeaveCriticalSection; external kernel32 name 'LeaveCriticalSection';
function InitializeCriticalSectionAndSpinCount; external kernel32 name 'InitializeCriticalSectionAndSpinCount';
function SetCriticalSectionSpinCount; external kernel32 name 'SetCriticalSectionSpinCount';
function TryEnterCriticalSection; external kernel32 name 'TryEnterCriticalSection';
procedure DeleteCriticalSection; external kernel32 name 'DeleteCriticalSection';
function SetEvent; external kernel32 name 'SetEvent';
function ResetEvent; external kernel32 name 'ResetEvent';
function PulseEvent; external kernel32 name 'PulseEvent';
function ReleaseSemaphore; external kernel32 name 'ReleaseSemaphore';
function ReleaseMutex; external kernel32 name 'ReleaseMutex';
function WaitForSingleObject; external kernel32 name 'WaitForSingleObject';
function WaitForMultipleObjects; external kernel32 name 'WaitForMultipleObjects';
procedure Sleep; external kernel32 name 'Sleep';
function LoadResource; external kernel32 name 'LoadResource';
function SizeofResource; external kernel32 name 'SizeofResource';
function GlobalDeleteAtom; external kernel32 name 'GlobalDeleteAtom';
function InitAtomTable; external kernel32 name 'InitAtomTable';
function DeleteAtom; external kernel32 name 'DeleteAtom';
function SetHandleCount; external kernel32 name 'SetHandleCount';
function GetLogicalDrives; external kernel32 name 'GetLogicalDrives';
function LockFile; external kernel32 name 'LockFile';
function UnlockFile; external kernel32 name 'UnlockFile';
function LockFileEx; external kernel32 name 'LockFileEx';
function UnlockFileEx; external kernel32 name 'UnlockFileEx';
function GetFileInformationByHandle; external kernel32 name 'GetFileInformationByHandle';
function GetFileType; external kernel32 name 'GetFileType';
function GetFileSize; external kernel32 name 'GetFileSize';
function GetFileSizeEx; external kernel32 name 'GetFileSizeEx';
function GetStdHandle; external kernel32 name 'GetStdHandle';
function SetStdHandle; external kernel32 name 'SetStdHandle';
function WriteFile; external kernel32 name 'WriteFile';
function ReadFile; external kernel32 name 'ReadFile';
function FlushFileBuffers; external kernel32 name 'FlushFileBuffers';
function DeviceIoControl; external kernel32 name 'DeviceIoControl';
function RequestDeviceWakeup; external kernel32 name 'RequestDeviceWakeup';
function CancelDeviceWakeupRequest; external kernel32 name 'CancelDeviceWakeupRequest';
function GetDevicePowerState; external kernel32 name 'GetDevicePowerState';
function SetMessageWaitingIndicator; external kernel32 name 'SetMessageWaitingIndicator';
function SetEndOfFile; external kernel32 name 'SetEndOfFile';
function SetFilePointer; external kernel32 name 'SetFilePointer';
function SetFilePointerEx; external kernel32 name 'SetFilePointerEx';
function FindClose; external kernel32 name 'FindClose';
function GetFileTime; external kernel32 name 'GetFileTime';
function SetFileTime; external kernel32 name 'SetFileTime';
function SetFileValidData; external kernel32 name 'SetFileValidData';
function SetFileShortNameA; external kernel32 name 'SetFileShortNameA';
function SetFileShortNameW; external kernel32 name 'SetFileShortNameW';
function SetFileShortName; external kernel32 name 'SetFileShortName' + AWSuffix;
function CloseHandle; external kernel32 name 'CloseHandle';
function DuplicateHandle; external kernel32 name 'DuplicateHandle';
function GetHandleInformation; external kernel32 name 'GetHandleInformation';
function SetHandleInformation; external kernel32 name 'SetHandleInformation';
function LoadModule; external kernel32 name 'LoadModule';
function WinExec; external kernel32 name 'WinExec';
function ClearCommBreak; external kernel32 name 'ClearCommBreak';
function ClearCommError; external kernel32 name 'ClearCommError';
function SetupComm; external kernel32 name 'SetupComm';
function EscapeCommFunction; external kernel32 name 'EscapeCommFunction';
function GetCommConfig; external kernel32 name 'GetCommConfig';
function GetCommMask; external kernel32 name 'GetCommMask';
function GetCommProperties; external kernel32 name 'GetCommProperties';
function GetCommModemStatus; external kernel32 name 'GetCommModemStatus';
function GetCommState; external kernel32 name 'GetCommState';
function GetCommTimeouts; external kernel32 name 'GetCommTimeouts';
function PurgeComm; external kernel32 name 'PurgeComm';
function SetCommBreak; external kernel32 name 'SetCommBreak';
function SetCommConfig; external kernel32 name 'SetCommConfig';
function SetCommMask; external kernel32 name 'SetCommMask';
function SetCommState; external kernel32 name 'SetCommState';
function SetCommTimeouts; external kernel32 name 'SetCommTimeouts';
function TransmitCommChar; external kernel32 name 'TransmitCommChar';
function WaitCommEvent; external kernel32 name 'WaitCommEvent';
function SetTapePosition; external kernel32 name 'SetTapePosition';
function GetTapePosition; external kernel32 name 'GetTapePosition';
function PrepareTape; external kernel32 name 'PrepareTape';
function EraseTape; external kernel32 name 'EraseTape';
function CreateTapePartition; external kernel32 name 'CreateTapePartition';
function WriteTapemark; external kernel32 name 'WriteTapemark';
function GetTapeStatus; external kernel32 name 'GetTapeStatus';
function GetTapeParameters; external kernel32 name 'GetTapeParameters';
function SetTapeParameters; external kernel32 name 'SetTapeParameters';
function Beep; external kernel32 name 'Beep';
function MulDiv; external kernel32 name 'MulDiv';
procedure GetSystemTime; external kernel32 name 'GetSystemTime';
procedure GetSystemTimeAsFileTime; external kernel32 name 'GetSystemTimeAsFileTime';
function SetSystemTime; external kernel32 name 'SetSystemTime';
procedure GetLocalTime; external kernel32 name 'GetLocalTime';
function SetLocalTime; external kernel32 name 'SetLocalTime';
procedure GetSystemInfo; external kernel32 name 'GetSystemInfo';
function GetSystemRegistryQuota; external kernel32 name 'GetSystemRegistryQuota';
function GetSystemTimes; external kernel32 name 'GetSystemTimes';
procedure GetNativeSystemInfo; external kernel32 name 'GetNativeSystemInfo';
function IsProcessorFeaturePresent; external kernel32 name 'IsProcessorFeaturePresent';
function SystemTimeToTzSpecificLocalTime; external kernel32 name 'SystemTimeToTzSpecificLocalTime';
function TzSpecificLocalTimeToSystemTime; external kernel32 name 'TzSpecificLocalTimeToSystemTime';
function GetTimeZoneInformation; external kernel32 name 'GetTimeZoneInformation';
function SetTimeZoneInformation; external kernel32 name 'SetTimeZoneInformation';
function SystemTimeToFileTime; external kernel32 name 'SystemTimeToFileTime';
function FileTimeToLocalFileTime; external kernel32 name 'FileTimeToLocalFileTime';
function LocalFileTimeToFileTime; external kernel32 name 'LocalFileTimeToFileTime';
function FileTimeToSystemTime; external kernel32 name 'FileTimeToSystemTime';
function CompareFileTime; external kernel32 name 'CompareFileTime';
function FileTimeToDosDateTime; external kernel32 name 'FileTimeToDosDateTime';
function DosDateTimeToFileTime; external kernel32 name 'DosDateTimeToFileTime';
function GetTickCount; external kernel32 name 'GetTickCount';
function SetSystemTimeAdjustment; external kernel32 name 'SetSystemTimeAdjustment';
function GetSystemTimeAdjustment; external kernel32 name 'GetSystemTimeAdjustment';
function FormatMessageA; external kernel32 name 'FormatMessageA';
function FormatMessageW; external kernel32 name 'FormatMessageW';
function FormatMessage; external kernel32 name 'FormatMessage' + AWSuffix;
function CreatePipe; external kernel32 name 'CreatePipe';
function ConnectNamedPipe; external kernel32 name 'ConnectNamedPipe';
function DisconnectNamedPipe; external kernel32 name 'DisconnectNamedPipe';
function SetNamedPipeHandleState; external kernel32 name 'SetNamedPipeHandleState';
function GetNamedPipeInfo; external kernel32 name 'GetNamedPipeInfo';
function PeekNamedPipe; external kernel32 name 'PeekNamedPipe';
function TransactNamedPipe; external kernel32 name 'TransactNamedPipe';
function CreateMailslotA; external kernel32 name 'CreateMailslotA';
function CreateMailslotW; external kernel32 name 'CreateMailslotW';
function CreateMailslot; external kernel32 name 'CreateMailslot' + AWSuffix;
function GetMailslotInfo; external kernel32 name 'GetMailslotInfo';
function SetMailslotInfo; external kernel32 name 'SetMailslotInfo';
function MapViewOfFile; external kernel32 name 'MapViewOfFile';
function FlushViewOfFile; external kernel32 name 'FlushViewOfFile';
function UnmapViewOfFile; external kernel32 name 'UnmapViewOfFile';
function EncryptFileA; external advapi32 name 'EncryptFileA';
function EncryptFileW; external advapi32 name 'EncryptFileW';
function EncryptFile; external advapi32 name 'EncryptFile' + AWSuffix;
function DecryptFileA; external advapi32 name 'DecryptFileA';
function DecryptFileW; external advapi32 name 'DecryptFileW';
function DecryptFile; external advapi32 name 'DecryptFile' + AWSuffix;
function FileEncryptionStatusA; external advapi32 name 'FileEncryptionStatusA';
function FileEncryptionStatusW; external advapi32 name 'FileEncryptionStatusW';
function FileEncryptionStatus; external advapi32 name 'FileEncryptionStatus' + AWSuffix;
function OpenEncryptedFileRawA; external advapi32 name 'OpenEncryptedFileRawA';
function OpenEncryptedFileRawW; external advapi32 name 'OpenEncryptedFileRawW';
function OpenEncryptedFileRaw; external advapi32 name 'OpenEncryptedFileRaw' + AWSuffix;
function ReadEncryptedFileRaw; external advapi32 name 'ReadEncryptedFileRaw';
function WriteEncryptedFileRaw; external advapi32 name 'WriteEncryptedFileRaw';
procedure CloseEncryptedFileRaw; external advapi32 name 'CloseEncryptedFileRaw';
function lstrcmpA; external kernel32 name 'lstrcmpA';
function lstrcmpW; external kernel32 name 'lstrcmpW';
function lstrcmp; external kernel32 name 'lstrcmp' + AWSuffix;
function lstrcmpiA; external kernel32 name 'lstrcmpiA';
function lstrcmpiW; external kernel32 name 'lstrcmpiW';
function lstrcmpi; external kernel32 name 'lstrcmpi' + AWSuffix;
function lstrcpynA; external kernel32 name 'lstrcpynA';
function lstrcpynW; external kernel32 name 'lstrcpynW';
function lstrcpyn; external kernel32 name 'lstrcpyn' + AWSuffix;
function lstrcpyA; external kernel32 name 'lstrcpyA';
function lstrcpyW; external kernel32 name 'lstrcpyW';
function lstrcpy; external kernel32 name 'lstrcpy' + AWSuffix;
function lstrcatA; external kernel32 name 'lstrcatA';
function lstrcatW; external kernel32 name 'lstrcatW';
function lstrcat; external kernel32 name 'lstrcat' + AWSuffix;
function lstrlenA; external kernel32 name 'lstrlenA';
function lstrlenW; external kernel32 name 'lstrlenW';
function lstrlen; external kernel32 name 'lstrlen' + AWSuffix;
function OpenFile; external kernel32 name 'OpenFile';
function _lopen; external kernel32 name '_lopen';
function _lcreat; external kernel32 name '_lcreat';
function _lread; external kernel32 name '_lread';
function _lwrite; external kernel32 name '_lwrite';
function _hread; external kernel32 name '_hread';
function _hwrite; external kernel32 name '_hwrite';
function _lclose; external kernel32 name '_lclose';
function _llseek; external kernel32 name '_llseek';
function IsTextUnicode; external advapi32 name 'IsTextUnicode';
function FlsAlloc; external kernel32 name 'FlsAlloc';
function FlsGetValue; external kernel32 name 'FlsGetValue';
function FlsSetValue; external kernel32 name 'FlsSetValue';
function FlsFree; external kernel32 name 'FlsFree';
function TlsAlloc; external kernel32 name 'TlsAlloc';
function TlsGetValue; external kernel32 name 'TlsGetValue';
function TlsSetValue; external kernel32 name 'TlsSetValue';
function TlsFree; external kernel32 name 'TlsFree';
function SleepEx; external kernel32 name 'SleepEx';
function WaitForSingleObjectEx; external kernel32 name 'WaitForSingleObjectEx';
function WaitForMultipleObjectsEx; external kernel32 name 'WaitForMultipleObjectsEx';
function SignalObjectAndWait; external kernel32 name 'SignalObjectAndWait';
function ReadFileEx; external kernel32 name 'ReadFileEx';
function WriteFileEx; external kernel32 name 'WriteFileEx';
function BackupRead; external kernel32 name 'BackupRead';
function BackupSeek; external kernel32 name 'BackupSeek';
function BackupWrite; external kernel32 name 'BackupWrite';
function ReadFileScatter; external kernel32 name 'ReadFileScatter';
function WriteFileGather; external kernel32 name 'WriteFileGather';
function OpenMutexA; external kernel32 name 'OpenMutexA';
function OpenMutexW; external kernel32 name 'OpenMutexW';
function OpenMutex; external kernel32 name 'OpenMutex' + AWSuffix;
function CreateEventA; external kernel32 name 'CreateEventA';
function CreateEventW; external kernel32 name 'CreateEventW';
function CreateEvent; external kernel32 name 'CreateEvent' + AWSuffix;
function OpenEventA; external kernel32 name 'OpenEventA';
function OpenEventW; external kernel32 name 'OpenEventW';
function OpenEvent; external kernel32 name 'OpenEvent' + AWSuffix;
function CreateSemaphoreA; external kernel32 name 'CreateSemaphoreA';
function CreateSemaphoreW; external kernel32 name 'CreateSemaphoreW';
function CreateSemaphore; external kernel32 name 'CreateSemaphore' + AWSuffix;
function OpenSemaphoreA; external kernel32 name 'OpenSemaphoreA';
function OpenSemaphoreW; external kernel32 name 'OpenSemaphoreW';
function OpenSemaphore; external kernel32 name 'OpenSemaphore' + AWSuffix;
function CreateWaitableTimerA; external kernel32 name 'CreateWaitableTimerA';
function CreateWaitableTimerW; external kernel32 name 'CreateWaitableTimerW';
function CreateWaitableTimer; external kernel32 name 'CreateWaitableTimer' + AWSuffix;
function OpenWaitableTimerA; external kernel32 name 'OpenWaitableTimerA';
function OpenWaitableTimerW; external kernel32 name 'OpenWaitableTimerW';
function OpenWaitableTimer; external kernel32 name 'OpenWaitableTimer' + AWSuffix;
function SetWaitableTimer; external kernel32 name 'SetWaitableTimer';
function CancelWaitableTimer; external kernel32 name 'CancelWaitableTimer';
function CreateFileMappingA; external kernel32 name 'CreateFileMappingA';
function CreateFileMappingW; external kernel32 name 'CreateFileMappingW';
function CreateFileMapping; external kernel32 name 'CreateFileMapping' + AWSuffix;
function OpenFileMappingA; external kernel32 name 'OpenFileMappingA';
function OpenFileMappingW; external kernel32 name 'OpenFileMappingW';
function OpenFileMapping; external kernel32 name 'OpenFileMapping' + AWSuffix;
function GetLogicalDriveStringsA; external kernel32 name 'GetLogicalDriveStringsA';
function GetLogicalDriveStringsW; external kernel32 name 'GetLogicalDriveStringsW';
function GetLogicalDriveStrings; external kernel32 name 'GetLogicalDriveStrings' + AWSuffix;
function CreateMemoryResourceNotification; external kernel32 name 'CreateMemoryResourceNotification';
function QueryMemoryResourceNotification; external kernel32 name 'QueryMemoryResourceNotification';
function LoadLibraryA; external kernel32 name 'LoadLibraryA';
function LoadLibraryW; external kernel32 name 'LoadLibraryW';
function LoadLibrary; external kernel32 name 'LoadLibrary' + AWSuffix;
function LoadLibraryExA; external kernel32 name 'LoadLibraryExA';
function LoadLibraryExW; external kernel32 name 'LoadLibraryExW';
function LoadLibraryEx; external kernel32 name 'LoadLibraryEx' + AWSuffix;
function GetModuleFileNameA; external kernel32 name 'GetModuleFileNameA';
function GetModuleFileNameW; external kernel32 name 'GetModuleFileNameW';
function GetModuleFileName; external kernel32 name 'GetModuleFileName' + AWSuffix;
function GetModuleHandleA; external kernel32 name 'GetModuleHandleA';
function GetModuleHandleW; external kernel32 name 'GetModuleHandleW';
function GetModuleHandle; external kernel32 name 'GetModuleHandle' + AWSuffix;
function InitializeProcThreadAttributeList; external kernel32 name 'InitializeProcThreadAttributeList';
procedure DeleteProcThreadAttributeList; external kernel32 name 'DeleteProcThreadAttributeList';
function UpdateProcThreadAttribute; external kernel32 name 'UpdateProcThreadAttribute';
function CreateProcessA; external kernel32 name 'CreateProcessA';
function CreateProcessW; external kernel32 name 'CreateProcessW';
function CreateProcess; external kernel32 name 'CreateProcess' + AWSuffix;
function GetModuleHandleExA; external kernel32 name 'GetModuleHandleExA';
function GetModuleHandleExW; external kernel32 name 'GetModuleHandleExW';
function GetModuleHandleEx; external kernel32 name 'GetModuleHandleEx' + AWSuffix;
function NeedCurrentDirectoryForExePathA; external kernel32 name 'NeedCurrentDirectoryForExePathA';
function NeedCurrentDirectoryForExePathW; external kernel32 name 'NeedCurrentDirectoryForExePathW';
function NeedCurrentDirectoryForExePath; external kernel32 name 'NeedCurrentDirectoryForExePath' + AWSuffix;
function SetProcessShutdownParameters; external kernel32 name 'SetProcessShutdownParameters';
function GetProcessShutdownParameters; external kernel32 name 'GetProcessShutdownParameters';
function GetProcessVersion; external kernel32 name 'GetProcessVersion';
procedure FatalAppExitA; external kernel32 name 'FatalAppExitA';
procedure FatalAppExitW; external kernel32 name 'FatalAppExitW';
procedure FatalAppExit; external kernel32 name 'FatalAppExit' + AWSuffix;
procedure GetStartupInfoA; external kernel32 name 'GetStartupInfoA';
procedure GetStartupInfoW; external kernel32 name 'GetStartupInfoW';
procedure GetStartupInfo; external kernel32 name 'GetStartupInfo' + AWSuffix;
function GetCommandLineA; external kernel32 name 'GetCommandLineA';
function GetCommandLineW; external kernel32 name 'GetCommandLineW';
function GetCommandLine; external kernel32 name 'GetCommandLine' + AWSuffix;
function GetEnvironmentVariableA; external kernel32 name 'GetEnvironmentVariableA';
function GetEnvironmentVariableW; external kernel32 name 'GetEnvironmentVariableW';
function GetEnvironmentVariable; external kernel32 name 'GetEnvironmentVariable' + AWSuffix;
function SetEnvironmentVariableA; external kernel32 name 'SetEnvironmentVariableA';
function SetEnvironmentVariableW; external kernel32 name 'SetEnvironmentVariableW';
function SetEnvironmentVariable; external kernel32 name 'SetEnvironmentVariable' + AWSuffix;
function ExpandEnvironmentStringsA; external kernel32 name 'ExpandEnvironmentStringsA';
function ExpandEnvironmentStringsW; external kernel32 name 'ExpandEnvironmentStringsW';
function ExpandEnvironmentStrings; external kernel32 name 'ExpandEnvironmentStrings' + AWSuffix;
function GetFirmwareEnvironmentVariableA; external kernel32 name 'GetFirmwareEnvironmentVariableA';
function GetFirmwareEnvironmentVariableW; external kernel32 name 'GetFirmwareEnvironmentVariableW';
function GetFirmwareEnvironmentVariable; external kernel32 name 'GetFirmwareEnvironmentVariable' + AWSuffix;
function SetFirmwareEnvironmentVariableA; external kernel32 name 'SetFirmwareEnvironmentVariableA';
function SetFirmwareEnvironmentVariableW; external kernel32 name 'SetFirmwareEnvironmentVariableW';
function SetFirmwareEnvironmentVariable; external kernel32 name 'SetFirmwareEnvironmentVariable' + AWSuffix;
procedure OutputDebugStringA; external kernel32 name 'OutputDebugStringA';
procedure OutputDebugStringW; external kernel32 name 'OutputDebugStringW';
procedure OutputDebugString; external kernel32 name 'OutputDebugString' + AWSuffix;
function FindResourceA; external kernel32 name 'FindResourceA';
function FindResourceW; external kernel32 name 'FindResourceW';
function FindResource; external kernel32 name 'FindResource' + AWSuffix;
function FindResourceExA; external kernel32 name 'FindResourceExA';
function FindResourceExW; external kernel32 name 'FindResourceExW';
function FindResourceEx; external kernel32 name 'FindResourceEx' + AWSuffix;
function EnumResourceTypesA; external kernel32 name 'EnumResourceTypesA';
function EnumResourceTypesW; external kernel32 name 'EnumResourceTypesW';
function EnumResourceTypes; external kernel32 name 'EnumResourceTypes' + AWSuffix;
function EnumResourceNamesA; external kernel32 name 'EnumResourceNamesA';
function EnumResourceNamesW; external kernel32 name 'EnumResourceNamesW';
function EnumResourceNames; external kernel32 name 'EnumResourceNames' + AWSuffix;
function EnumResourceLanguagesA; external kernel32 name 'EnumResourceLanguagesA';
function EnumResourceLanguagesW; external kernel32 name 'EnumResourceLanguagesW';
function EnumResourceLanguages; external kernel32 name 'EnumResourceLanguages' + AWSuffix;
function BeginUpdateResourceA; external kernel32 name 'BeginUpdateResourceA';
function BeginUpdateResourceW; external kernel32 name 'BeginUpdateResourceW';
function BeginUpdateResource; external kernel32 name 'BeginUpdateResource' + AWSuffix;
function UpdateResourceA; external kernel32 name 'UpdateResourceA';
function UpdateResourceW; external kernel32 name 'UpdateResourceW';
function UpdateResource; external kernel32 name 'UpdateResource' + AWSuffix;
function EndUpdateResourceA; external kernel32 name 'EndUpdateResourceA';
function EndUpdateResourceW; external kernel32 name 'EndUpdateResourceW';
function EndUpdateResource; external kernel32 name 'EndUpdateResource' + AWSuffix;
function GlobalAddAtomA; external kernel32 name 'GlobalAddAtomA';
function GlobalAddAtomW; external kernel32 name 'GlobalAddAtomW';
function GlobalAddAtom; external kernel32 name 'GlobalAddAtom' + AWSuffix;
function GlobalFindAtomA; external kernel32 name 'GlobalFindAtomA';
function GlobalFindAtomW; external kernel32 name 'GlobalFindAtomW';
function GlobalFindAtom; external kernel32 name 'GlobalFindAtom' + AWSuffix;
function GlobalGetAtomNameA; external kernel32 name 'GlobalGetAtomNameA';
function GlobalGetAtomNameW; external kernel32 name 'GlobalGetAtomNameW';
function GlobalGetAtomName; external kernel32 name 'GlobalGetAtomName' + AWSuffix;
function AddAtomA; external kernel32 name 'AddAtomA';
function AddAtomW; external kernel32 name 'AddAtomW';
function AddAtom; external kernel32 name 'AddAtom' + AWSuffix;
function FindAtomA; external kernel32 name 'FindAtomA';
function FindAtomW; external kernel32 name 'FindAtomW';
function FindAtom; external kernel32 name 'FindAtom' + AWSuffix;
function GetAtomNameA; external kernel32 name 'GetAtomNameA';
function GetAtomNameW; external kernel32 name 'GetAtomNameW';
function GetAtomName; external kernel32 name 'GetAtomName' + AWSuffix;
function GetProfileIntA; external kernel32 name 'GetProfileIntA';
function GetProfileIntW; external kernel32 name 'GetProfileIntW';
function GetProfileInt; external kernel32 name 'GetProfileInt' + AWSuffix;
function GetProfileStringA; external kernel32 name 'GetProfileStringA';
function GetProfileStringW; external kernel32 name 'GetProfileStringW';
function GetProfileString; external kernel32 name 'GetProfileString' + AWSuffix;
function WriteProfileStringA; external kernel32 name 'WriteProfileStringA';
function WriteProfileStringW; external kernel32 name 'WriteProfileStringW';
function WriteProfileString; external kernel32 name 'WriteProfileString' + AWSuffix;
function GetProfileSectionA; external kernel32 name 'GetProfileSectionA';
function GetProfileSectionW; external kernel32 name 'GetProfileSectionW';
function GetProfileSection; external kernel32 name 'GetProfileSection' + AWSuffix;
function WriteProfileSectionA; external kernel32 name 'WriteProfileSectionA';
function WriteProfileSectionW; external kernel32 name 'WriteProfileSectionW';
function WriteProfileSection; external kernel32 name 'WriteProfileSection' + AWSuffix;
function GetPrivateProfileIntA; external kernel32 name 'GetPrivateProfileIntA';
function GetPrivateProfileIntW; external kernel32 name 'GetPrivateProfileIntW';
function GetPrivateProfileInt; external kernel32 name 'GetPrivateProfileInt' + AWSuffix;
function GetPrivateProfileStringA; external kernel32 name 'GetPrivateProfileStringA';
function GetPrivateProfileStringW; external kernel32 name 'GetPrivateProfileStringW';
function GetPrivateProfileString; external kernel32 name 'GetPrivateProfileString' + AWSuffix;
function WritePrivateProfileStringA; external kernel32 name 'WritePrivateProfileStringA';
function WritePrivateProfileStringW; external kernel32 name 'WritePrivateProfileStringW';
function WritePrivateProfileString; external kernel32 name 'WritePrivateProfileString' + AWSuffix;
function GetPrivateProfileSectionA; external kernel32 name 'GetPrivateProfileSectionA';
function GetPrivateProfileSectionW; external kernel32 name 'GetPrivateProfileSectionW';
function GetPrivateProfileSection; external kernel32 name 'GetPrivateProfileSection' + AWSuffix;
function WritePrivateProfileSectionA; external kernel32 name 'WritePrivateProfileSectionA';
function WritePrivateProfileSectionW; external kernel32 name 'WritePrivateProfileSectionW';
function WritePrivateProfileSection; external kernel32 name 'WritePrivateProfileSection' + AWSuffix;
function GetPrivateProfileSectionNamesA; external kernel32 name 'GetPrivateProfileSectionNamesA';
function GetPrivateProfileSectionNamesW; external kernel32 name 'GetPrivateProfileSectionNamesW';
function GetPrivateProfileSectionNames; external kernel32 name 'GetPrivateProfileSectionNames' + AWSuffix;
function GetPrivateProfileStructA; external kernel32 name 'GetPrivateProfileStructA';
function GetPrivateProfileStructW; external kernel32 name 'GetPrivateProfileStructW';
function GetPrivateProfileStruct; external kernel32 name 'GetPrivateProfileStruct' + AWSuffix;
function WritePrivateProfileStructA; external kernel32 name 'WritePrivateProfileStructA';
function WritePrivateProfileStructW; external kernel32 name 'WritePrivateProfileStructW';
function WritePrivateProfileStruct; external kernel32 name 'WritePrivateProfileStruct' + AWSuffix;
function GetDriveTypeA; external kernel32 name 'GetDriveTypeA';
function GetDriveTypeW; external kernel32 name 'GetDriveTypeW';
function GetDriveType; external kernel32 name 'GetDriveType' + AWSuffix;
function GetSystemDirectoryA; external kernel32 name 'GetSystemDirectoryA';
function GetSystemDirectoryW; external kernel32 name 'GetSystemDirectoryW';
function GetSystemDirectory; external kernel32 name 'GetSystemDirectory' + AWSuffix;
function GetTempPathA; external kernel32 name 'GetTempPathA';
function GetTempPathW; external kernel32 name 'GetTempPathW';
function GetTempPath; external kernel32 name 'GetTempPath' + AWSuffix;
function GetTempFileNameA; external kernel32 name 'GetTempFileNameA';
function GetTempFileNameW; external kernel32 name 'GetTempFileNameW';
function GetTempFileName; external kernel32 name 'GetTempFileName' + AWSuffix;
function GetWindowsDirectoryA; external kernel32 name 'GetWindowsDirectoryA';
function GetWindowsDirectoryW; external kernel32 name 'GetWindowsDirectoryW';
function GetWindowsDirectory; external kernel32 name 'GetWindowsDirectory' + AWSuffix;
function GetSystemWindowsDirectoryA; external kernel32 name 'GetSystemWindowsDirectoryA';
function GetSystemWindowsDirectoryW; external kernel32 name 'GetSystemWindowsDirectoryW';
function GetSystemWindowsDirectory; external kernel32 name 'GetSystemWindowsDirectory' + AWSuffix;
function GetSystemWow64DirectoryA; external kernel32 name 'GetSystemWow64DirectoryA';
function GetSystemWow64DirectoryW; external kernel32 name 'GetSystemWow64DirectoryW';
function GetSystemWow64Directory; external kernel32 name 'GetSystemWow64Directory' + AWSuffix;
function Wow64EnableWow64FsRedirection; external kernel32 name 'Wow64EnableWow64FsRedirection';
function Wow64DisableWow64FsRedirection; external kernel32 name 'Wow64DisableWow64FsRedirection';
function Wow64RevertWow64FsRedirection; external kernel32 name 'Wow64RevertWow64FsRedirection';
function SetCurrentDirectoryA; external kernel32 name 'SetCurrentDirectoryA';
function SetCurrentDirectoryW; external kernel32 name 'SetCurrentDirectoryW';
function SetCurrentDirectory; external kernel32 name 'SetCurrentDirectory' + AWSuffix;
function GetCurrentDirectoryA; external kernel32 name 'GetCurrentDirectoryA';
function GetCurrentDirectoryW; external kernel32 name 'GetCurrentDirectoryW';
function GetCurrentDirectory; external kernel32 name 'GetCurrentDirectory' + AWSuffix;
function SetDllDirectoryA; external kernel32 name 'SetDllDirectoryA';
function SetDllDirectoryW; external kernel32 name 'SetDllDirectoryW';
function SetDllDirectory; external kernel32 name 'SetDllDirectory' + AWSuffix;
function GetDllDirectoryA; external kernel32 name 'GetDllDirectoryA';
function GetDllDirectoryW; external kernel32 name 'GetDllDirectoryW';
function GetDllDirectory; external kernel32 name 'GetDllDirectory' + AWSuffix;
function GetDiskFreeSpaceA; external kernel32 name 'GetDiskFreeSpaceA';
function GetDiskFreeSpaceW; external kernel32 name 'GetDiskFreeSpaceW';
function GetDiskFreeSpace; external kernel32 name 'GetDiskFreeSpace' + AWSuffix;
function GetDiskFreeSpaceExA; external kernel32 name 'GetDiskFreeSpaceExA';
function GetDiskFreeSpaceExW; external kernel32 name 'GetDiskFreeSpaceExW';
function GetDiskFreeSpaceEx; external kernel32 name 'GetDiskFreeSpaceEx' + AWSuffix;
function CreateDirectoryA; external kernel32 name 'CreateDirectoryA';
function CreateDirectoryW; external kernel32 name 'CreateDirectoryW';
function CreateDirectory; external kernel32 name 'CreateDirectory' + AWSuffix;
function CreateDirectoryExA; external kernel32 name 'CreateDirectoryExA';
function CreateDirectoryExW; external kernel32 name 'CreateDirectoryExW';
function CreateDirectoryEx; external kernel32 name 'CreateDirectoryEx' + AWSuffix;
function RemoveDirectoryA; external kernel32 name 'RemoveDirectoryA';
function RemoveDirectoryW; external kernel32 name 'RemoveDirectoryW';
function RemoveDirectory; external kernel32 name 'RemoveDirectory' + AWSuffix;
function GetFullPathNameA; external kernel32 name 'GetFullPathNameA';
function GetFullPathNameW; external kernel32 name 'GetFullPathNameW';
function GetFullPathName; external kernel32 name 'GetFullPathName' + AWSuffix;
function DefineDosDeviceA; external kernel32 name 'DefineDosDeviceA';
function DefineDosDeviceW; external kernel32 name 'DefineDosDeviceW';
function DefineDosDevice; external kernel32 name 'DefineDosDevice' + AWSuffix;
function QueryDosDeviceA; external kernel32 name 'QueryDosDeviceA';
function QueryDosDeviceW; external kernel32 name 'QueryDosDeviceW';
function QueryDosDevice; external kernel32 name 'QueryDosDevice' + AWSuffix;
function CreateFileA; external kernel32 name 'CreateFileA';
function CreateFileW; external kernel32 name 'CreateFileW';
function CreateFile; external kernel32 name 'CreateFile' + AWSuffix;
function ReOpenFile; external kernel32 name 'ReOpenFile';
function SetFileAttributesA; external kernel32 name 'SetFileAttributesA';
function SetFileAttributesW; external kernel32 name 'SetFileAttributesW';
function SetFileAttributes; external kernel32 name 'SetFileAttributes' + AWSuffix;
function GetFileAttributesA; external kernel32 name 'GetFileAttributesA';
function GetFileAttributesW; external kernel32 name 'GetFileAttributesW';
function GetFileAttributes; external kernel32 name 'GetFileAttributes' + AWSuffix;
function GetFileAttributesExA; external kernel32 name 'GetFileAttributesExA';
function GetFileAttributesExW; external kernel32 name 'GetFileAttributesExW';
function GetFileAttributesEx; external kernel32 name 'GetFileAttributesEx' + AWSuffix;
function GetCompressedFileSizeA; external kernel32 name 'GetCompressedFileSizeA';
function GetCompressedFileSizeW; external kernel32 name 'GetCompressedFileSizeW';
function GetCompressedFileSize; external kernel32 name 'GetCompressedFileSize' + AWSuffix;
function DeleteFileA; external kernel32 name 'DeleteFileA';
function DeleteFileW; external kernel32 name 'DeleteFileW';
function DeleteFile; external kernel32 name 'DeleteFile' + AWSuffix;
function FindFirstFileExA; external kernel32 name 'FindFirstFileExA';
function FindFirstFileExW; external kernel32 name 'FindFirstFileExW';
function FindFirstFileEx; external kernel32 name 'FindFirstFileEx' + AWSuffix;
function FindFirstFileA; external kernel32 name 'FindFirstFileA';
function FindFirstFileW; external kernel32 name 'FindFirstFileW';
function FindFirstFile; external kernel32 name 'FindFirstFile' + AWSuffix;
function FindNextFileA; external kernel32 name 'FindNextFileA';
function FindNextFileW; external kernel32 name 'FindNextFileW';
function FindNextFile; external kernel32 name 'FindNextFile' + AWSuffix;
function SearchPathA; external kernel32 name 'SearchPathA';
function SearchPathW; external kernel32 name 'SearchPathW';
function SearchPath; external kernel32 name 'SearchPath' + AWSuffix;
function CopyFileA; external kernel32 name 'CopyFileA';
function CopyFileW; external kernel32 name 'CopyFileW';
function CopyFile; external kernel32 name 'CopyFile' + AWSuffix;
function CopyFileExA; external kernel32 name 'CopyFileExA';
function CopyFileExW; external kernel32 name 'CopyFileExW';
function CopyFileEx; external kernel32 name 'CopyFileEx' + AWSuffix;
function MoveFileA; external kernel32 name 'MoveFileA';
function MoveFileW; external kernel32 name 'MoveFileW';
function MoveFile; external kernel32 name 'MoveFile' + AWSuffix;
function MoveFileExA; external kernel32 name 'MoveFileExA';
function MoveFileExW; external kernel32 name 'MoveFileExW';
function MoveFileEx; external kernel32 name 'MoveFileEx' + AWSuffix;
function MoveFileWithProgressA; external kernel32 name 'MoveFileWithProgressA';
function MoveFileWithProgressW; external kernel32 name 'MoveFileWithProgressW';
function MoveFileWithProgress; external kernel32 name 'MoveFileWithProgress' + AWSuffix;
function ReplaceFileA; external kernel32 name 'ReplaceFileA';
function ReplaceFileW; external kernel32 name 'ReplaceFileW';
function ReplaceFile; external kernel32 name 'ReplaceFile' + AWSuffix;
function CreateHardLinkA; external kernel32 name 'CreateHardLinkA';
function CreateHardLinkW; external kernel32 name 'CreateHardLinkW';
function CreateHardLink; external kernel32 name 'CreateHardLink' + AWSuffix;
function FindFirstStreamW; external kernel32 name 'FindFirstStreamW';
function FindNextStreamW; external kernel32 name 'FindNextStreamW';
function CreateNamedPipeA; external kernel32 name 'CreateNamedPipeA';
function CreateNamedPipeW; external kernel32 name 'CreateNamedPipeW';
function CreateNamedPipe; external kernel32 name 'CreateNamedPipe' + AWSuffix;
function GetNamedPipeHandleStateA; external kernel32 name 'GetNamedPipeHandleStateA';
function GetNamedPipeHandleStateW; external kernel32 name 'GetNamedPipeHandleStateW';
function GetNamedPipeHandleState; external kernel32 name 'GetNamedPipeHandleState' + AWSuffix;
function CallNamedPipeA; external kernel32 name 'CallNamedPipeA';
function CallNamedPipeW; external kernel32 name 'CallNamedPipeW';
function CallNamedPipe; external kernel32 name 'CallNamedPipe' + AWSuffix;
function WaitNamedPipeA; external kernel32 name 'WaitNamedPipeA';
function WaitNamedPipeW; external kernel32 name 'WaitNamedPipeW';
function WaitNamedPipe; external kernel32 name 'WaitNamedPipe' + AWSuffix;
function SetVolumeLabelA; external kernel32 name 'SetVolumeLabelA';
function SetVolumeLabelW; external kernel32 name 'SetVolumeLabelW';
function SetVolumeLabel; external kernel32 name 'SetVolumeLabel' + AWSuffix;
procedure SetFileApisToOEM; external kernel32 name 'SetFileApisToOEM';
procedure SetFileApisToANSI; external kernel32 name 'SetFileApisToANSI';
function AreFileApisANSI; external kernel32 name 'AreFileApisANSI';
function GetVolumeInformationA; external kernel32 name 'GetVolumeInformationA';
function GetVolumeInformationW; external kernel32 name 'GetVolumeInformationW';
function GetVolumeInformation; external kernel32 name 'GetVolumeInformation' + AWSuffix;
function CancelIo; external kernel32 name 'CancelIo';
function ClearEventLogA; external advapi32 name 'ClearEventLogA';
function ClearEventLogW; external advapi32 name 'ClearEventLogW';
function ClearEventLog; external advapi32 name 'ClearEventLog' + AWSuffix;
function BackupEventLogA; external advapi32 name 'BackupEventLogA';
function BackupEventLogW; external advapi32 name 'BackupEventLogW';
function BackupEventLog; external advapi32 name 'BackupEventLog' + AWSuffix;
function CloseEventLog; external advapi32 name 'CloseEventLog';
function DeregisterEventSource; external advapi32 name 'DeregisterEventSource';
function NotifyChangeEventLog; external advapi32 name 'NotifyChangeEventLog';
function GetNumberOfEventLogRecords; external advapi32 name 'GetNumberOfEventLogRecords';
function GetOldestEventLogRecord; external advapi32 name 'GetOldestEventLogRecord';
function OpenEventLogA; external advapi32 name 'OpenEventLogA';
function OpenEventLogW; external advapi32 name 'OpenEventLogW';
function OpenEventLog; external advapi32 name 'OpenEventLog' + AWSuffix;
function RegisterEventSourceA; external advapi32 name 'RegisterEventSourceA';
function RegisterEventSourceW; external advapi32 name 'RegisterEventSourceW';
function RegisterEventSource; external advapi32 name 'RegisterEventSource' + AWSuffix;
function OpenBackupEventLogA; external advapi32 name 'OpenBackupEventLogA';
function OpenBackupEventLogW; external advapi32 name 'OpenBackupEventLogW';
function OpenBackupEventLog; external advapi32 name 'OpenBackupEventLog' + AWSuffix;
function ReadEventLogA; external advapi32 name 'ReadEventLogA';
function ReadEventLogW; external advapi32 name 'ReadEventLogW';
function ReadEventLog; external advapi32 name 'ReadEventLog' + AWSuffix;
function ReportEventA; external advapi32 name 'ReportEventA';
function ReportEventW; external advapi32 name 'ReportEventW';
function ReportEvent; external advapi32 name 'ReportEvent' + AWSuffix;
function GetEventLogInformation; external advapi32 name 'GetEventLogInformation';
function DuplicateToken; external advapi32 name 'DuplicateToken';
function GetKernelObjectSecurity; external advapi32 name 'GetKernelObjectSecurity';
function ImpersonateNamedPipeClient; external advapi32 name 'ImpersonateNamedPipeClient';
function ImpersonateSelf; external advapi32 name 'ImpersonateSelf';
function RevertToSelf; external advapi32 name 'RevertToSelf';
function SetThreadToken; external advapi32 name 'SetThreadToken';
function AccessCheck; external advapi32 name 'AccessCheck';
function AccessCheckByType; external advapi32 name 'AccessCheckByType';
function AccessCheckByTypeResultList; external advapi32 name 'AccessCheckByTypeResultList';
function OpenProcessToken; external advapi32 name 'OpenProcessToken';
function OpenThreadToken; external advapi32 name 'OpenThreadToken';
function GetTokenInformation; external advapi32 name 'GetTokenInformation';
function SetTokenInformation; external advapi32 name 'SetTokenInformation';
function AdjustTokenPrivileges; external advapi32 name 'AdjustTokenPrivileges';
function AdjustTokenGroups; external advapi32 name 'AdjustTokenGroups';
function PrivilegeCheck; external advapi32 name 'PrivilegeCheck';
function AccessCheckAndAuditAlarmA; external advapi32 name 'AccessCheckAndAuditAlarmA';
function AccessCheckAndAuditAlarmW; external advapi32 name 'AccessCheckAndAuditAlarmW';
function AccessCheckAndAuditAlarm; external advapi32 name 'AccessCheckAndAuditAlarm' + AWSuffix;
function AccessCheckByTypeAndAuditAlarmA; external advapi32 name 'AccessCheckByTypeAndAuditAlarmA';
function AccessCheckByTypeAndAuditAlarmW; external advapi32 name 'AccessCheckByTypeAndAuditAlarmW';
function AccessCheckByTypeAndAuditAlarm; external advapi32 name 'AccessCheckByTypeAndAuditAlarm' + AWSuffix;
function AccessCheckByTypeResultListAndAuditAlarmA; external advapi32 name 'AccessCheckByTypeResultListAndAuditAlarmA';
function AccessCheckByTypeResultListAndAuditAlarmW; external advapi32 name 'AccessCheckByTypeResultListAndAuditAlarmW';
function AccessCheckByTypeResultListAndAuditAlarm; external advapi32 name 'AccessCheckByTypeResultListAndAuditAlarm' + AWSuffix;
function AccessCheckByTypeResultListAndAuditAlarmByHandleA; external advapi32 name 'AccessCheckByTypeResultListAndAuditAlarmByHandleA';
function AccessCheckByTypeResultListAndAuditAlarmByHandleW; external advapi32 name 'AccessCheckByTypeResultListAndAuditAlarmByHandleW';
function AccessCheckByTypeResultListAndAuditAlarmByHandle; external advapi32 name 'AccessCheckByTypeResultListAndAuditAlarmByHandle' + AWSuffix;
function ObjectOpenAuditAlarmA; external advapi32 name 'ObjectOpenAuditAlarmA';
function ObjectOpenAuditAlarmW; external advapi32 name 'ObjectOpenAuditAlarmW';
function ObjectOpenAuditAlarm; external advapi32 name 'ObjectOpenAuditAlarm' + AWSuffix;
function ObjectPrivilegeAuditAlarmA; external advapi32 name 'ObjectPrivilegeAuditAlarmA';
function ObjectPrivilegeAuditAlarmW; external advapi32 name 'ObjectPrivilegeAuditAlarmW';
function ObjectPrivilegeAuditAlarm; external advapi32 name 'ObjectPrivilegeAuditAlarm' + AWSuffix;
function ObjectCloseAuditAlarmA; external advapi32 name 'ObjectCloseAuditAlarmA';
function ObjectCloseAuditAlarmW; external advapi32 name 'ObjectCloseAuditAlarmW';
function ObjectCloseAuditAlarm; external advapi32 name 'ObjectCloseAuditAlarm' + AWSuffix;
function ObjectDeleteAuditAlarmA; external advapi32 name 'ObjectDeleteAuditAlarmA';
function ObjectDeleteAuditAlarmW; external advapi32 name 'ObjectDeleteAuditAlarmW';
function ObjectDeleteAuditAlarm; external advapi32 name 'ObjectDeleteAuditAlarm' + AWSuffix;
function PrivilegedServiceAuditAlarmA; external advapi32 name 'PrivilegedServiceAuditAlarmA';
function PrivilegedServiceAuditAlarmW; external advapi32 name 'PrivilegedServiceAuditAlarmW';
function PrivilegedServiceAuditAlarm; external advapi32 name 'PrivilegedServiceAuditAlarm' + AWSuffix;
function IsWellKnownSid; external advapi32 name 'IsWellKnownSid';
function CreateWellKnownSid; external advapi32 name 'CreateWellKnownSid';
function EqualDomainSid; external advapi32 name 'EqualDomainSid';
function GetWindowsAccountDomainSid; external advapi32 name 'GetWindowsAccountDomainSid';
function IsValidSid; external advapi32 name 'IsValidSid';
function EqualSid; external advapi32 name 'EqualSid';
function EqualPrefixSid; external advapi32 name 'EqualPrefixSid';
function GetSidLengthRequired; external advapi32 name 'GetSidLengthRequired';
function AllocateAndInitializeSid; external advapi32 name 'AllocateAndInitializeSid';
function FreeSid; external advapi32 name 'FreeSid';
function InitializeSid; external advapi32 name 'InitializeSid';
function GetSidIdentifierAuthority; external advapi32 name 'GetSidIdentifierAuthority';
function GetSidSubAuthority; external advapi32 name 'GetSidSubAuthority';
function GetSidSubAuthorityCount; external advapi32 name 'GetSidSubAuthorityCount';
function GetLengthSid; external advapi32 name 'GetLengthSid';
function CopySid; external advapi32 name 'CopySid';
function AreAllAccessesGranted; external advapi32 name 'AreAllAccessesGranted';
function AreAnyAccessesGranted; external advapi32 name 'AreAnyAccessesGranted';
procedure MapGenericMask; external advapi32 name 'MapGenericMask';
function IsValidAcl; external advapi32 name 'IsValidAcl';
function InitializeAcl; external advapi32 name 'InitializeAcl';
function GetAclInformation; external advapi32 name 'GetAclInformation';
function SetAclInformation; external advapi32 name 'SetAclInformation';
function AddAce; external advapi32 name 'AddAce';
function DeleteAce; external advapi32 name 'DeleteAce';
function GetAce; external advapi32 name 'GetAce';
function AddAccessAllowedAce; external advapi32 name 'AddAccessAllowedAce';
function AddAccessAllowedAceEx; external advapi32 name 'AddAccessAllowedAceEx';
function AddAccessDeniedAce; external advapi32 name 'AddAccessDeniedAce';
function AddAccessDeniedAceEx; external advapi32 name 'AddAccessDeniedAceEx';
function AddAuditAccessAce; external advapi32 name 'AddAuditAccessAce';
function AddAuditAccessAceEx; external advapi32 name 'AddAuditAccessAceEx';
function AddAccessAllowedObjectAce; external advapi32 name 'AddAccessAllowedObjectAce';
function AddAccessDeniedObjectAce; external advapi32 name 'AddAccessDeniedObjectAce';
function AddAuditAccessObjectAce; external advapi32 name 'AddAuditAccessObjectAce';
function FindFirstFreeAce; external advapi32 name 'FindFirstFreeAce';
function InitializeSecurityDescriptor; external advapi32 name 'InitializeSecurityDescriptor';
function IsValidSecurityDescriptor; external advapi32 name 'IsValidSecurityDescriptor';
function GetSecurityDescriptorLength; external advapi32 name 'GetSecurityDescriptorLength';
function GetSecurityDescriptorControl; external advapi32 name 'GetSecurityDescriptorControl';
function SetSecurityDescriptorControl; external advapi32 name 'SetSecurityDescriptorControl';
function SetSecurityDescriptorDacl; external advapi32 name 'SetSecurityDescriptorDacl';
function GetSecurityDescriptorDacl; external advapi32 name 'GetSecurityDescriptorDacl';
function SetSecurityDescriptorSacl; external advapi32 name 'SetSecurityDescriptorSacl';
function GetSecurityDescriptorSacl; external advapi32 name 'GetSecurityDescriptorSacl';
function SetSecurityDescriptorOwner; external advapi32 name 'SetSecurityDescriptorOwner';
function GetSecurityDescriptorOwner; external advapi32 name 'GetSecurityDescriptorOwner';
function SetSecurityDescriptorGroup; external advapi32 name 'SetSecurityDescriptorGroup';
function GetSecurityDescriptorGroup; external advapi32 name 'GetSecurityDescriptorGroup';
function SetSecurityDescriptorRMControl; external advapi32 name 'SetSecurityDescriptorRMControl';
function GetSecurityDescriptorRMControl; external advapi32 name 'GetSecurityDescriptorRMControl';
function CreatePrivateObjectSecurity; external advapi32 name 'CreatePrivateObjectSecurity';
function ConvertToAutoInheritPrivateObjectSecurity; external advapi32 name 'ConvertToAutoInheritPrivateObjectSecurity';
function CreatePrivateObjectSecurityEx; external advapi32 name 'CreatePrivateObjectSecurityEx';
function SetPrivateObjectSecurity; external advapi32 name 'SetPrivateObjectSecurity';
function SetPrivateObjectSecurityEx; external advapi32 name 'SetPrivateObjectSecurityEx';
function GetPrivateObjectSecurity; external advapi32 name 'GetPrivateObjectSecurity';
function DestroyPrivateObjectSecurity; external advapi32 name 'DestroyPrivateObjectSecurity';
function MakeSelfRelativeSD; external advapi32 name 'MakeSelfRelativeSD';
function MakeAbsoluteSD; external advapi32 name 'MakeAbsoluteSD';
function MakeAbsoluteSD2; external advapi32 name 'MakeAbsoluteSD2';
function SetFileSecurityA; external advapi32 name 'SetFileSecurityA';
function SetFileSecurityW; external advapi32 name 'SetFileSecurityW';
function SetFileSecurity; external advapi32 name 'SetFileSecurity' + AWSuffix;
function GetFileSecurityA; external advapi32 name 'GetFileSecurityA';
function GetFileSecurityW; external advapi32 name 'GetFileSecurityW';
function GetFileSecurity; external advapi32 name 'GetFileSecurity' + AWSuffix;
function SetKernelObjectSecurity; external advapi32 name 'SetKernelObjectSecurity';
function FindFirstChangeNotificationA; external kernel32 name 'FindFirstChangeNotificationA';
function FindFirstChangeNotificationW; external kernel32 name 'FindFirstChangeNotificationW';
function FindFirstChangeNotification; external kernel32 name 'FindFirstChangeNotification' + AWSuffix;
function FindNextChangeNotification; external kernel32 name 'FindNextChangeNotification';
function FindCloseChangeNotification; external kernel32 name 'FindCloseChangeNotification';
function ReadDirectoryChangesW; external kernel32 name 'ReadDirectoryChangesW';
function VirtualLock; external kernel32 name 'VirtualLock';
function VirtualUnlock; external kernel32 name 'VirtualUnlock';
function MapViewOfFileEx; external kernel32 name 'MapViewOfFileEx';
function SetPriorityClass; external kernel32 name 'SetPriorityClass';
function GetPriorityClass; external kernel32 name 'GetPriorityClass';
function IsBadReadPtr; external kernel32 name 'IsBadReadPtr';
function IsBadWritePtr; external kernel32 name 'IsBadWritePtr';
function IsBadHugeReadPtr; external kernel32 name 'IsBadHugeReadPtr';
function IsBadHugeWritePtr; external kernel32 name 'IsBadHugeWritePtr';
function IsBadCodePtr; external kernel32 name 'IsBadCodePtr';
function IsBadStringPtrA; external kernel32 name 'IsBadStringPtrA';
function IsBadStringPtrW; external kernel32 name 'IsBadStringPtrW';
function IsBadStringPtr; external kernel32 name 'IsBadStringPtr' + AWSuffix;
function LookupAccountSidA; external advapi32 name 'LookupAccountSidA';
function LookupAccountSidW; external advapi32 name 'LookupAccountSidW';
function LookupAccountSid; external advapi32 name 'LookupAccountSid' + AWSuffix;
function LookupAccountNameA; external advapi32 name 'LookupAccountNameA';
function LookupAccountNameW; external advapi32 name 'LookupAccountNameW';
function LookupAccountName; external advapi32 name 'LookupAccountName' + AWSuffix;
function LookupPrivilegeValueA; external advapi32 name 'LookupPrivilegeValueA';
function LookupPrivilegeValueW; external advapi32 name 'LookupPrivilegeValueW';
function LookupPrivilegeValue; external advapi32 name 'LookupPrivilegeValue' + AWSuffix;
function LookupPrivilegeNameA; external advapi32 name 'LookupPrivilegeNameA';
function LookupPrivilegeNameW; external advapi32 name 'LookupPrivilegeNameW';
function LookupPrivilegeName; external advapi32 name 'LookupPrivilegeName' + AWSuffix;
function LookupPrivilegeDisplayNameA; external advapi32 name 'LookupPrivilegeDisplayNameA';
function LookupPrivilegeDisplayNameW; external advapi32 name 'LookupPrivilegeDisplayNameW';
function LookupPrivilegeDisplayName; external advapi32 name 'LookupPrivilegeDisplayName' + AWSuffix;
function AllocateLocallyUniqueId; external advapi32 name 'AllocateLocallyUniqueId';
function BuildCommDCBA; external kernel32 name 'BuildCommDCBA';
function BuildCommDCBW; external kernel32 name 'BuildCommDCBW';
function BuildCommDCB; external kernel32 name 'BuildCommDCB' + AWSuffix;
function BuildCommDCBAndTimeoutsA; external kernel32 name 'BuildCommDCBAndTimeoutsA';
function BuildCommDCBAndTimeoutsW; external kernel32 name 'BuildCommDCBAndTimeoutsW';
function BuildCommDCBAndTimeouts; external kernel32 name 'BuildCommDCBAndTimeouts' + AWSuffix;
function CommConfigDialogA; external kernel32 name 'CommConfigDialogA';
function CommConfigDialogW; external kernel32 name 'CommConfigDialogW';
function CommConfigDialog; external kernel32 name 'CommConfigDialog' + AWSuffix;
function GetDefaultCommConfigA; external kernel32 name 'GetDefaultCommConfigA';
function GetDefaultCommConfigW; external kernel32 name 'GetDefaultCommConfigW';
function GetDefaultCommConfig; external kernel32 name 'GetDefaultCommConfig' + AWSuffix;
function SetDefaultCommConfigA; external kernel32 name 'SetDefaultCommConfigA';
function SetDefaultCommConfigW; external kernel32 name 'SetDefaultCommConfigW';
function SetDefaultCommConfig; external kernel32 name 'SetDefaultCommConfig' + AWSuffix;
function GetComputerNameA; external kernel32 name 'GetComputerNameA';
function GetComputerNameW; external kernel32 name 'GetComputerNameW';
function GetComputerName; external kernel32 name 'GetComputerName' + AWSuffix;
function SetComputerNameA; external kernel32 name 'SetComputerNameA';
function SetComputerNameW; external kernel32 name 'SetComputerNameW';
function SetComputerName; external kernel32 name 'SetComputerName' + AWSuffix;
function GetComputerNameExA; external kernel32 name 'GetComputerNameExA';
function GetComputerNameExW; external kernel32 name 'GetComputerNameExW';
function GetComputerNameEx; external kernel32 name 'GetComputerNameEx' + AWSuffix;
function SetComputerNameExA; external kernel32 name 'SetComputerNameExA';
function SetComputerNameExW; external kernel32 name 'SetComputerNameExW';
function SetComputerNameEx; external kernel32 name 'SetComputerNameEx' + AWSuffix;
function DnsHostnameToComputerNameA; external kernel32 name 'DnsHostnameToComputerNameA';
function DnsHostnameToComputerNameW; external kernel32 name 'DnsHostnameToComputerNameW';
function DnsHostnameToComputerName; external kernel32 name 'DnsHostnameToComputerName' + AWSuffix;
function GetUserNameA; external advapi32 name 'GetUserNameA';
function GetUserNameW; external advapi32 name 'GetUserNameW';
function GetUserName; external advapi32 name 'GetUserName' + AWSuffix;
function LogonUserA; external advapi32 name 'LogonUserA';
function LogonUserW; external advapi32 name 'LogonUserW';
function LogonUser; external advapi32 name 'LogonUser' + AWSuffix;
function LogonUserExA; external advapi32 name 'LogonUserExA';
function LogonUserExW; external advapi32 name 'LogonUserExW';
function LogonUserEx; external advapi32 name 'LogonUserEx' + AWSuffix;
function ImpersonateLoggedOnUser; external advapi32 name 'ImpersonateLoggedOnUser';
function CreateProcessAsUserA; external advapi32 name 'CreateProcessAsUserA';
function CreateProcessAsUserW; external advapi32 name 'CreateProcessAsUserW';
function CreateProcessAsUser; external advapi32 name 'CreateProcessAsUser' + AWSuffix;
function CreateProcessWithLogonW; external advapi32 name 'CreateProcessWithLogonW';
function CreateProcessWithTokenW; external advapi32 name 'CreateProcessWithTokenW';
function ImpersonateAnonymousToken; external advapi32 name 'ImpersonateAnonymousToken';
function DuplicateTokenEx; external advapi32 name 'DuplicateTokenEx';
function CreateRestrictedToken; external advapi32 name 'CreateRestrictedToken';
function IsTokenRestricted; external advapi32 name 'IsTokenRestricted';
function CheckTokenMembership; external advapi32 name 'CheckTokenMembership';
function IsTokenUntrusted; external advapi32 name 'IsTokenUntrusted';
function RegisterWaitForSingleObject; external kernel32 name 'RegisterWaitForSingleObject';
function RegisterWaitForSingleObjectEx; external kernel32 name 'RegisterWaitForSingleObjectEx';
function UnregisterWait; external kernel32 name 'UnregisterWait';
function UnregisterWaitEx; external kernel32 name 'UnregisterWaitEx';
function QueueUserWorkItem; external kernel32 name 'QueueUserWorkItem';
function BindIoCompletionCallback; external kernel32 name 'BindIoCompletionCallback';
function CreateTimerQueue; external kernel32 name 'CreateTimerQueue';
function CreateTimerQueueTimer; external kernel32 name 'CreateTimerQueueTimer';
function ChangeTimerQueueTimer; external kernel32 name 'ChangeTimerQueueTimer';
function DeleteTimerQueueTimer; external kernel32 name 'DeleteTimerQueueTimer';
function DeleteTimerQueueEx; external kernel32 name 'DeleteTimerQueueEx';
function SetTimerQueueTimer; external kernel32 name 'SetTimerQueueTimer';
function CancelTimerQueueTimer; external kernel32 name 'CancelTimerQueueTimer';
function DeleteTimerQueue; external kernel32 name 'DeleteTimerQueue';
function GetCurrentHwProfileA; external advapi32 name 'GetCurrentHwProfileA';
function GetCurrentHwProfileW; external advapi32 name 'GetCurrentHwProfileW';
function GetCurrentHwProfile; external advapi32 name 'GetCurrentHwProfile' + AWSuffix;
function QueryPerformanceCounter; external kernel32 name 'QueryPerformanceCounter';
function QueryPerformanceFrequency; external kernel32 name 'QueryPerformanceFrequency';
function GetVersionExA; external kernel32 name 'GetVersionExA';
function GetVersionExW; external kernel32 name 'GetVersionExW';
function GetVersionEx; external kernel32 name 'GetVersionEx' + AWSuffix;
function VerifyVersionInfoA; external kernel32 name 'VerifyVersionInfoA';
function VerifyVersionInfoW; external kernel32 name 'VerifyVersionInfoW';
function VerifyVersionInfo; external kernel32 name 'VerifyVersionInfo' + AWSuffix;
function GetSystemPowerStatus; external kernel32 name 'GetSystemPowerStatus';
function SetSystemPowerState; external kernel32 name 'SetSystemPowerState';
function AllocateUserPhysicalPages; external kernel32 name 'AllocateUserPhysicalPages';
function FreeUserPhysicalPages; external kernel32 name 'FreeUserPhysicalPages';
function MapUserPhysicalPages; external kernel32 name 'MapUserPhysicalPages';
function MapUserPhysicalPagesScatter; external kernel32 name 'MapUserPhysicalPagesScatter';
function CreateJobObjectA; external kernel32 name 'CreateJobObjectA';
function CreateJobObjectW; external kernel32 name 'CreateJobObjectW';
function CreateJobObject; external kernel32 name 'CreateJobObject' + AWSuffix;
function OpenJobObjectA; external kernel32 name 'OpenJobObjectA';
function OpenJobObjectW; external kernel32 name 'OpenJobObjectW';
function OpenJobObject; external kernel32 name 'OpenJobObject' + AWSuffix;
function AssignProcessToJobObject; external kernel32 name 'AssignProcessToJobObject';
function TerminateJobObject; external kernel32 name 'TerminateJobObject';
function QueryInformationJobObject; external kernel32 name 'QueryInformationJobObject';
function SetInformationJobObject; external kernel32 name 'SetInformationJobObject';
function IsProcessInJob; external kernel32 name 'IsProcessInJob';
function CreateJobSet; external kernel32 name 'CreateJobSet';
function AddVectoredExceptionHandler; external kernel32 name 'AddVectoredExceptionHandler';
function RemoveVectoredExceptionHandler; external kernel32 name 'RemoveVectoredExceptionHandler';
function FindFirstVolumeA; external kernel32 name 'FindFirstVolumeA';
function FindFirstVolumeW; external kernel32 name 'FindFirstVolumeW';
function FindFirstVolume; external kernel32 name 'FindFirstVolume' + AWSuffix;
function FindNextVolumeA; external kernel32 name 'FindNextVolumeA';
function FindNextVolumeW; external kernel32 name 'FindNextVolumeW';
function FindNextVolume; external kernel32 name 'FindNextVolume' + AWSuffix;
function FindVolumeClose; external kernel32 name 'FindVolumeClose';
function FindFirstVolumeMountPointA; external kernel32 name 'FindFirstVolumeMountPointA';
function FindFirstVolumeMountPointW; external kernel32 name 'FindFirstVolumeMountPointW';
function FindFirstVolumeMountPoint; external kernel32 name 'FindFirstVolumeMountPoint' + AWSuffix;
function FindNextVolumeMountPointA; external kernel32 name 'FindNextVolumeMountPointA';
function FindNextVolumeMountPointW; external kernel32 name 'FindNextVolumeMountPointW';
function FindNextVolumeMountPoint; external kernel32 name 'FindNextVolumeMountPoint' + AWSuffix;
function FindVolumeMountPointClose; external kernel32 name 'FindVolumeMountPointClose';
function SetVolumeMountPointA; external kernel32 name 'SetVolumeMountPointA';
function SetVolumeMountPointW; external kernel32 name 'SetVolumeMountPointW';
function SetVolumeMountPoint; external kernel32 name 'SetVolumeMountPoint' + AWSuffix;
function DeleteVolumeMountPointA; external kernel32 name 'DeleteVolumeMountPointA';
function DeleteVolumeMountPointW; external kernel32 name 'DeleteVolumeMountPointW';
function DeleteVolumeMountPoint; external kernel32 name 'DeleteVolumeMountPoint' + AWSuffix;
function GetVolumeNameForVolumeMountPointA; external kernel32 name 'GetVolumeNameForVolumeMountPointA';
function GetVolumeNameForVolumeMountPointW; external kernel32 name 'GetVolumeNameForVolumeMountPointW';
function GetVolumeNameForVolumeMountPoint; external kernel32 name 'GetVolumeNameForVolumeMountPoint' + AWSuffix;
function GetVolumePathNameA; external kernel32 name 'GetVolumePathNameA';
function GetVolumePathNameW; external kernel32 name 'GetVolumePathNameW';
function GetVolumePathName; external kernel32 name 'GetVolumePathName' + AWSuffix;
function GetVolumePathNamesForVolumeNameA; external kernel32 name 'GetVolumePathNamesForVolumeNameA';
function GetVolumePathNamesForVolumeNameW; external kernel32 name 'GetVolumePathNamesForVolumeNameW';
function GetVolumePathNamesForVolumeName; external kernel32 name 'GetVolumePathNamesForVolumeName' + AWSuffix;
function CreateActCtxA; external kernel32 name 'CreateActCtxA';
function CreateActCtxW; external kernel32 name 'CreateActCtxW';
function CreateActCtx; external kernel32 name 'CreateActCtx' + AWSuffix;
procedure AddRefActCtx; external kernel32 name 'AddRefActCtx';
procedure ReleaseActCtx; external kernel32 name 'ReleaseActCtx';
function ZombifyActCtx; external kernel32 name 'ZombifyActCtx';
function ActivateActCtx; external kernel32 name 'ActivateActCtx';
function DeactivateActCtx; external kernel32 name 'DeactivateActCtx';
function GetCurrentActCtx; external kernel32 name 'GetCurrentActCtx';
function FindActCtxSectionStringA; external kernel32 name 'FindActCtxSectionStringA';
function FindActCtxSectionStringW; external kernel32 name 'FindActCtxSectionStringW';
function FindActCtxSectionString; external kernel32 name 'FindActCtxSectionString' + AWSuffix;
function FindActCtxSectionGuid; external kernel32 name 'FindActCtxSectionGuid';
function QueryActCtxW; external kernel32 name 'QueryActCtxW';
function ProcessIdToSessionId; external kernel32 name 'ProcessIdToSessionId';
function WTSGetActiveConsoleSessionId; external kernel32 name 'WTSGetActiveConsoleSessionId';
function IsWow64Process; external kernel32 name 'IsWow64Process';
function GetLogicalProcessorInformation; external kernel32 name 'GetLogicalProcessorInformation';
function GetNumaHighestNodeNumber; external kernel32 name 'GetNumaHighestNodeNumber';
function GetNumaProcessorNode; external kernel32 name 'GetNumaProcessorNode';
function GetNumaNodeProcessorMask; external kernel32 name 'GetNumaNodeProcessorMask';
function GetNumaAvailableMemoryNode; external kernel32 name 'GetNumaAvailableMemoryNode';

{$IFDEF WINVISTA_UP}
procedure InitializeConditionVariable; external kernel32 name 'InitializeConditionVariable';
function SleepConditionVariableCS; external kernel32 name 'SleepConditionVariableCS';
function SleepConditionVariableSRW; external kernel32 name 'SleepConditionVariableSRW';
procedure WakeAllConditionVariable; external kernel32 name 'WakeAllConditionVariable';
procedure WakeConditionVariable; external kernel32 name 'WakeConditionVariable';

procedure InitializeSRWLock; external kernel32 name 'InitializeSRWLock';
procedure ReleaseSRWLockExclusive; external kernel32 name 'ReleaseSRWLockExclusive';
procedure ReleaseSRWLockShared; external kernel32 name 'ReleaseSRWLockShared';
procedure AcquireSRWLockExclusive; external kernel32 name 'AcquireSRWLockExclusive';
procedure AcquireSRWLockShared; external kernel32 name 'AcquireSRWLockShared';
function TryAcquireSRWLockExclusive; external kernel32 name 'TryAcquireSRWLockExclusive';
function TryAcquireSRWLockShared; external kernel32 name 'TryAcquireSRWLockShared';

function SetProcessDEPPolicy; external kernel32 name 'SetProcessDEPPolicy';
function GetNamedPipeServerSessionId; external kernel32 name 'GetNamedPipeServerSessionId';
function GetNamedPipeServerProcessId; external kernel32 name 'GetNamedPipeServerProcessId';

function GetNamedPipeClientProcessId; external kernel32 name 'GetNamedPipeClientProcessId';
function GetNamedPipeClientSessionId; external kernel32 name 'GetNamedPipeClientSessionId';

function GetNamedPipeClientComputerName; external kernel32 name 'GetNamedPipeClientComputerName'+AWSuffix;
function GetNamedPipeClientComputerNameA; external kernel32 name 'GetNamedPipeClientComputerNameA';
function GetNamedPipeClientComputerNameW; external kernel32 name 'GetNamedPipeClientComputerNameW';
{$ENDIF WINVISTA_UP}

{$IFDEF JWENABLE_SETSEARCHPATHMODE}
function SetSearchPathMode; external kernel32 name 'SetSearchPathMode';
{$ENDIF}


{$ENDIF DYNAMIC_LINK}

function ProcThreadAttributeValue(const Number : DWORD;
     Thread, Input, Additive : Boolean) : DWORD;
begin
{
#define ProcThreadAttributeValue(Number, Thread, Input, Additive) \
    (((Number) & PROC_THREAD_ATTRIBUTE_NUMBER) | \
     ((Thread != FALSE) ? PROC_THREAD_ATTRIBUTE_THREAD : 0) | \
     ((Input != FALSE) ? PROC_THREAD_ATTRIBUTE_INPUT : 0) | \
     ((Additive != FALSE) ? PROC_THREAD_ATTRIBUTE_ADDITIVE : 0))
}
  result := Number and PROC_THREAD_ATTRIBUTE_NUMBER;
  if Thread then
    result := result or PROC_THREAD_ATTRIBUTE_THREAD;
  if Input then
    result := result or PROC_THREAD_ATTRIBUTE_INPUT;
  if Additive then
    result := result or PROC_THREAD_ATTRIBUTE_ADDITIVE;
end;

function PROC_THREAD_ATTRIBUTE_PARENT_PROCESS : DWORD;
begin
{
#define PROC_THREAD_ATTRIBUTE_PARENT_PROCESS \
    ProcThreadAttributeValue (ProcThreadAttributeParentProcess, FALSE, TRUE, FALSE)
}
  result := ProcThreadAttributeValue(DWORD(ProcThreadAttributeParentProcess), false, true, false);
end;

function PROC_THREAD_ATTRIBUTE_EXTENDED_FLAGS : DWORD;
begin
{
#define PROC_THREAD_ATTRIBUTE_EXTENDED_FLAGS \
    ProcThreadAttributeValue (ProcThreadAttributeExtendedFlags, FALSE, TRUE, TRUE)
}
  result := ProcThreadAttributeValue(DWORD(ProcThreadAttributeExtendedFlags), false, true, true);
end;

function PROC_THREAD_ATTRIBUTE_HANDLE_LIST : DWORD;
begin
{
#define PROC_THREAD_ATTRIBUTE_HANDLE_LIST \
    ProcThreadAttributeValue (ProcThreadAttributeHandleList, FALSE, TRUE, FALSE)
}
  result := ProcThreadAttributeValue(DWORD(ProcThreadAttributeHandleList), false, true, false);
end;
{$ENDIF JWA_INTERFACESECTION}

{$IFNDEF JWA_OMIT_SECTIONS}
end.
{$ENDIF JWA_OMIT_SECTIONS}
