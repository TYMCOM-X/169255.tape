File 1)	DSK:PCOM63.SAI[3,213211]	created: 1923 01-JUL-83
File 2)	DSK:WOMBAT.SAI[3,352477]	created: 1846 22-MAY-85

1)1	begin	"PCOM"
1)	Define PRELIMINARY = FALSE;		comment TRUE if not-released;
1)	require (Ifcr PRELIMINARY thenc '101 elsec '1 endc lsh 18) lor '63 version;
1)	require "
1)	PCOM - TYMCOM-X interim PERP exec language
1)	Assembly: Load @PCOM.CMD
1)	Sources:  PCOM.SAI, UUOSYM.DEF, SWDEF.DEF
1)	Library:  PCOINT.DCL, PCOINT.SAI [REL], PCODUL.SAI
1)	License:  ALL license bits!!! " message;
****
2)1	begin	"WOMBAT"
2)	require "WOMBAT.DEF" source!file;
2)	require "
2)	WOMBAT "&CVOS(WOMBAT!VERSION lsh -18)&"."&C VOS(WOMBAT!VERSION land '777777)&
2)	     " - TYMCOM-X interim PERP exec language
2)	Assembly: Load @WOMBAT.CMD
2)	Sources:  WOMBAT.SAI, WOMBAT.DEF, SWDEF.DEF, UUOSYM.DEF
2)	Library:  PCOINT.DCL, PCOINT.SAI [REL]
2)	License:  ALL license bits!!! " message;
**************
1)1	require "SWDEF.DEF"  source!file;
1)	require "PCOINT.DCL" source!file;
1)	require "PCODUL.DCL" source!file;
1)	require 25 polling!interval;
1)	require 1000 new!items,  pnames;
1)2	Define Batch = {"DCOM"};	! monitor command for /DETACH;
1)	Define Tty   = {"PCOM"};	! monitor command for /NODETACH;
1)	Define	Int!TIM      = 10	! Timer interrupt;
1)	,	Int!CHR      = 11	! Character traffic interrupt;
1)	,	Int!ZAP      = 12	! Circuit zap interrupt;
1)	,	Int!ORG      = 13	! Orange Ball interrupt;
1)	,	Int!NTQ      = 14	! Notice to Quit interrupt;
1)	,	Int!ESC      = 15;	! User <esc> interrupt;
1)	Define	Status!ERROR = -1	! Some error occurred;
1)	,	Status!NEW   =  0	! Initial state;
1)	,	Status!BEGIN =  1	! PCOM started;
1)	,	Status!LOOK  =  2	! Input file can be read ok;
1)	,	Status!ENTER =  3	! Output file can be done properly;
1)	,	Status!PROC  =  4	! Doing actual processing;
1)	,	Status!DONE  =  5	! PCOM processing done;
1)	,	Status!MAIL  =  6	! Sending MAIL to user;
1)	,	Status!LOGOUT=  7	! Logout sent to child;
1)	,	Status!ZAP   =  8	! Awaiting Zapper;
1)	,	Status!EXIT  =  9	! PCOM normal termination;
1)	,	Status!WATCH = 10;	! PCOM termination running PEECOM;
1)	Define	Error!LIC = 1		! Not enough license;
1)	,	Error!CFM = Error!LIC+1	! Create Frame;
1)	,	Error!RFM = Error!CFM+1	! Run Frame;
1)	,	Error!LFM = Error!RFM+1	! Logout Frame;
1)	,	Error!RCF = Error!LFM+1	! Reading command file;
1)	,	Error!IDN = Error!RCF+1	! Input Device Name;
1)	,	Error!IFN = Error!IDN+1	! Input File Name;
1)	,	Error!IFE = Error!IFN+1	! Input File Error;
1)	,	Error!ODN = Error!IFE+1	! Output Device Name;
File 1)	DSK:PCOM63.SAI[3,213211]	created: 1923 01-JUL-83
File 2)	DSK:WOMBAT.SAI[3,352477]	created: 1846 22-MAY-85

1)	,	Error!OFN = Error!ODN+1	! Output File Name;
1)	,	Error!OFE = Error!OFN+1	! Output File Error;
1)	,	Error!ISN = Error!OFE+1	! Illegal Switch Name;
1)	,	Error!ISA = Error!ISN+1	! Illegal Switch Argument;
1)	;
1)	Define Complete = {"completed"};! successful completion;
1)	Define Default!Ext = {".CTL"};	! default command file extension;
1)	Define Default!Log = {".LOG"};	! default log file extension;
1)	Define Uppercase(x) = {Scan(x, B!Up, Dummy)};
1)	Define White(x) = {Scan(x, B!Wht, Brk)};
1)	Define Obnoxious!Message = {"
1)	Warning!!! PERP users...
1)	    "":logfilename"" as the first line of your PCOM command file will
1)	    soon become OBSOLETE.  Please change your command files to use
1)	    the PCOM command "":LOGFILE  logfilename"" on the first line of
1)	    your file.  This NEW command will be legal ONLY on line 1 of the
1)	    command file.
1)	"};
1)	Define KQ(x,y) = 		     {	Kequ(x,CvPS(y))
****
2)1	require "PCOINT.DCL" source!file;
2)	require 1000 new!items,  pnames;
2)2	!	Default Definitions
2)	;
2)	Define Complete = {"completed"};! successful completion;
2)	Define Uppercase(x) = {Scan(x, B!Up, Dummy)};
2)	Define White(x) = {Scan(x, B!Wht, Brk)};
2)	Define KQ(x,y) = 		     {	Kequ(x,CvPS(y))
**************
1)3	!	*** S W I T C H E S ***;
1)	Define	L$$NONE = 0,	L$$ON = 1,	L$$ERROR = 2,	L$$DELETE = 3;
1)	Ifcr PRELIMINARY thenc
1)	Define	P$$PAR = !bit(35),  P$$SWT = !bit(34),  P$$ITM = !bit(33)
1)	,	P$$SUB = !bit(32),  P$$CMD = !bit(31),  P$$FIL = !bit(30)
1)	,	P$$SND = !bit(29),  P$$INP = !bit(28)
1)	,	P$$ALL = P$$PAR lor P$$SWT lor P$$ITM lor P$$SUB
1)		     lor P$$CMD lor P$$FIL lor P$$SND lor P$$INP;
1)	endc
1)	Declare!Switches([
1)	    SW!SN (APPEND,0)
1)	Ifcr PRELIMINARY thenc
1)	    SW!SN (BAIL,0)
1)	    SW!SN (CHARS,0)
1)	endc
1)	    SW!SN (DETACH,-1)
1)	    SW!SL (HELP,0,SW$NOS,[
1)			SW!ARG(TEXT,1)
1)			SW!ARG(SWITCHES,2)
1)			    ])
1)	    SW!SL (LOG,-1,SW$NOS,[
1)			SW!ARG(NONE,L$$NONE)
1)			SW!ARG(ON,L$$ON)
1)			SW!ARG(ERROR,L$$ERROR)
1)			SW!ARG(DELETE,L$$DELETE)
File 1)	DSK:PCOM63.SAI[3,213211]	created: 1923 01-JUL-83
File 2)	DSK:WOMBAT.SAI[3,352477]	created: 1846 22-MAY-85

1)			    ])
1)	    SW!SN (LICENSE,1)
1)	    SW!SN (MAIL,-1)
1)	    SW!SN (NEWS,0)
1)	Ifcr PRELIMINARY thenc
1)	    SW!SL (PRINT,0,SW$OBV lor SW$VRQ lor SW$NOS,[
1)			SW!ARG(ALL,P$$ALL)
1)			SW!ARG(COMMANDS,P$$CMD)
1)			SW!ARG(FILES,P$$FIL)
1)			SW!ARG(INPUT,P$$INP)
1)			SW!ARG(ITEMS,P$$ITM)
1)			SW!ARG(PARAMETERS,P$$PAR)
1)			SW!ARG(SEND,P$$SND)
1)			SW!ARG(SUBSTITUTIONS,P$$SUB)
1)			SW!ARG(SWITCHES,P$$SWT)
1)			    ])
1)	    SW!SS (SLEEP,-1,SW$VRQ)
1)	endc
1)	    SW!SN (SUPERSEDE,1)
1)	    SW!SS (TIME,60)
1)	Ifcr PRELIMINARY thenc
1)	    SW!SN (TMPCOR,0)
1)	endc
1)	    SW!SS (TRULIMIT,0)
1)	    SW!SN (WATCH,0)
1)		])
1)4	!	Variable definitions for outer block;
1)	external boolean
1)		RPGSW			! true if run at start address plus one;
1)	,	TIM!, ZAP!, ORG!, NTQ!;	! true for interrupt causes;
1)	boolean DETACH!			! true if this frame IS detached;
1)	,	ERR!, STOP!, TRU!	! true when error occurrs or we stop;
1)	,	CCLSW, IACSW		! true if command-line, interactive;
1)	,	Normal			! true if normal ccl entry;
1)	,	Ext!Found, File!Error	! true if "." found or Error in filename;
1)	,	MakeLog			! true if making a log file;
1)	,	EOF			! true if at end of input file;
1)	,	Quoted			! true if parameter read is quoted;
1)	,	MaskWild;		! true if converting # & ? to frame number;
1)	own integer 
1)		Status			! current status of PCOM job;
1)	,	ErrorCondition		! current error indicator (if any);
****
2)3	!	Variable definitions for outer block;
2)	external boolean
2)		RPGSW;			! true if run at start address plus one;
2)	record!class Stream (	Integer Port;	! Port identifier ;
2)				Integer Time;	! Time limit ;
2)				Integer Tru;	! Tru limit ;
2)				Integer Err;	! Error flag ;
2)				Boolean TErr;	! Time-out error ;
2)				Boolean CErr;	! Command error ;
2)				Boolean Log;	! Logging data ;
2)				Boolean Eof;	! End of input file ;
File 1)	DSK:PCOM63.SAI[3,213211]	created: 1923 01-JUL-83
File 2)	DSK:WOMBAT.SAI[3,352477]	created: 1846 22-MAY-85

2)				Boolean Stop!;	! Stopped by user ;
2)				Boolean Tru!;	! Exceeded TRU limit ;
2)				Boolean Err!;	! An error occurred ;
2)				Boolean Quoted;	! Parameter is quoted ;
2)				Integer SChan;	! Search Channel ;
2)				Integer OChan;	! Output, #0 if writing log ;
2)				String  IChan;	! Input channel ;
2)				record!pointer (stream) Next
2)			    );
2)	own integer
2)		Status			! current status of WOMBAT job;
2)	,	ErrorCondition		! current error indicator (if any);
**************
1)6		 Usererr(0,0,"PCOM error: "&
1)		      (case !lh(ErrorCondition) of (
****
2)5		 Usererr(0,0,"WOMBAT error: "&
2)		      (case !lh(ErrorCondition) of (
**************
1)6			[else] Cvs( ErrorCondition )  ))&
1)		      " -- PCOM Aborting! ",
1)		    If Detach! then "" else "X");
****
2)5			[Error!FMT] "Formatting error",
2)			[Error!CMD] "Command error",
2)			[else] Cvs( ErrorCondition )  ))&
2)		      " -- WOMBAT Aborting! ",
2)		    If Detach! then "" else "X");
**************
1)6	Define PCOM!License = LC!WC lor LC!RC lor LC!SY;
1)	Simple Procedure IncLic;
****
2)5	Define WOMBAT!License = LC!WC lor LC!RC lor LC!SY;
2)	Simple Procedure IncLic;
**************
1)6		   lor PCOM!License, calli!SETLIC );
1)	end;
****
2)5		   lor WOMBAT!License, calli!SETLIC );
2)	end;
**************
1)8	    IncLic;				! Increase license;
1)	    Name _ CvUser( AUN );		! Convert username;
1)	    DecLic;				! Reduce license;
1)	    Return( Name );			! Return;
1)	end;
****
2)7	    integer CvnChan,CvnEof;
2)	    integer array Look[ 0 : !RBUNM+1 ];
2)	    IncLic;				! Increase license;
2)	    Look[ !RBCNT ]_ !RBUNM+1;		! PPN->USER;
2)	    Look[ !RBPPN ]_ !Xwd( 1,1 );	! (UFD)  ;
2)	    Look[ !RBNAM ]_ AUN;		! [user] ;
2)	    Look[ !RBEXT ]_ CVSIX("UFD   ");	! .UFD   ;
File 1)	DSK:PCOM63.SAI[3,213211]	created: 1923 01-JUL-83
File 2)	DSK:WOMBAT.SAI[3,352477]	created: 1846 22-MAY-85

2)	    Open(CvnChan_getchan,"DSK",'17,0,0, 0,0, CvnEof_-1);
2)	    If not ( CvnEof )
2)	     then begin
2)		Chnior(CvnChan,Look[!RBCNT],!CHLK);
2)		CvnEof_ not ( !SKIP! );
2)		Release(CvnChan);
2)	     end;
2)	    DecLic;				! Reduce license;
2)	    If ( CvnEof )
2)	     then Return( Cvos(!lh(Aun))&","&Cvos(!rh(Aun)) )
2)	     else Return( Cv6str(Look[!RBUNM])&Cv6str(Look[!RBUNM+1]) );
2)	end;
**************
1)8		[7] Cvs(101+R[1])r 2]),
1)		[else] Null
****
2)7		[7] Cvs(101+R[1])[2 for 2],
2)		[else] Null
**************
1)9	    Assign( $Second      Second$);	! Current seconds of minute;
1)	    Assign( $SS,         SS$);		! Current seconds of minute SS;
****
2)8	    Assign( $Second,     Second$);	! Current seconds of minute;
2)	    Assign( $SS,         SS$);		! Current seconds of minute SS;
**************
1)18	    /MAIL	- Send mail when the PCOM job completes
1)	    /NEWS	- Prints a message about any new enhancements
****
2)17	    /MAIL	- Send mail when the WOMBAT job completes
2)	    /NEWS	- Prints a message about any new enhancements
**************
1)18	    /WATCH      - Watch the progress of the detached PCOM process",
1)	Ifcr PRELIMINARY thenc  "
****
2)17	    /WATCH      - Watch the progress of the detached WOMBAT process",
2)	Ifcr PRELIMINARY thenc  "
**************
1)18	    /CHARS	- Wake up PCOM each character instead of each line
1)	    /PRINT:arg	- Print various debugging messages
****
2)17	    /CHARS	- Wake up WOMBAT each character instead of each line
2)	    /PRINT:arg	- Print various debugging messages
**************
1)18	      the PCOM command "":LOGFILE logfilename"" to designate a default
1)	      name for the users log-file.
****
2)17	      the WOMBAT command "":LOGFILE logfilename"" to designate a default
2)	      name for the users log-file.
**************
1)18	PCOM switches:
1)	    APPEND, DETACH, HELP, LICENSE, LOG, MAIL,
****
2)17	WOMBAT switches:
2)	    APPEND, DETACH, HELP, LICENSE, LOG, MAIL,
File 1)	DSK:PCOM63.SAI[3,213211]	created: 1923 01-JUL-83
File 2)	DSK:WOMBAT.SAI[3,352477]	created: 1846 22-MAY-85

**************
1)18	    BAIL, CHARS, PRINT, SLEEP",
1)	endc  "
****
2)17	    BAIL, CHARS, PRINT,
2)	endc  "
**************
1)18	 o Added /WATCH switch to automatically run the PEECOM
1)	   program to watch the progress of a detached PCOM job.
1)	 o Added /LICENSE switch which passes the current frame
1)	   license to the processing frame.  Use /NOLICENSE to
1)	   inhibit the passing of license to the child.
1)	Please refer to PCOM.DOC for further details.
1)	");
****
2)17	");
**************
1)23	    own integer array RB[0:3];	! run block for PCOM or LOGOUT;
1)	    own integer array HisStatus[0:1];
****
2)22	    own integer array RB[0:3];	! run block for WOMBAT or LOGOUT;
2)	    own integer array HisStatus[0:1];
**************
1)23	    Ifcr PRELIMINARY thenc
1)		If swTMPCOR > 0 then begin "don't bother with PCOM"
1)		  Print(Cvs(JX+1000)[2 for 3],"PCO.TMP contains the command line.");
1)		  Logout!Child;
1)		  EXIT( Status!EXIT );
1)		end;
1)	    endc
1)	    if ( swWATCH ) and ( swLOG )
****
2)22	    if ( swWATCH ) and ( swLOG )
**************
1)23		HRLI 1,!foGET;		! get PCOM in child frame;
1)		SETOM !skip!;
****
2)22		HRLI 1,!foGET;		! get WOMBAT in child frame;
2)		SETOM !skip!;
**************
1)23		HRLI 1,!foSVA;		! start PCOM at vector address;
1)		uuo!FRMOP 1,[-2];	! CCL start address (plus 1);
****
2)22		HRLI 1,!foSVA;		! start WOMBAT at vector address;
2)		uuo!FRMOP 1,[-2];	! CCL start address (plus 1);
**************
1)23		    HRLI 1,!foRVA;		! of status from child PCOM;
1)		    SETOM !skip!;
****
2)22		    HRLI 1,!foRVA;		! of status from child WOMBAT;
2)		    SETOM !skip!;
**************
1)23			HRLI 1,!foRVA;		! of error code in child PCOM;
1)			SETOM !skip!;
File 1)	DSK:PCOM63.SAI[3,213211]	created: 1923 01-JUL-83
File 2)	DSK:WOMBAT.SAI[3,352477]	created: 1846 22-MAY-85

****
2)22			HRLI 1,!foRVA;		! of error code in child WOMBAT;
2)			SETOM !skip!;
**************
1)23			Print("Unable to watch PCOM log file.", Crlf,
1)				"Please run (SYS)PEECOM.", Crlf );
****
2)22			Print("Unable to watch WOMBAT log file.", Crlf,
2)				"Please run (SYS)PEECOM.", Crlf );
**************
1)25		If Kequ(cv6str(calli(!xwd(-1,!gtnam),calli!GETTAB)),"PCOM")
1)		    then print("PCOM version ",Cvos(!lh(Memory['137])),".",
1)				Cvos(!rh(Memory['137]))  )
1)		    else begin "security code"
1)			Calli(cvsix("PCOM"),calli!PUTLSA);
1)			Calli(cvsix("PCOM"),calli!SETNAM);
1)		    end "security code";
****
2)24		If Kequ(cv6str(calli(!xwd(-1,!gtnam),calli!GETTAB)),"WOMBAT")
2)		    then print("WOMBAT version ",Cvos(!lh(Memory['137])),".",
2)				Cvos(!rh(Memory['137]))  )
2)		    else begin "security code"
2)			Calli(cvsix("WOMBAT"),calli!PUTLSA);
2)			Calli(cvsix("WOMBAT"),calli!SETNAM);
2)		    end "security code";
**************
1)27	    If File!Error then begin			! If error...;
1)		Fatal("COM Filename error """&Name&"""");
1)	      end
1)	      else begin
1)		Delim!list _ Del!Chr & Delim!list;	! add delimiter to list;
****
2)26	    If File!Error
2)	     then begin					! If error...;
2)		Fatal("COM Filename error """&Name&"""");
2)	     end
2)	     else begin
2)		Delim!list _ Del!Chr & Delim!list;	! add delimiter to list;
**************
1)27		open(IChan,IDevice,1,4,0,1024,BRK,EOF);	! open the file;
1)		lookup(IChan, Name, EOF_-1);		!   "   "   "  ;
1)		If EOF and not Ext!Found then		! if not there, then;
1)		  lookup(IChan, Name&Default!Ext, EOF);	!  try other extension;
1)		Check!Logfile( LogFileName );		! skip :LOGFILE if any;
****
2)26		open(IChan,IDevice,1,4,0,1024,BRK,EOF_-1);
2)		If ( EOF )				! abort if device is bad;
2)		 then Fatal("COM Device error """&IDevice&""" - Aborting.");
2)		lookup(IChan, Name, EOF_-1);		! open the file;
2)		If EOF and not Ext!Found then		! if not there, then;
2)		 lookup(IChan,Name&Default!Ext,EOF_-1);	!  try other extension;
2)		If ( EOF )				! if still not there;
2)		 then begin				!  print a message;
2)		    Fatal("COM Filename error ("& Cvos(!rh(EOF))&
File 1)	DSK:PCOM63.SAI[3,213211]	created: 1923 01-JUL-83
File 2)	DSK:WOMBAT.SAI[3,352477]	created: 1846 22-MAY-85

2)			  ") for file """&Name&"""");
2)		    S!Chan_ Lop(IChan);			!  clear channel table;
2)		    Return;				!  and abort;
2)		 end;
2)		Check!Logfile( LogFileName );		! skip :LOGFILE if any;
**************
1)27	    else if Length(KW) = 0 then 			! Pcom only;
1)	    else if Kq(KW,COM) then COM (CMD)			! Pcom only;
1)	    else if Kq(KW,DEFINE) then REASSIGN(CMD)		! Defer;
****
2)26	    else if Length(KW) = 0 then 			! WOMBAT only;
2)	    else if Kq(KW,COM) then COM (CMD)			! WOMBAT only;
2)	    else if Kq(KW,DEFINE) then REASSIGN(CMD)		! Defer;
**************
1)27	    else if Kq(KW,LOGFILE) then LOGFILE(CMD)		! Pcom only;
1)	    else if Kq(KW,PARAMETERS) then PARAMETERS(CMD)	! Pcom only;
1)	    else if Kq(KW,QUIT) then QUIT			! Defer;
1)	    else if Kq(KW,REMARK) then				! Pcom only;
1)	    else if Kq(KW,SEND) then SEND (CMD)			! Pcom only;
1)	    else if Kq(KW,STOP) then STOP			! Defer;
****
2)26	    else if Kq(KW,LOGFILE) then LOGFILE(CMD)		! WOMBAT only;
2)	    else if Kq(KW,PARAMETERS) then PARAMETERS(CMD)	! WOMBAT only;
2)	    else if Kq(KW,QUIT) then QUIT			! Defer;
2)	    else if Kq(KW,REMARK) then				! WOMBAT only;
2)	    else if Kq(KW,SEND) then SEND (CMD)			! WOMBAT only;
2)	    else if Kq(KW,STOP) then STOP			! Defer;
**************
1)27	    else Fatal("illegal PCOM command "":"&KW&"""");
1)	end	"COMMAND";
****
2)26	    else Fatal("illegal WOMBAT command "":"&KW&"""");
2)	end	"COMMAND";
**************
1)29	    Ifcr PRELIMINARY thenc
1)	      if swSLEEP > 0 then
1)		Sleep!Time _ !Xwd( 1,swSLEEP );	! he asked for it;
1)	    endc
1)	If ( FileLicense )			! if file has license then use it;
****
2)28	If ( FileLicense )			! if file has license then use it;
**************
1)29	IntIni (Intvar_INTPRO, PORT,		! enable interrupts on port;
1)		Ochan, FilePage, FileSize,	! LogChan, initial page & size;
1)		If detach!			! how to type on parent terminal;
1)		 then 0				!  (detached?) no printing;
1)		 else !Xwd(-1,!AXOCI)   );	!  else char immediate;
1)	IntLog( DoLog );			! initialize logging on channel;
1)	SetTimeLimit( swTIME );			! set (default) timeout to 60 minutes;
****
2)28	IntPrt(	Port );				! enable interrupts on port;
2)	SetTimeLimit( swTIME );			! set (default) timeout to 60 minutes;
**************
1)29		then Command(S)			!	process PCOM command;
File 1)	DSK:PCOM63.SAI[3,213211]	created: 1923 01-JUL-83
File 2)	DSK:WOMBAT.SAI[3,352477]	created: 1846 22-MAY-85

1)		else OutPtr(Port,S);		!	send command to slave job;
1)	  end;
1)	  Forget!Substitutions;			! clear current substitutions;
****
2)28		then Command(S)			!	process WOMBAT command;
2)		else OutPtr(Port,S);		!	send command to slave job;
2)	  end "one file";
2)	  Forget!Substitutions;			! clear current substitutions;
**************
1)29	  If Delim!list neq Del!Chr then	! if delimiter mangled then;
1)	    Set!Delimiter( Delim!list );	!   use current top of stack;
1)	  EOF _ false;				! clear end of file;
1)	end;
1)	Status _ Status!DONE;			! let parent know we are done;
****
2)28	  If ( Delim!list neq Del!Chr )		! if delimiter mangled then;
2)	   then Set!Delimiter( Delim!list );	!   use current top of stack;
2)	  EOF _ ERR!;				! if no errors, clear end of file;
2)	end "main loop";
2)	Status _ Status!DONE;			! let parent know we are done;
**************
1)29	end 	"PCOM" $
****
2)28	end 	"WOMBAT" $
**************
   i@?