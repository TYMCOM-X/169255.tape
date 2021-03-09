From: DENCOFF@X62.Tymnet 
Date: Tue, 23 Dec 86 19:30:41 PST 
To: carl 
Subject: "We will not be using your reservation"... 

We will not be using your reservation at Yosemite.  In fact, we'll not be going 
up there either.  Thanks for waiting for our decision, before notifying the
people up there.  Merry Christmas to you both!  /Dennis & Nancy
From: CARL@X62.Tymnet 
Date: Tue, 30 Dec 86 10:42:45 UT 
To: carl 
Subject: "EXECX: 1) if using GOTO in starting, "... 

EXECX:
  1)  if using GOTO in starting, we do not need --skipped-- --starting--
      info... it does get cumbersome.

  2)  at least the starting isn't necessary.

  3)  while we're at it, if it hits a STOP or QUIT or other error,
      if we show the error and then dump the rest of the file(s) in
      the same indented format, it will be obvious...

  4)  think more on how to get one line at a time... a 1-line buffer that
      we print may be the only way, but i hate to use so much string space.

From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Tue, 30 Dec 86 12:16:14 PST 
To: Carl A Baltrunas <Carl@X930.Tymnet>, Osman Guven <osman@X930.Tymnet>, Joe
	Smith <jms@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X62.Tymnet> 
Subject: Significant change to EXEC commands 

Due to the overwhelming cry for monitor commands that do not
conflict with job processor EXEC commands the following is
now true in EXECX %1(216) and later:

:command   is ALWAYS a command to the job processor
.command   is ALWAYS a command to the operating system
*line      is unchanged (program data)
=line      is unchanged (program data)~r

For TOPS-10 and TOPS-20 command files, a pseudo mode is used to
designate commands which works like the old EXECX, with the one
difference that in TOPS10 mode, "." is the command prefix char
and in TOPS20 mode, "@" is the command prefix characer.  In both
of these modes, :command is illegal and ::label does not work!

in %1(217) and later, the pre-declared keyword $Format contains
the string "TYMCOMX", "TOPS10" or "TOPS20" and may be set by the
user.  in some future version of SUBMIT the FORMAT option will
allow users to submit jobs in each of the available formats.

/Carl                The documentation should be updated and shipped
                     at the same time %1(216) or later is distributed.
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Sun, 4 Jan 87 5:00:20 PST 
To: Carl A Baltrunas <Carl@X930.Tymnet>, Osman Guven <osman@X930.Tymnet>, Joe
	Smith <jms@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X62.Tymnet> 
Subject: System 65 currently running on a KI 

I send mail to CRALST on D65 currently running D79's KI monitor letting
operations know that some software may not work properly on a KI if it
was built on/for a KL.

Did anyone know they swapped the hardware from a KL to a KI?

/Carl
From: DENCOFF@X62.Tymnet 
Date: Mon, 5 Jan 87 22:20:52 PST 
To: carl 
Subject: "I played a little Nice!! I need"... 

I played a little 'cards'.  Nice!!  I need some practice in my Bridge, it's 
been too long since I have played.  I'm much better than I was an hour ago.  It's
like riding a bicycle:  you never forget how, but you sure aren't as good as 
you once were!
-D.-

From: DENCOFF@X62.Tymnet 
Date: Wed, 7 Jan 87 16:03:32 PST 
To: carl 
Subject: "Re. the SHOW command. It's been"... 

Re. the (defunct) SHOW command.
It's been replaced by LIST, ... except in INSERT's OPTIONS specification
dialog.  SHOW at the "OPTIONS>" prompt is an orphan, left out there on its
own.  I suggest that "SHOW" be replaced with "LIST" in there, also. -D.-
From: TXSTEXT@X62.Tymnet 
Date: Tue, 20 Jan 87 12:03:02 PST 
To: carl 
Subject: "Hi! Please print filename: JOB.LET"... 


Hi!

Please print filename: JOB.LET in system 62 and bring them home with you today, so that I can put them into tomorrow's mail  
so that I can put them into tomorrow's mail. Thanks, love.

/Wad
From: Dennis Coffey (Tymcom-X Systems) <DenCoff@X62> 
Date: Wed, 21 Jan 87 9:22:04 PST 
To: OPER@X62.Tymnet 
Cc: jms, carl 
Subject: Re: "re: Operations requess about SUPCHK."... 
In-reply-to: your message of Wed, 21 Jan 87 4:05:16 PST

Carl,

I've looked at (HELGEM:62) SUPCHK.WOK, and at the SUPCHK.SAI in
(SUBMIT:33)SUPCHK.FDM.  I did a DIFF on the SUPCHK.WOK & SUPCHK.SAI files in
(HELGEM:62).  There is no significant difference between the 2 versions, in
the 'CheckMail' routine.  

I looked at the 'CheckMail' routine.  I have seen some possible problems.
That routine has some code I don't understand.  (Of course, that may be due to
the level of my knowledge of SAIL.)

Operations tells me that SUPCHK performs the 'something wrong' loop in the
CheckMail routine every 15 minutes, since Bill's patch to RPG MAIL.
From: Dennis Coffey Tymcom-X <DENCOFF@X62> 
Date: Tue, 20 Jan 87 9:38:05 PST 
To: Bill Soley <WRS@C39.Tymnet> 
Subject: Your 'junk mail' problem. 
Resent-from: Dennis Coffey (Tymcom-X Systems) <DenCoff@X62> 
Resent-date: Wed, 21 Jan 87 11:19:32 PST 
Resent-to: carl 

This is pretty much what I had called you about yesterday afternoon.  I
believe I have found another possible route to fix your "message returned
because mail not read in 30 days" problem.  

The data centers use a program (SUPCHK) to monitor all OPER mail, all BATCH
requests, etc., on all hosts in their data center.  The program would not be
difficult to change, to enable it to run RDMAIL.  

This would take care of the problem of TUMS mail not read by OPER.  It would
not take care of other users, though.  Maybe we should leave things as they
are.  What do you think?

-Dennis-  (116, X2588)
Received: from X930.Tymnet by X62.Tymnet; Thu, 22 Jan 87 1:22:04 PST
Return-path: <JMS@X930.Tymnet> 
From: Joe Smith <JMS@X930.Tymnet> 
Date: Thu, 22 Jan 87 1:14:30 PST 
To: CARL@X62.Tymnet 
Subject: Re: JOBS.CTL 
In-reply-to: your message of Thu, 22 Jan 87 0:31:47 PST

JOBS.CTL is in (PJ).  It is on all systems so as to be a "human readable"
copy of JOBS.DAT.  Copy it to your directory, edit and CPY it, then PCOM it.

BTW: 100% of the built-in font is 6.25 line per inch.  This allows 66 lines
to fit in 10.56 inches, instead of requiring 11 inches.  The normal 6 lines
per inch is actually 104% on the LN03.

Received: from X930.Tymnet by X62.Tymnet; Thu, 22 Jan 87 10:35:22 PST
Return-path: <JMS@X930.Tymnet> 
From: Joe Smith <JMS@X930.Tymnet> 
Date: Thu, 22 Jan 87 10:30:29 PST 
To: CARL@X62.Tymnet 
Subject: Re: "grrrrrrr stupid FILDDT!!! DEC's"... 
In-reply-to: your message of Thu, 22 Jan 87 1:25:52 PST

FILDDT won't allow you to add a symbol to a nonexistant symbol table.
(SYS)FILDDT (Tymshare's version) includes JOBDAT symbols.
(MPL)FILDDT (DEC's version) has no symbols at all.
(SYS)DECDDT now has 1 symbol, "%1000=:1000".  Now you can use "VALUE<SYMBOL:".
From: Dennis Coffey (Tymcom-X Systems) <DenCoff@X62> 
Date: Thu, 22 Jan 87 10:31:45 PST 
To: carl 
Subject: resending msg. 

I just noticed the Bill mistyped your username/address on this msg.  He 
probably has received it returned from Postmaster and has resent it to you.
In case he hasn't, here's a(nother) copy for you:
----------------------------------------------------------------
Received: from B39.Tymnet by X62.Tymnet; Wed, 21 Jan 87 5:41:04 PST
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Wed, 21 Jan 87 5:39:02 PST 
To: calr@930 
Cc: dencoff 
Subject: MAILER needs to run! 

Carl, I've been going around and checking TUMS on all systems and cleaning
up some bad files that Ron left around.  In the process I've been noticing
that on many systems, MAILER has not run in many days.  It is important for
it to run periodically or mail will queue up and not get delivered in
cases where the recipient(s) are not local.  If there is anything I can do,
let me know.  -Bill
----------------------------------------------------------------

Carl,
  I noticed and told Bill that the full, needed set of mailer programs was 
not in (MAIL) on all hosts.  I've since checked and they are all there -- 
where needed -- on all Tymcom-X hosts.

  Shall I check and re-enter (MAIL)MAILER into the queues?

-D.-



From: Dennis Coffey (Tymcom-X Systems) <DenCoff@X62> 
Date: Mon, 26 Jan 87 8:37:48 PST 
To: (Monitor Group:), Carl, Osman, Joe <JMS> 
Cc: Craig <FletcherC> 
Subject: Absence from office. 

I'll not be in today.  I have a bad cold, with laryngitis.  The cold is pretty
severe, but I am now on the mend.  I hope to be in Tuesday.
-D.-

From: TXSTEXT@X62.Tymnet 
Date: Mon, 2 Feb 87 14:23:31 PST 
To: carl 
Subject: "Hi! This is just s status update...I'm"... 


Hi!

This is just s status update...I'm working on my costume now; I should have it
done (except for sequins) today...I'll sew the Christmas trees (smirk) on too...I still feel crummy (crumby?)...and I just have one question about Gold Skate:
Will you help me clean the house before we go? I mean, really clean it, dust, vacuum, mop the floors, etc., etc., etc., etc...if you will, it will reallp me feel better and allow me to concentrate on other stuff. I just don't want to
go away and come back to a dirty home...it hasn't been cleaned all over for a while eaither, so it could use it. If you will help me,  I won't sic Czazu on you
(How's that for a bribe?) Love, Waddle
From: DENCOFF@X62.Tymnet 
Date: Thu, 5 Feb 87 15:27:39 PST 
To: carl, submit 
Subject: "A bug in SUBMIT's verifying wild-card"... 

A bug in SUBMIT's verifying wild-card job I.D.s.
I believe the following happens, and is undesirable:  
A user with access to other users (ie: with Account Supervisor status) gets
different responses to the use of a wild-card character in the job ident-
ification for the command, depending on whether he has a job which meets
the I.D. specs provided.

E.g.:  I had a job entered, name:   (DENCOFF)TST1.  I entered 4 more jobs, all
with name:  (NOT-DENCOFF)TST1.
I gave the command:  DELETE (NOT-DENCOFF)TST1 *.  SUBMIT asked for verification
for each deletion.
I deleted 2 of the four jobs this way.
I gave the command:  DELETE TST1 *.  All 3 remaining TST! jobs were deleted 
immediately:  two from (NOT-DENCOFF) and one from (DENCOFF).

i will test further to ascertain whether the non-verifying happens when no
username is provided, or when a job with the user's username matchs the job
specs provided.

-Dennis-
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Fri, 6 Mar 87 18:41:57 PST 
To: wrs, jms 
Cc: info 
Subject: New version %5 of WHEN 

A newer version of the WHEN program is now in SPL and XEXEC on system 62.
I've removed the explicit calls to SW!INI which now get performed implicitly
by ARGPAR.  New switch /USERS (yes, the same as the "input-file" list) so
names can be read reasonably from SWITCH.INI (only switches are legal!!!).
/NOJOBS is now /JOBS and /NOLOGOUTS is now /LOGOUTS.  With the newest copy
of ARGPAR any "untyped" item can be specified as /xxx or /NOxxx and the
corresponding values NOVAL='7777 and NTVAL='7776 are found in props(xxx).
Removed /SINGLE since it is the same as /NOMULTIPLE which is the default.

!WHEN ?
Syntax:
   WHEN LOGFILE = USERS /options

Options:
   /USERS:string
   /MULTIPLE
   /JOBS
   /LOGOUTS
   /LAST

From: Dennis Coffey (Tymcom-X Systems) <DenCoff@X62> 
Date: Tue, 10 Mar 87 9:08:52 PST 
To: (Monitor Group:), Carl, Osman, Joe <JMS> 
Cc: Craig <FletcherC>, TXSSup 
Subject: Mallenkrodt's (M33)MA034P.SAV monitor. 

This monitor, in (M33:169), is ... /P-10, not ... /P-14.  If ... /P-14 is the
version needed, we need to get it from X930, or patch it on M169.
-D.-
From: Dennis Coffey (Tymcom-X Systems) <DenCoff@X62> 
Date: Thu, 12 Mar 87 11:19:31 PST 
To: carl 
Subject: D55's BATCH eof flag prob. 

Carl,

  Thanks for the fische.  I found that (*1BATCH) PPRBAK.DAT was missing the
termininating ^X^P^Z sequence.  (^X => end of "deliver instr."  text block; 
^P => end of individual PPR; ^Z => eof.)  Now fixed.  Thanks for your
assistance.
-D.-
Received: from X930.Tymnet by X62.Tymnet; Thu, 12 Mar 87 13:55:09 PST
Return-path: <TXSTEXT@X930.Tymnet> 
From: TXSTEXT@X930.Tymnet 
Date: Thu, 12 Mar 87 13:50:51 PST 
To: carl @62 
Subject: "Hi...I finally got back from doing"... 

Hi...I finally got back from doing errands...I found a "pickanick basket" for
Linda & John...I'll wait til you get home to wrap it, so you can see it first.
I guess I caught a head/chest cold, 'cause I feel kinda wimpy...(sigh). See
you when you get home. Love, Wad
Received: from X930.Tymnet by X62.Tymnet; Thu, 12 Mar 87 13:55:12 PST
Return-path: <TXSTEXT@X930.Tymnet> 
From: TXSTEXT@X930.Tymnet 
Date: Thu, 12 Mar 87 13:53:33 PST 
To: carl @x62 
Subject: "Hi...It's me again...I forgot"... 


Hi...It's me again...I forgot to tell you that I just scratched off the lottery ticket I bought on 3/11, and I won $4.00!...well, it's a start, right? /Wad
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 12 Mar 87 22:42:52 PST 
To: Carl A Baltrunas <Carl@X930.Tymnet>, Osman Guven <osman@X930.Tymnet>, Joe
	Smith <jms@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X62.Tymnet> 
Subject: Fremont power failure 

The fremont data center took a power failure tonight... so if
you're wondering why some of the machines were down that is why.

No hotline call... I was curious why I couldn't build circuits to
any fremont hosts, but Dallas was up... sigh.

/Carl
From: TXSTEXT@X62.Tymnet 
Date: Tue, 17 Mar 87 15:04:05 PST 
To: carl @x62 
Subject: "Hi! It's me. Please print my file"... 


Hi!

It's me. Please print my file labelled "SMS" on system 62, and bring it home with you tonoc Okay? ILYVMADYFI /Wad
From: TXSTEXT@X62.Tymnet 
Date: Tue, 17 Mar 87 17:53:38 PST 
To: carl @ x62 
Subject: "Hi! It's me; I tried to find you"... 


Hi!

It's me; I tried to find you on the system, but you're not there...I wanted to
ask you if you'd like to go skating at San Ramon tonoc...I just thought it
would be a good pre-depo stress reliever...please call asap and let me know,
okay? Love, /Wad
Received: from B39.Tymnet by X62.Tymnet; Sat, 21 Mar 87 16:14:29 PST
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Sat, 21 Mar 87 17:00:35 PST 
To: CARL@X62.Tymnet 
Subject: Re: "Bill, I am drafting a list of"... 
In-reply-to: your message of Fri, 20 Mar 87 18:17:43 PST

I'm mostly concerned about providing a graph as opposed to a tree.
If each license name had several license records, then you could
have two people give seperate license to a third, for example,
John might give Julie WF license, and Bob might give her AC license.
It would keep track of who gave what (even if it overlapped) and
so Bob could take away only what he gave, and so forth.  Likewise,
Julie would have a manager who might not have as much license as
she does, but could still take license away and cancel her name.
Only someone having license greater than or equal to somebody could
change the password - then only if they are her manager.

I agree about a bit saying - no good for now.  Very important.  Its
also useful to have different people control the license for dif-
ferent systems.

-Bill

(need to talk)
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Mon, 30 Mar 87 12:15:12 PST 
To: William R Soley <WRS@B39.Tymnet> 
Subject: SETOP 

We are in agreement of "Graph" vs. "Tree" for granting of licenses.  I've
taken that into account in my record descriptions.  We do need to talk
since we are duplicating effort by not talking...

When are you available, and where?

System 930 has been down since last thursday & I just returned from vacation
so I am around and about, so please send mail to me on system X62.

/Carl
From: Dennis Coffey (Tymcom-X Systems) <DenCoff@X62> 
Date: Wed, 1 Apr 87 9:21:19 PST 
To: CARL@X62.Tymnet 
Subject: Re: "Dennis, Two things... 1) It is"... 
In-reply-to: your message of Tue, 31 Mar 87 20:28:55 PST

Carl,
  Re. your two things:

1)  I didn't know about the microbase/MHX/EXECX problem.  Thanks for the
advice!

2)  I couldn't get the LIC option to work.  I tried 4 times!  I figured:
	a) it was the old SUBMIT LIC problem,
	b) I wanted to get my job done,
	c) I thought 62 was one of the most secure Tymcom-X hosts,
	d) and I planned to get rid of the password in the .CTL file as soon
as the LIC problem was fixed!  

Hell, I was upset with you for not having fixed SUBMIT's LIC option.  Here's a
sample of what I got:

	SUBMIT> ins clean,log=clean.ctl
	OPTIONS[Insert]: lic hf
	Oper name: sppoper
	Password: 
	 ?No license set for Job.

The 'clean' job with the WF license had been entered on another day.  License
had worked then, but wouldn't work yesterday when I tried to enter the two
jobs!  That's when I put the license into the .CTL file.


	Question:  Why did the LIC option not work yesterday, after it had
worked on a previous day?
From: Dennis Coffey (Tymcom-X Systems) <DenCoff@X62> 
Date: Wed, 1 Apr 87 9:48:51 PST 
To: CARL@X62.Tymnet 
Subject: Re: "Re: These are the kind of jobs"... 
In-reply-to: your message of Tue, 31 Mar 87 20:33:40 PST

I have other jobs that I run monthly, in addition to these weekly clean-ups.
these jobs need to be run weekly.  I admit: it was a foolish oversight, to not
think of the high probability of the job getting hung on a 'down' host.
From: Dennis Coffey (Tymcom-X Systems) <DenCoff@X62> 
Date: Wed, 1 Apr 87 9:54:27 PST 
To: CARL@X62.Tymnet 
Subject: Re: "Dennis, up on soapbox< I deleted"... 
In-reply-to: your message of Wed, 1 Apr 87 0:09:43 PST

Carl,

I initially responded in kind to your "JUMPING UP AND DONW and  SCREAMING".
My thought, when I was unsuccessfully trying to use the LIC option was:  "If
keeping passwords out of files is so important to him,  why the --deleted--
doesn't he fix the LIC option?"
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:39:46 PST
Return-path: <TXSTEXT@X930.Tymnet> 
From: TXSTEXT@X930.Tymnet 
Date: Wed, 1 Apr 87 17:36:36 PST 
To: carl @ x62 
Subject: "Hi! Please print my file, name"... 


Hi!

Please print my file, name MILLS.PEN, ON 62 (OR IS IT 930?...I'm confused, at
this point) on the laser printer. Thnaks. Love, /Wad
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:39:46 PST
Return-path: <TXSTEXT@X930.Tymnet> 
From: TXSTEXT@X930.Tymnet 
Date: Wed, 1 Apr 87 17:36:36 PST 
To: carl @ x62 
Subject: "Hi! Please print my file, name"... 


Hi!

Please print my file, name MILLS.PEN, ON 62 (OR IS IT 930?...I'm confused, at
this point) on the laser printer. Thnaks. Love, /Wad
Received: from EMSTXS.Ontyme.Tymnet by X62.Tymnet; Mon, 6 Apr 87 14:44:37 PDT
From: IPC.L/MORRIS@EMSTXS.Ontyme.Tymnet 
Date: 02 APR 87 16:08:32 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Message-id: A42731@Ontyme.Tymnet 
Subject: PDP-10 Wish list 
PDP-10WISHLIST: 

                           M E M O R A N D U M


     ATTN:  CARL BALTRUNAS

     FROM:  LANDA MORRIS

     SUBJ:  PDP-10 WISH LIST


     CARL, BELOW IS A LIST OF ITEMS RPM HAS DECIDED WE WOULD LIKE TO
HAVE AVAILABLE FOR PDP-10 MONITORING.  I AM SENDING IT TO YOU FOR YOUR
REVIEW TO SEE WHICH ITEMS ARE ACTUALLY FEASABLE.


     1.  CPU PERCENTAGE WITH GRAPH (CURRENTLY AVAILABLE WITH READST)

     2.  NUMBER OF JOBS LOGGED IN  (READST & ICP)

     3.  NUMBER OF USERS ACTIVE    (READST & ICP)

     4.  TOP SYSTEM USERS

     5.  MINIMUM & MAXIMUM LEVELS OF ALL SPECS

     6.  LOAD:  LOST TIME & USE

     7.  EXPANSION FACTOR OF SYSTEM TOTALS

     8.  RESOURCE AVAILABILITY INDEX  (MEASURED PER USERID OVER SYSTEM)

     9.  AVAILABLE PAGES     (PSPS)

    10.  DISK I/O CONTENTION

    11.  INCORPORATE THESE INTO SYSTAT


     SOME OF THESE SPECS ARE CURRENTLY AVAILABLE ON THE 370 SYSTEMS WITH
VMAP AND MAY REQUIRE MORE CLARIFICATION FOR USE ON THE 10'S.

     I CAN BE REACHED AT EX. 6870.


THANK YOU,
LANDA/RPM
Received: from B39.Tymnet by X62.Tymnet; Mon, 6 Apr 87 15:33:18 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Mon, 6 Apr 87 15:07:50 PDT 
To: WRS@C39.Tymnet 
Cc: CARL@X62 
Subject: "CARL HAS GOTTEN TO THE POINT WHERE"... 

CARL HAS GOTTEN TO THE POINT WHERE A MEETING WOULD BE PRODUCTIVE (SEE HIS
FILE ON X62 SETOP.PRP) ISUGGEST THIS FRI. 4/10, HERE. LUNCH 
11;30, THEN 
MEETING HERE - IF NOT THEN , HOW ABOUT 4/13? OR??????
Received: from B39.Tymnet by X62.Tymnet; Mon, 6 Apr 87 16:44:40 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Mon, 6 Apr 87 16:38:27 PDT 
To: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Cc: CARL@X62 
Subject: Re: "CARL HAS GOTTEN TO THE POINT WHERE"... 
In-reply-to: your message of Mon, 6 Apr 87 15:07:50 PDT

Those dates are all bad.  Maybe after the 13th, but its going to
be a very crazy week.  I leave for 3 weeks vacation on the
18th.  Sigh.  -Bill
From: Joe Smith <JMS@X930> 
Date: Mon, 6 Apr 87 21:22:14 PDT 
To: Monitor Group <JMS@62>, Carl@62, Osman@62 
Cc: FletcherC@62, DenCoff@62 
Subject: /B02 includes ONCE dialog in CTYLOG. 

One of the changes in /B02 is to make all output from ONCE go into the
CTYLOG buffer.  This way we can tell if the operator went into FILES
dialog.  See (M33)CTYLOG.62 for an example.  /Joe
Received: from F26.Tymnet by X62.Tymnet; Tue, 7 Apr 87 10:05:16 PDT
Return-path: <JMS@X930> 
From: Joe Smith <JMS@X930> 
Date: Tue, 7 Apr 87 10:00:15 PDT 
To: CARL@62 
Subject: XEXEC not running on 26 

It was just sitting there, sleeping, not running any jobs.  I did not see
anything in the JQL files to show why it stopped before 6-Apr-87 7:30.
When I CSTARTed it, the messages on my terminal said "starting processor"
then "abort enter" on streams 7 and 8.  That looked strange because there
was no indication that it had started streams 1-8.  That info went to the
JQL file but not the console port.
Received: from B39.Tymnet by X62.Tymnet; Tue, 7 Apr 87 11:19:50 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Tue, 7 Apr 87 11:13:16 PDT 
To: William R. Soley <WRS@B39.Tymnet> 
Cc: CARL@X62 
Subject: Re: "CARL HAS GOTTEN TO THE POINT WHERE"... 
In-reply-to: your message of Mon, 6 Apr 87 16:38:27 PDT

SOORY TO HEAR - VACATION IDEA SOUNDS GREAT, BUT??!!! INVIEW OF THAT, 
HOW ABOUT  NAMING A DAY IN HOPES, AT LEAST (LEAST PREFERABLE IS TUES).
WE CAN ALWAYS CANCEL - ELSE WE INTO MIDDLE OF MAY!!!!!
Received: from B39.Tymnet by X62.Tymnet; Thu, 9 Apr 87 19:14:27 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Wed, 8 Apr 87 1:36:19 PDT 
To: CARL@X62.Tymnet 
Subject: Re: "BIll, Anytime we can talk or get"... 
In-reply-to: your message of Mon, 6 Apr 87 17:19:52 PDT

I'll have to let you know about my schedule next week.  The way they do
it, not only am I busy, but I don't know much in advance when I have any
openings.  They frequently schedule work through lunch and have it brought
in.  *SIGH*  -Bill
Received: from B39.Tymnet by X62.Tymnet; Fri, 10 Apr 87 19:29:27 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Fri, 10 Apr 87 19:26:16 PDT 
To: CARL@B39.Tymnet 
Subject: Re: "By the way, I found the password"... 
In-reply-to: your message of Fri, 10 Apr 87 11:13:10 PDT

Thanks -Bill
From: Joe Smith <JMS@X930> 
Date: Sat, 11 Apr 87 20:35:20 PDT 
To: Monitor Group at X62 <JMS@62>, Carl@62, Osman@62 
Cc: FletcherC@62, DenCoff@62 
Subject: Hotline call Saturday night 

11-Apr-87 19:20/Joe
Contact: System F29, Fremont (415)498-2588
Problem: After move to Fremont, unable to get directory of new ALL FILES tape.
         TITO reports several million BPI.  Drives work on 26 but not 29.
Fix:     Sounds like problem lies after SA10 and before tape drive.  Suggested
         that FSC check tape controller.

From: Joe Smith <JMS@X930> 
Date: Sat, 11 Apr 87 22:01:08 PDT 
To: Monitor Group at X62 <JMS@62>, Carl@62, Osman@62 
Cc: FletcherC@62, DenCoff@62 
Subject: TMCS.DOC 

(NETDVDOC:56)TMCS.DOC has been telecopied to (TYMNET:62) for easy access.
From: Joe Smith <JMS@X930> 
Date: Sun, 12 Apr 87 18:50:41 PDT 
To: CARL 
Subject: TTR can't handle tape read errors. 

TTR is as bad as TITO in that it requires manual intervention to get it to
continue after a tape read error.  The real killer is when there are
consecutive bad spots on the tape.  TTR thinks it saw the double EOF and
give up, whereas TITO continues in this case.  In particular, TTR aborts
near the beginning of 930's ALL FILES tape C4.  I had to use TITO to get
the directory of the remaining 90% of the tape.  Ugh.
Received: from B39.Tymnet by X62.Tymnet; Mon, 13 Apr 87 10:31:19 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Mon, 13 Apr 87 10:23:21 PDT 
To: CARL@B39.Tymnet 
Cc: WRS@C39.Tymnet 
Subject: Re: "Wayne, I'm not sure if we decided"... 
In-reply-to: your message of Thu, 9 Apr 87 18:56:25 PDT

SORRY NOT TO CLARIFY EARLIER - HAVE BEEN OUT WITH BAD COLD. STILL NO
WORD FROM BILL (DID YOU GET ME MEMO SUGGESTING SOME DAY THIS WEEK?)
ANYWAY, HOW ABOUT WED, MY OFFICE @ 2 PM - I HOPE BILL CAN JOIN US, 
BUT IF NOT, JUST THE TWO OF US.
From: Carl A Baltrunas <Carl@X62.Tymnet> 
Date: Mon, 13 Apr 87 16:15:07 PST 
To: Wayne D Bartlett <BARTLETW@B39.Tymnet> 
Subject: Wednesday @ 2 

Wednesday at 2 should be fine.  I have our regular meeting on Wed at 10
here at liberty, but should have no trouble getting there by 2.

Yes, I did get your other mail (finally, ... inter-system MAIL was out
for a day and inter-net mail was out for another day or so since someone
in validations "accidently" removed username MAIL from the CUD and we
had to re-install it with a new password).  Agenda item: Is there any
design allowance to flag a username in the CUD so that it is treated in
a special manner, such that major changes cannot be performed on that
username without additional verification, i.e. "special account - Are you
SURE?" so that thigs do not get cancelled in the future.

/Carl
From: Joe Smith <JMS@X930> 
Date: Mon, 13 Apr 87 17:34:50 PST 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: How to reload micronet after power failure. 

I have created (INFO)RESTRT.MEM and added it to the INFO tree as "RESTART".
It tells what needs to be loaded first after a power failure.  The document
lists our current configuration - it will be updated as the F3's and 2020's
get moved around.  /Joe
Received: from B39.Tymnet by X62.Tymnet; Mon, 13 Apr 87 17:55:34 PST
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Mon, 13 Apr 87 18:52:32 PDT 
To: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Cc: CARL@B39.Tymnet 
Subject: Re: "Wayne, I'm not sure if we decided"... 
In-reply-to: your message of Mon, 13 Apr 87 10:23:21 PDT

Sorry guys.  This week is hopeless.  I'll try again after I get
back from vacation on the week of the 18th March.  *SIGH*  I may
never see me again.  -Bill
From: Carl A Baltrunas <Carl@X62.Tymnet> 
Date: Mon, 13 Apr 87 18:08:28 PST 
To: William R Soley <WRS@B39.Tymnet> 
Subject: Sigh...Hopeless 

Well,
  Have a nice vacation... I guess visiting relatives isn't necessarily all
that relaxing, but everyting is relative.  See you when you get back...

  I'll be here till 8-Apr when I go back to Maryland to visit my parents &
such myself.  We'll return on 18-May...

/Carl
Received: from B39.Tymnet by X62.Tymnet; Tue, 14 Apr 87 18:05:53 PST
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Tue, 14 Apr 87 19:03:49 PDT 
To: carl@62 
Subject: Wayne, msg from 

Wayne called and said he won't be in tomorrow in case you
were planning to meet with him.  He is pretty sick.  -Bill
From: Carl A Baltrunas <Carl@X62.Tymnet> 
Date: Tue, 14 Apr 87 20:24:53 PST 
To: William R Soley <WRS@B39.Tymnet>, Wayne D Bartlett <BARTLETW@B39.Tymnet> 
Subject: Meeting with Wayne 

Ok...  Got your message about the meeting cancellation.  I shall await
a message from Wayne, to reschedule.

Wayne:  I am pretty much "open" as far as scheduling... as long as I
        have a day or so of notice.

/Carl
Received: from B39.Tymnet by X62.Tymnet; Tue, 14 Apr 87 23:41:43 PST
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Wed, 15 Apr 87 0:34:15 PDT 
To: Gazel Tan <GAZEL@B39>, dchang, rodney@minimac, dlasater, Bill Euske
	<NTD.W/Euske@Ontyme.Tymnet> 
Subject: vacation 
Resent-from: William R. Soley <WRS@B39.Tymnet> 
Resent-date: Wed, 15 Apr 87 0:40:08 PDT 
Resent-to: carl@62 

Yet another vacation memo...
I'll be out of town April 18 through May 11, inclusive.  I will be
reading mail from time to time.  I expect this little trip to reduce
my brain damage back to the single digit range.  See you in May!
-Bill
From: TXSTEXT@X62.Tymnet 
Date: Wed, 15 Apr 87 18:10:00 PDT 
To: carl @ x62 
Subject: "Hi! Here's what I came up with"... 


Hi!

Here's what I came up with from adding up the checks:

Air Conditioning : $2000.00 (home improvments?)
Dentist (Hamako) : $182.58
Kaiser           : $1051.10 (does not include allergy/infertility visits or
mileage)
The Back Doctors : $876.00

I'll go look for the '85 tax return info, and call you if I find it, Okay? 
I love you berry mutz (mutts?) /Wad
From: JMS@X62.Tymnet 
Date: Thu, 16 Apr 87 13:15:47 PDT 
To: carl 
Subject: "Did you know Rutgers is host 102"... 

Did you know Rutgers is host 102 on Tymnet?  See (JMS)RUTGER.LOG
From: TXSTEXT@X62.Tymnet 
Date: Thu, 16 Apr 87 16:01:56 PDT 
To: carl @ x62 
Subject: "Hi! This is take 2, so I hope"... 


Hi!

This is take 2, so I hope I get it right this time...Here are the figures for
the 1986 Job Search deduction:

Newspapers
 S.F. Examiner, @ $4.50/month= $36.00
S.J. Mercury, @ $4.75/month=  38.00
54 resume copies @ $.10 ea.=5.40
54 stamps @ $.22 ea.=  11.88
716 miles, (est.) @ $.22/mi.= 157.52
54 envelopes @ $.? ea.=
20 phone calls @ $.? ea.=
-------
$248.80

I found the phone bills for 1986, but as I went through them, I have found that
it's nearly impossible to ascertain which ones were job search-related. Do you 
think it would be okay to estimate $.20 per call, so we get back something?
I also don't know how much the envelopes cost; should we estimate that cost
also?

I think it would be a very good idea to print a hard copy of this mail message 
as a part of our documentation in case (God forbid!) we should ever be
audited. Okay? I wouldn't want to have to figure out how I arrived at these
figures without this. Call me if you have any questions. If I don't answer,
please leave a message, or try back later. I may be outside, drilling Czazu.
Love, Wad
Received: from B39.Tymnet by X62.Tymnet; Fri, 17 Apr 87 9:01:16 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Fri, 17 Apr 87 8:52:32 PDT 
To: Carl A Baltrunas <Carl@X62.Tymnet> 
Subject: Re: Wednesday @ 2 
In-reply-to: your message of Mon, 13 Apr 87 16:15:07 PST

AM BACK NOW, ON THE MEND, BUT NOT 100% YET. AS TO MEETING, I SUGGEST
NEXT TUES AT 2PM HERE (4/21) AM SUPPORTTIVE OF YOUR SUGGESTION ABOUT
SPECIAL FLAGS, ETC, UP TO THE POINT THAT WE ARE OVERLY COMPLICATING
THE DESIGN AND IMPLEMENTATION TASK (eg NOT OVERLY COMPLICATING)
From: Joe Smith <JMS@X930> 
Date: Fri, 17 Apr 87 9:11:09 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: D25 back up now (but shut) 

Had to go back and re-do RIB to SAT.SYS.  I put page 11 where it should
have been page 10.  DSKCLN saw error in critical file, and aborted without
saying which other file had crossed SAT.SYS with multiply used page.  Bug.
The RIB to INITIA.SAV gotset to 777777777777 because of wrong SAT.
Luckily ther was INITIA.22 on SYS which could be renamed.  DSKCLN started
for real at 9:35 CDT, finished at 10:26, and found 12 files in SYS with
bad self-pointers in their RIBs.  DSKCLN put the names in RECOV.SYS saying
their PPN was [1,635445] instead of [1,4] and no user name.  Another bug.
635445=SIXBIT/SLF/.  PIP.SHR and DIRIT.SHR also had been stomped on.
Operations restored this files,They are reloading it for real
now (11:25 CDT).  I'm going to bed.   /JMS
From: Joe Smith <JMS@X930> 
Date: Sat, 18 Apr 87 1:19:00 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: D25 details. 

For details on what got clobbered, see (M33)HOTLIN.LOG.
The was we prevent this from happenning again is to get /B03 distributed
to all systems as quickly as possible.     /JOE
From: CARL@X62.Tymnet 
Date: Sat, 18 Apr 87 22:24:19 PDT 
To: carl 
Subject: "hotline calls... 25 Friday, 6-8"... 

hotline calls...
  25 - Friday, 6-8 hr  (Joe for 6-8 hrs also)
  26 - Saturday, 3-4hr Unit 7 on-line, two DSKB0/DSKB1's
  25 - Friday, 1hr     (overwritten 6 tapes of backup)
  25 - Saturday, 1hr   (more on 25's problems, talking to opers)
  37 - Saturday, 2 hr  They run DSKCLN in checking mode before running ASP
                       DSKCLN complained about system errors needing to fix

/Carl
Received: from B39.Tymnet by X62.Tymnet; Mon, 20 Apr 87 11:54:09 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Mon, 20 Apr 87 11:31:56 PDT 
To: Carl A Baltrunas <Carl@X62.Tymnet> 
Subject: Re: Wednesday @ 2 
In-reply-to: your message of Mon, 13 Apr 87 16:15:07 PST

SINCE I HAVE NOT HEARD RE TOMMORROW & MY SCHEDULE GEETING FULL THEN
ANYWAY, HOW ABOUT THURS, 4/23 @ 2PM MY OFFICE???????
From: Carl A Baltrunas <Carl@X62.Tymnet> 
Date: Mon, 20 Apr 87 12:52:04 PDT 
To: Wayne D Bartlett <BARTLETW@B39.Tymnet> 
Subject: Re: Wednesday @ 2 vs Thursday? 

I believe that the mailman lost some mail.  I had sent mail that Wednesday
at 2 would be fine.  Thursday at 2 is also fine.  Please decide which is
better for your schedule and let me know.

I wil see you then.

/Carl
Received: from B39.Tymnet by X62.Tymnet; Tue, 21 Apr 87 7:53:43 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Tue, 21 Apr 87 7:46:32 PDT 
To: Carl A Baltrunas <Carl@X62.Tymnet> 
Subject: Re: Wednesday @ 2 vs Thursday? 
In-reply-to: your message of Mon, 20 Apr 87 12:52:04 PDT

THURSDAY AT 2 OK (ALL DAY MEETING WED FOR ME)
From: JMS@X62.Tymnet 
Date: Tue, 21 Apr 87 11:00:49 PDT 
To: carl, dencoff 
Subject: "2346 is dead. RUN light won't"... 

2346 is dead.  RUN light won't come on.
From: Carl A Baltrunas <Carl@X62.Tymnet> 
Date: Tue, 21 Apr 87 13:03:56 PDT 
To: Wayne D Bartlett <BARTLETW@B39.Tymnet> 
Subject: Re: Thursday at 2. 

See you then.
/Carl
Received: from EMSTXS.Ontyme.Tymnet by X62.Tymnet; Tue, 21 Apr 87 16:44:08 PDT
From: IPC.L/THOMAS@EMSTXS.Ontyme.Tymnet 
Date: 21 APR 87 23:26:05 
To: TXS.SUP@EMSTXS.Ontyme.Tymnet 
Message-id: A50924@Ontyme.Tymnet 
Subject: Cupertino Data Center Shutdown 
Resent-from: Tymcom-X Supervisor <TXSSUP@X930.Tymnet> 
Resent-date: Wed, 22 Apr 87 15:55:49 PDT 
Resent-to: Carl A Baltrunas <carl@X930.Tymnet>, Osman Guven
	<osman@X930.Tymnet>, Joe Smith <jms@X930.Tymnet> 
Resent-cc: Craig Fletcher <fletcherc@X930.Tymnet>, DenCoff 

Date:        April 22, 1987
 
To:          The World
 
From:        Bill Fischer
 
Subject:     Cupertino Data Center Shutdown
 
*****************************************************************
 
Effective   May  13-15,  1987, the following  employees  will  be 
relocated to the Fremont Data Center, 4340 Solar Way, Fremont, CA 
94537.   While  in  the  process of  moving,  employees  will  be 
available for EMERGENCY calls only.
 
                          Old Number            New Number
 
Bill Fischer             408-446-7762            415-498-2500
 
Ed Roop                  408-446-6656            415-498-2500
 
Debbie Burns             408-446-6629            415-498-2500
 
Linda Freitas            408-446-6630            415-498-2500
 
Vivian Hiatt-Bock        408-446-7150            415-498-2500
 
Bob Jacobs               408-446-7759            415-498-2500
 
Jan Krivanec             408-446-7081            415-498-2500
 
Ingrid Lopes             408-446-8844            415-498-2500
 
Chia-Lin (Julian) Min    408-446-8039            415-498-2500
 
Landa Morris             408-446-6870            415-498-2500
 
Khanh-Quoc Nguyen        408-446-7670            415-498-2500
 
Resources/Validations    408-446-6315 or 6629    415-498-2500
 
Software Distribution    (See individual numbers above)
 
Sue Pal                  408-446-7705            415-498-2500
 
 
 
 
 
 
 
 
 
 
 

The  following employees will be relocated to Fremont Data Center 
as of May 1, 1987.
 
 
Bill Richardson          408-446-7705            415-498-2500
 
David Debroveck          408-446-7610            415-498-2500
 
 
 
THE CUPERTINO DATA CENTER WILL BE OFFICIALLY CLOSED ON 
 
MAY 31, 1987.
Received: from B39.Tymnet by X930.Tymnet; Wed, 22 Apr 87 23:15:41 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Wed, 22 Apr 87 21:51:28 PDT 
To: JMS@D57.Tymnet 
Subject: Re: "There is a job logged in as MAIL"... 
Resent-from: William R. Soley <WRS@B39.Tymnet> 
Resent-date: Wed, 22 Apr 87 21:55:34 PDT 
Resent-to: carl@930 
In-reply-to: your message of Wed, 22 Apr 87 20:30:02 CDT

I put up a newer version of SMTP that
  1. is more efficient with large messages
  2. rejects large messages with the proper error code
This version (26) should fix the problem,
however if Office-1 sees fit to keep sedning
in spite of the error codes, there is little
I can do except to call Bill Barns or Bill Daul
at Office-1 and have them do something.
I'll check it in a few more minutes to see
if things have settled down.  The new
version should be sent to every system
but that's too much for now.  Did anyone
ever write a nice distribution program
or fix telecopy so it doesn't use update?
That would help.  -Bill
Received: from D27.Tymnet by X930.Tymnet; Thu, 23 Apr 87 12:34:12 PDT
Return-path: <JMS@X930> 
From: Joe Smith <JMS@X930> 
Date: Thu, 23 Apr 87 14:27:55 CDT 
To: Monitor Group <JMS>, Carl@930, Osman@930 
Cc: FletcherC@930, DenCoff@930 
Subject: Usage of D27 

It is 2:30pm Dallas time.  If you exclude the OPER job, CHKPNT, XEXEC, PAM,
and SRACRT running CRTSLV, there are only 2 jobs.  SRA detached running FTICP
and VALCMC running 1022.  This particular KI has 1 meg of memory, 7 disks
on-line, and enough empty space to shrink down to only 4 disks.  No wonder
they want to change it.		/Joe
From: TXSTEXT@X930.Tymnet 
Date: Fri, 24 Apr 87 0:38:15 PDT 
To: carl 
Subject: "Hi! I left Czazu out until after"... 


Hi!

I left Czazu out until after 12M as punishment. Then I did recalls with him
until he came fast enough. So, I gave him his food and opened the side 
garage door so he can go to sleep (me too), because he kept hearing some
cats mating/fighting, and he was driving himself and me nuts! I decided to
do this because of what Vera said about ending on a positive note, Okay?
ILYV,VMADYFI, E!   /Waddle
Received: from B39.Tymnet by X930.Tymnet; Fri, 24 Apr 87 10:10:29 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Fri, 24 Apr 87 10:01:18 PDT 
To: CARL@X930 
Subject: "I MAY HAVE MISPLACED NO. OF THE"... 

I MAY HAVE MISPLACED NO. OF THE SYSTEM WITH YOUR DRAFT. MY HAND NOTES
SAY X62 - CAN THAT BE RIGHT?? WHAT IS?? GOOD MEETING - ALSO, GOOD
LUCK WITH MY CAR - APPARENTLY CABLE OR SWITCH STUCK, ANYWAY IT
CURED ITSELF (GONE WHEN I WENT OUT AFTER WE LEFT)
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Fri, 24 Apr 87 15:08:20 PDT 
To: Wayne D Bartlett <BARTLETW@B39.Tymnet> 
Subject: X62 is now X930 

The files are on X62, but X62 is running in the network as X930..
so simply login to X930   ... :930 ... and you will find the file.

/carl
Received: from EMSTXS.Ontyme.Tymnet by X930.Tymnet; Sat, 25 Apr 87 22:19:45 PDT
From: OPERA.SUP@EMSTXS.Ontyme.Tymnet 
Date: 25 APR 87 07:19:12 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Cc: OPERA.C/ELDRED@Ontyme.Tymnet, IPC.S/METCALF@Ontyme.Tymnet,
	TXS.O/GUVEN@Ontyme.Tymnet, TXS.C/BALTRUNAS@Ontyme.Tymnet,
	OPERA.SUP@Ontyme.Tymnet 
Message-id: A52309@Ontyme.Tymnet 
Subject: New ASP Software, Version 7 

                        M E M O R A N D U M

                                                 MC DONNELL-DOUGLAS TYMSHARE




DATE>      25 APR 87  07:17

TO>        Cheryl Eldred

COPIES>    Steve Metcalf
           Osman Guven
           Carl Baltrunas

FROM>      Rick Daniels


SUBJECT>   New ASP Software, Version 7


-----------------------------------------------------------------------


On 23/24 April, this software was used to take an ASP dump of F30.
The SAVE portion worked flawlessly.  When VERIFYING the tapes, some changes
had to be made to the software to make it work.  After changes were made,
the VERIFY worked.

After completing the SAVE and VERIFY, another change was made to make
RESTARTING a tape easier.  The SAVE portion of this software is ready to
be used.

Before putting it into production on all Hosts, one other phase must
be done - REBUILDING from the ASP Save, Version 7.

What is required is that two Hosts here at Fremont be scheduled to have 
this done.  Recommended hosts are:  F70 and F33.  F26 should be scheduled
sometime later on.  This schedule allows testing on all types of configeration.

Software Support will be contacted to determine the shortest procedures
to accomplish this so downtime will be kept to a minimum.
Received: from EMSTXS.Ontyme.Tymnet by X930.Tymnet; Thu, 23 Apr 87 14:44:11 PDT
From: IPC.SRAMAIL@EMSTXS.Ontyme.Tymnet 
Date: 23 APR 87 21:36:18 
To: TXS.SUP@EMSTXS.Ontyme.Tymnet 
Message-id: A51726@Ontyme.Tymnet 
Subject: SYSTEM D57 SHUTDOWN 
Resent-from: Tymcom-X Supervisor <TXSSUP@X930.Tymnet> 
Resent-date: Sat, 25 Apr 87 22:24:22 PDT 
Resent-to: Carl A Baltrunas <carl@X930.Tymnet>, Osman Guven
	<osman@X930.Tymnet>, Joe Smith <jms@X930.Tymnet> 
Resent-cc: Craig Fletcher <fletcherc@X930.Tymnet>, DenCoff 
SYSTEMD57SHUTDOWN: 

                         M E M O R A N D U M





DATE>      23 APR 87  13:35

TO>        ALL SYSTEM D57 USERS

COPIES>    

FROM>      DEBBIE BURNS
           RESOURCE PLANNING & MANAGEMENT


SUBJECT>   SYSTEM D57 SHUTDOWN


-----------------------------------------------------------------------




     RPM, IN A COOPERATIVE EFFORT WITH DALLAS OPERATIONS
WILL BE PERMANENTLY CLOSING SYSTEM D57 ON MAY 31, 1987.

     ALL INTERNAL USERS WHO ARE VALID ON SYSTEM D57
MUST TRANSFER ALL OF THEIR FILES AND TAPES TO ANOTHER
PDP10 SYSTEM BY MAY 18, 1987.

     ALL USERS WILL BE REMOVED FROM SYSTEM D57 ON MAY 18,
1987.

     IF YOU HAVE ANY QUESTIONS, CONCERNS OR REQUIRE
ALTERNATE RESOURCES, PLEASE CALL ME AT 408-446-6629 OR
SEND AN ONTYME TO IPC.SRAMAIL.

     YOUR COOPERATION IN THIS MATTER IS GREATLY APPRECIATED.
From: Joe Smith <JMS@X930> 
Date: Mon, 27 Apr 87 14:59:09 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: St. Louis location 

I am staying at the Park Terrace Hilton (314)426-5500 room 1514.
Roe West's telephone (by the KL's) is   (314)234-5588.
Received: from B39.Tymnet by X930.Tymnet; Mon, 27 Apr 87 16:37:59 PDT
Return-path: <CARL@B39.Tymnet> 
From: CARL@B39.Tymnet 
Date: Mon, 27 Apr 87 15:48:46 PDT 
To: dernst 
Cc: carl 
Subject: uNode questions 


Q1: 6657 has an extra DUV-11 card in it's current configuration.  Is it
    possible to have two TYMNET connections in that box and have the 2nd
    connection to node 3143 (for access to our hosts when 3146 is down)?
    I'm not asking about passthroughs and such, just 2 connections on the
    same micronode to the real world.

Q2: Is the DL11V-J card necessary in the configuration for the LSI-11 boxes?
    Currently they can be configured in one box with KD11-HA, MSV11-D,
    DUV-11, DLV11-J and DRV-11 that will allow one host connection and one
    network connection.  Can we replace the DLV11-J card with a DRV-11 and
    still run (without a console)?

Q3: About the dual DR-11 card in node 2770.  Do we know for a fact that it
    is broken?  IS there any documentation on it, what switches are for
    each DR, will one of them work, etc...

Q4: (Assuming we will not immediately replace the dual DR) Are we likely to
    be connecting the second DR11 in the 2020 to a second node, e.g. one to
    BUBB-NET?  If not, it makes sense to put it in the 11/04 and use it for
    the connection to host 118 (Yes or No?)

----------------------------
PS.  Please don't DO anything with the configuration as yet, I'd just like
     the answers to the questions for now.

    I'm planning on putting together an effective network configuration
    using as little of your time as is necessary...  Thanks for the help.

/Carl
Received: from B39.Tymnet by X930.Tymnet; Tue, 28 Apr 87 9:50:25 PDT
Return-path: <DERNST@B39.Tymnet> 
From: DERNST@B39.Tymnet 
Date: Tue, 28 Apr 87 9:31:59 PDT 
To: CARL@B39.Tymnet 
Cc: carl 
Subject: Re: uNode questions 
In-reply-to: your message of Mon, 27 Apr 87 15:48:46 PDT

YOUR ANSWERS:
Q1:  YES, THAT WORKS VERY WELL.

Q2:  NO, THE LSI MICROCODE NEEDS TO TALK TO H
     THE CONSOLE ADDRESS.

Q3:  I AM PRETTY SURE.  I HAVE THE DOCUMENTATION.  HARDWARE SHOULD HAVE
     ONE AS WELL.

Q4:  YES, IF A GOOD DR-11C CAN BE FOUND OR YOU ARE WILLING TO GIVE UP
     8 PORT OF DZ-11 IN THE 11/04.

From: Osman Guven <osman@X930.Tymnet> 
Date: Tue, 28 Apr 87 17:11:34 PDT 
To: Monitor Group <Osman@X930.Tymnet>, Carl A Baltrunas <carl@X930.Tymnet>, Joe
	Smith <jms@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: /B03 Monitor & GTSAP1 crash.. 


Hello Joe..

Remember the crashes on D55 last weekend right after rebuild on
3652 disk. Running with /B03 monitor they were keep crashing with
GTSAP1 STCODE. System would not run more than hour or so.

When operation try to bring F26 up with /B03 this mornning, system
crashed with GTSAP1 and crash is saved. System is now up with
SYSTEM which is /B01.

Only crash saved is on F26. The ones on D55 could not be saved because
of CRASH.SAV being 0 word long and BOOTS not quite working.

-Osman-
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 29 Apr 87 12:23:49 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: Micronode 2346 

Yesterday, I took an LSI-11/03-SE box and a BA11-ME box from the 2020 rack
and substituted the DUV-11 and DRV-11 cards from 2346 into it.  It is now
in the network as node 2346 and has been up for 20+ hours so far.  The old
LSI-11/03-LJ box is sitting on the table in the lab.

The new 2346 has the processor and memory boards that were in the box in
the 2020 rack... so, we have verified that it is not any of the communications
boards rthat were causing the problems.  We have not eliminated either the
11/03-LJ box itself (power supply etc) or the cpu and memory boards that
were in the old box.  We can worry about that later.... for now we have a
working network.

/Carl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 29 Apr 87 12:29:36 PDT 
To: Dennis Ernst <DErnst@B39.Tymnet> 
Subject: Dual DR-11 board info 

Dennis,
  Could you please send me a copy of the ABEL dual DR-11 board documentation
that you have, including any hardware prints... if we can have the board
repaired, then we will not have to use a single DR-11 board.

  I will send you a copy of the current configuration and a copy of our new
proposed configuration as soon as I draw it up.  We've replaced the 11/03-LJ
box that was 2346 with an 11/03-SE & BA11-ME set since we were having so many
problems with the "LJ" box and no one seems to have time to find out what is
wrong with it... sigh.

/Carl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 30 Apr 87 18:09:14 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: 2020 Progress (Cough) 

Some progress has been made in getting the 2020 up and running...
however, not enough...

1) By swapping the RH11's we can boot from magtape on UBA1/RH=776700
2) We have a KS1LOD.DMP file which uses UBA1 and the first RH.
3) We can load in the monitor.

after swapping the RH11s back to their original positions, we can start
to bring the system up... however, we get a PAGEME (using KSXN13) or an IME
stopcode.  IME in FILIO @ ERRRCV+12/LDB T2,PGYPNO  just after LDB PG,UNYPAC.
THis is the normal case.  If I load DDT and try to single step, or put in a
breakpoint at ERRRCV+anything it prints $n>> and then falls into the infinate
loop printing the "Manual restart from 147" message without printing any of
the stopcode info.

  All of this happens just when I try to enter FILES... I haven't gotten far
enough to even try to refresh the disks.

  The above error got me thinking maybe one of the drives/packs has a problem
so I moved the plugs around and tried a single pack (the one that had gotten
the home page inconsistancy errors) and the stopcode PCBIO(FINPCB+13) started
occurring.  At this point, I'm stopping for the evening.

Joe: If you have any ideas... let me know via MAIL, or call in the afternoon.

  And another thing... we only have 448K of memory (7 of 8 boards) in the
machine... are we missing one? is it out for repair? does anyone know?

Craig: Any help we can get on getting the other RH11 fixed, or the memory
       checked out... I doubt these stopcodes are all software problems...
       also that first drive, write-locked lamp...

/Carl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 30 Apr 87 19:26:45 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: ABLE dual I/O model 10039 

1) I have the documentation from Dennis Ernst in my office.  He believes
   one of the DR's on the card still works, but doesn't know which one.

2) Bill Wu mentioned that ABLE is still doing business and we could most
   probably have the card repaired by them, thus giving us our full DR-11
   link capability for our network.

/Carl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 30 Apr 87 19:30:28 PDT 
To: Dennis Ernst <DErnst@B39.Tymnet> 
Subject: Host numbers 

Dennis,
  Please don't bother to build the code for our nodes just yet.  I am
going to talk to validations, and will probably get a couple of 2-digit
host numbers for our hosts, thus freeing numbers 118, 930 and 934 for
use as host numbers for the DZ's and maybe the DZV's.  I'll let you know
the final host numbers as soon as I finish talking with Validations.

/Carl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 30 Apr 87 19:34:01 PDT 
To: Landa Morris <IPC.L/Morris@Ontyme.Tymnet>, Jan Krivanec
	<IPC.J/Krivanec@Ontyme.Tymnet> 
Subject: Two-Digit host numbers 

Jan, Landa, ...

  We are in the process of re-mapping our micronet and I wanted to give
you a little bit of warning that I will be calling you to ask you about
two-digit host numbers for our public-net experimental PDP-10 hosts.

  Currently, 12, 24 and 32 are being used by FSC software and hardware
maintenance when they are working on a host and need to bring it up on
the network.  I want to allocate a few more 2-digit host numbers (since
they are supposed to be used for PDP-10s anyway) for our lab PDP-10s.

  I'll give you a call sometime on Friday...

/Carl
Received: from B39.Tymnet by X930.Tymnet; Fri, 1 May 87 17:33:27 PDT
Return-path: <CARL@B39.Tymnet> 
From: CARL@B39.Tymnet 
Date: Fri, 1 May 87 17:26:52 PDT 
To: dernst 
Subject: mail.fwd cleanup 

Deleted MAIL.FWD from KJJ, JKATO and CCHIANG
changed B36 to B39 in CRUISING

Have a nice weekend.
From: Joe Smith <JMS@X930> 
Date: Fri, 1 May 87 20:42:08 PDT 
To: carl 
Subject: P034/P 

P034/P-14 is P034/P with PMON.PAT patches.  The sources to P034/P are in
OSARC, on tapes 6,7,8 of 930's all files.  See (M33)P00.DIR and (M33)P00.SRT.

/Joe

P.S. Pam says our micronet won't be moving to South Bay Center with us.  True?
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Sun, 3 May 87 2:14:56 PDT 
To: Craig Fletcher <fletcherc@X930.Tymnet>, Monitor Group <CARL@X930>, Osman
	Guven <Osman@X930.Tymnet>, Joe Smith <JMS@X930.Tymnet> 
Cc: Dennis Coffey <dencoff@X930.Tymnet> 
Subject: Incidental location costs 

Craig,
  Dennis Ernst tells me we can not expect to run our DUV-11 or DUP-11 line
at speeds greater than 9600.  The devices will do 19.2, but the software and
the LSI-11 cannot handle the interrupts at those speeds... in fact they are
often having data over-runs at 9600 due to the single interrupt capability
in the 11/03.

  If we assume we are to house our machines 1.5 miles away from our normal
workplace with no actual operational support, is anyone taking into account
the reduced productivity caused by having to drive that 3 miles, parking 2
times (assuming that the light rail does not extend that far?), or the cost
of having to drive or take public transportation just to reload our hosts
or the micro-bases?

  Or... the fact that we would more or less be unable to car pool on any
given day, (since we might need our own auto at any time to drive over to
our lab machines?)

  I realize that these qustions might seem picky, not to mention the extra
expense of communications, maybe forcing us to use more TYMNET resources on
the public net...  we might not actually save anything in the long run by
moving our machines to another site...  >>KICK<< >>TUMBLE<<  [soapbox just
forcibly removed from beneath my feet].

  Anyway, I think I've voiced what concerns that have come to haunt me.

/Carl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Sun, 3 May 87 2:29:37 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: Micronet and Host numbers 

I've talked to validations and tehy see no reason why we cannot use some of
the two-digit host numbers for our hosts.  I still need to check with Ed Roop
about using some of the old 940 host numbers (although Jan said we could use
36 after this weekend, and 57 at the end of May) such as 10 thru 21. If so,
we can then re-use 118, 930 and 934 for DZ-11 and DZV-11 devices on our net
so that we can build circuits to them from TYMNET.

More later... probably by meeting time on Wednesday.

/Carl
From: Joe Smith <JMS@X930> 
Date: Mon, 4 May 87 19:00:17 PDT 
To: danielsr@74 
Cc: carl, osman 
Subject: F33 monitor ready for 3652. 

F33-P035/B03-1 has been copied from (M33)33XB03 to (SYS)NEWMON.SAV.  This
monitor is defined for one physical string of 3652 disks with the GTSAP1
bug fixed.   /Joe
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Tue, 5 May 87 2:54:09 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: Takeit %50 

I modified TAKEIT to continue even though it cannot access DSK or create
a LOG file.  (IF it can, it will.  If not, C'est la vie).

I also added code to set and clear KSYS.

Except for one small detail of the HOLD command (TAKEIT keeps an internal
counter and holds it steady, while the monitor KSYS counter doesn't have
the capability to "hold" at a specific value) which needs to be discussed
and implemented based on that discussion, TAKEIT %50 is ready for testing.

One possibility is for TAKEIT to reset the KSYS word in the monitor each
minute.  I put in the hooks and code for that, but it isn't quite turned
on (Need to move it to another location).

Another is that we set the sign bit, (only allowing 17 bits for the value)
and the sign-extended 18th bit says HOLD the current value.  (Since we do
not allow the monitor to go negative... true? [I didn't check]).

We can also change the SETUUO to use ac/ fn,addr   addr/ bits,,time
   or even better                    ac/ bits+fn,,time
   or add another setuuo or two... HOLD KSYS, CONTINUE KSYS

Comments...

/Carl
From: Joe Smith <JMS@X930> 
Date: Wed, 6 May 87 7:12:02 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Hotline call F26 

 6-May-87 06:22/Joe
Contact:  System F26, Fremont (415)498-2588, Tim Witherspoon.

Problem:  OPER says "NO PASSWORD FILE".  WC was missing.

Action:   Set WC on password file.  Creation date was 5-May at 13:21.
          Unknown as to why WC was missing.

From: Joe Smith <JMS@X930> 
Date: Wed, 6 May 87 9:39:31 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Cause of GTSAP1 stopcode in /A02, /A05, and /B03. 

There were two changes to SWAMP involved.  1) A DSKOFF instruction was moved to
avoid possible race conditions, and 2) better load balancing by putting new 
files on the unit with most space. 

The real problem was when the DSKOFF instruction was moved and the nearby
"JRST .-3" was not noticed.  The fix was to put a label at the right place and
jump to it.  The bug did not cause problems on a lightly loaded system, the
GTSAP1 crash occurred only when SAT I/O was in progress at the instant that
a new job tried to log in.

The second change caused SAT I/O to occur when new files were being created.
It forced the RIB of the new file to be created on the unit with the most
space instead of the SAT that happened to be in core.

Now that both changes are in and working properly, the monitor allocates disk
space better.  This should cause a noticable performance improvement when
DSKB is rebuilt from TITO all-files.   /Joe

From: Joe Smith <JMS@X930> 
Date: Wed, 6 May 87 9:57:28 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Monitor distribution. 

Systems running P035/B01 (3650 or 3652 disks)
  D25(52B), F26(52B), D31(52B), D37(52B), D54(52B), D55(52B), F58(50B), F70(50P)
Systems running P035/B03-1 (changes for AR/ARX, GTSAP1, CTYLOG)
  F29(75B), X95, X930			(F29 is a 3330-II blocks system)
Systems with /B03-1 in (SYS)NEWMON.SAV but are not running it
  F26(52B), F33(52B), D55(52B)		(F33 converting to 52B on 9-May?)
Systems with /B03-1 in (M33)##XB03.SAV (needs to be copied to NEWMON)
  D25, D37, D54, F70

 7:27:39 on Wed May 6,1987
TYMSHARE F22-P035/B-1	DSKB:  73802 Pages free, 21 users
TYMSHARE D23-P035/B-1	DSKB:  26600 Pages free, 64 users
TYMSHARE D25-P035/B01	DSKB: 197277 Pages free, 43 users
TYMSHARE F26-P035/B01	DSKB:  65593 Pages free, 70 users
TYMSHARE D27-P035/B-1	DSKB: 195828 Pages free,  8 users
TYMSHARE F29-P035/B03-1	DSKB:  32030 Pages free, 14 users
TYMSHARE F30-P035/B-1	DSKB: 214208 Pages free, 14 users
TYMSHARE D31-P035/B01	DSKB: 118354 Pages free, 26 users
TYMSHARE F33-P035/B-1	DSKB:  21767 Pages free, 18 users
TYMSHARE D34-P035/B-1	DSKB: 108916 Pages free, 13 users
TYMSHARE D35-P035/B-1	DSKB:  67249 Pages free,  8 users
TYMSHARE D37-P035/B01	DSKB: 340244 Pages free, 83 users
TYMSHARE F38-P035/B-1	DSKB: 104473 Pages free, 33 users
TYMSHARE D54-P035/B01	DSKB: 315950 Pages free, 64 users
TYMSHARE D55-P035/B01	DSKB: 712371 Pages free, 31 users
TYMSHARE D56-P035/B-1	DSKB: 113919 Pages free,114 users
TYMSHARE D57-P035/B-1	DSKB: 244123 Pages free, 13 users
TYMSHARE F58-P035/B01	DSKB:  72461 Pages free, 11 users
TYMSHARE D65-P035/B-1	DSKB:  26709 Pages free, 53 users
TYMSHARE F70-P035/B01	DSKB: 125625 Pages free, 24 users
TYMSHARE F74-P035/B-1	DSKB: 197314 Pages free, 31 users
TYMSHARE X95-P035/B03-1	DSKB:   7121 Pages free,  5 users
TYMSHARE X930-X62/B03-1	DSKB:   1495 Pages free,  8 users
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 7 May 87 14:18:22 PDT 
To: Wayne D Bartlett <BARTLETW@B39.Tymnet>, William R Soley <WRS@B39.Tymnet> 
Subject: SETOP development 

Wayne,

  I will be on vacation 11-May thru 15-May on the east coast.  I am also
scheduled to be in New Jersey 18-May thru 29-May for some consulting with
one of our east-coast PDP-10 customers.

  We will have to try and schedule a meeting for SETOP sometime in June.

/Carl
From: Joe Smith <JMS@X930> 
Date: Thu, 7 May 87 19:14:51 PDT 
To: DANIELSR@74 
Cc: OSMAN, CARL 
Subject: New B39-P034/P-14 has been built 

39034P.SAV was created on (OSP:29) and telecopied to (JMS:39) and should
be in (M33:39)39034P.SAV.  This monitor is set up for 3 strings of disks,
BPA0-BPA7, BPA10-BPA17, and BPB0-BPB7.    /Joe
From: JMS@X930.Tymnet 
Date: Thu, 7 May 87 22:51:05 PDT 
To: carl 
Subject: "VCR tending: If you're not leaving"... 

VCR tending:  If you're not leaving until Saturday, could you catch "Miami Vice"
and "Stingray" at 9:00pm Friday?  We'd like to get both shows in stereo at SP.
The way NBC has been running things, "Miami Vice" goes straight into the story
at exactly 9:00 - the timer needs to be set to 8:58 and run to the end of the
tape.  I still have your key, so we can come down Sunday or Monday with our
VCR, dub off the shows, and put a new tape in your VCR if you want that.

We have Darth set to record the shows, but can't record in stereo unattended.

I will be checking mail on 930 from Anaheim for any last minute comments.
/Joe and Sally.
Received: from EMSTXS.Ontyme.Tymnet by X930.Tymnet; Fri, 8 May 87 10:43:38 PDT
From: IPC.L/MORRIS@EMSTXS.Ontyme.Tymnet 
Date: 08 MAY 87 09:46:21 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Message-id: A57330@Ontyme.Tymnet 
Subject: PDP-10 WISH LIST 

     ATTN:  CARL

     FROM:  LANDA

     SUBJ:  PDP-10 WISH LIST


     CARL, I AM FORWARDING THIS ONTYME TO YOU BECAUSE LYNN IS ASKING ME
ABOUT THE STATUS OF THE PDP-10 PERFORMANCE TOOLS.  I THOUGHT THIS MIGHT 
BE USEFUL.

     GIVE ME A CALL AT EX. 6870 OF YOU NEED MORE INFORMATION.


THANK YOU,
LANDA/RPM

                          M E M O R A N D U M
 
 
 
                                          T Y M N E T
DATE>      07 MAY 87  15:24               Network Services & Marketing Support

TO>        GARY WALKER

COPIES>    NANCY JENKS
            SUSAN ESTREM
            ED ROOP

FROM>      LYNN LAWRENCE


SUBJECT>   DDD RESOURCES


-----------------------------------------------------------------------


Gary,
 
As I had mentioned to you previously, I want to document the
status of DDD and perhaps resolve its system resource problem
once and for all.
 
I have, at this point, had two dedicated periods of time on
system 38.  The first period being on 4/11 from 1200 to 4/12 at
1200.  During this time, it was determined that the program to
process 36,599 area code/prefix combinations would not go to
completion.  The program was re-evaluated and trimmed down to a
"bare bones" state of data collection.  Another dedicated period
of time was then utilized.  This period of time was also 24hrs,
beginning on 4/19 at 0600 and continuing to 4/20 at 0600.  During
this time, the program progressed to a completion state, but
allowed no extra time for building of competitor databases.
 
It is my opinion that the greatest obstacle facing the DDD
program is the Magnum language in which it is written.  The
secondary detractor is the load on system 38.  Both of these
problems need to be addressed.
 
In order to keep the DDD program progressing, at this point, I
will require a minimum of three 24 hour periods of dedicated time
per month. During the month of May, I will be exploring the
feasibility of migrating DDD to an IBM 370.
 
We had spoken earlier about getting a dedicated PDP-10 for
Marketing's sales tools.  I need to know what would be required
to actually implement this solution so that I can weigh the cost
of a dedicated PDP-10 vs. the costs involved in planning a major
rewrite and migration to the 370.
 
I also need to know whether any progress has been made in the
programs Carl Baltrunas was working on to assess the load on
system 38.
 
Any information you can give me will be appreciated.
 
Thanks,
 
Lynn
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Sat, 9 May 87 4:05:41 PDT 
To: Joe Smith <JMS@X930.Tymnet> 
Subject: VCR watching 

Please don't bother to change any tapes and such... we're content to miss
the current episodes of things and to resume taping when we return.  Since
I've messed up the last three Dr. WHOs on saturdays, I'll recalculate what
next story starts a tape and continue from that point.

I just barely made it home in time to tape MIAMI VICE and STINGRAY for you.
The tape is on top of a stack of 4 tapes (which belong to you, interviews
and some early tapes I was going to copy and haven't gotten to, feel free to
take them or leave them).  Our tapes are all Maxwell EX or TDK EHG, so there
shouldn't be any problems finding your TDK HG tapes.  We taped Vice on Maxell
EX and you are free to retape it, or to just take that tape and we'll square
it later.  (not worth retaping it, for quality sake).

If you don't NEED the tape for 3 weeks, then it can wait till we return...
otherwise, since you do have the keys, you're welcome to stop by...  if so,
please water any plants that look in need.  One of our naighbors will be
taking care of Czazu and the flowers, so you don't HAVE TO come by.  (I can
spell neighbor fine, I'm just tired...)  The house is a mess, since our plans
are all in a mess... so we'd prefer not to have any visitors while we were
gone.  I'll give you a call sometime while I'm gone.

See you.
/Carl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Sat, 9 May 87 4:43:46 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: (OSU:930)TAKEIT 

TAKIET.SAI is nearly ready... but not quite... I've been pretty busy and
did not finish what I started.  %47 is back up on SYS.  Apparently TAKEIT
is doing something I don't see readily to keep the count internally even
with the changes I made for reading the cound from the monitor...  That is
all that needs to be fixed... (other than the documentation comments Joe
has already made, I didn't touch that yet).

See you all next month.

/Carl
From: KAREN@X930.Tymnet 
Date: Tue, 12 May 87 15:15:17 PDT 
To: carl 
Subject: "this is a test...... this is more"... 

this is a test......

this is more


this is the end
From: JMS@X930.Tymnet 
Date: Tue, 12 May 87 15:21:55 PDT 
To: carl, karen 
Subject: "and show that CARL has reserved"... 

(INFO)FAKPPN.MEM and (INFO)GAN3.MEM show that CARL has reserved the PPNs
in the range of [3,700000] to [3,700577].    /Joe
Received: from EMSTXS.Ontyme.Tymnet by X930.Tymnet; Fri, 8 May 87 10:44:51 PDT
From: IPC.J/KRIVANEC@EMSTXS.Ontyme.Tymnet 
Date: 08 MAY 87 18:15:25 
To: TXS.SUP@EMSTXS.Ontyme.Tymnet 
Message-id: A57351@Ontyme.Tymnet 
Subject: Cupertino Data Center Shutdown 
Resent-from: Tymcom-X Supervisor <TXSSUP@X930.Tymnet> 
Resent-date: Tue, 12 May 87 15:37:17 PDT 
Resent-to: Carl A Baltrunas <carl@X930.Tymnet>, Osman Guven
	<osman@X930.Tymnet>, Joe Smith <jms@X930.Tymnet> 
Resent-cc: Craig Fletcher <fletcherc@X930.Tymnet>, DenCoff 

Date:        May 8, 1987
 
To:          The World
 
From:        Bill Fischer
 
Subject:     Cupertino Data Center Shutdown
 
*****************************************************************
 
Effective   May  18,  1987,  the  following  employees  will   be 
relocated at the Fremont Data Center, 4340 Solar Way, Fremont, CA 
94537.                                                            
 
 
                          Old Number              New Number
 
Bill Fischer             408-446-7762            415-498-2521   
                                                 415-498-2522
 
Ed Roop                  408-446-6656            415-498-2562
 
Debbie Burns             408-446-6629            415-498-2515
 
Linda Freitas            408-446-6630            415-498-2516
 
Vivian Hiatt-Bock        408-446-7150            415-498-2563
 
Bob Jacobs               408-446-7759            415-498-2558
 
Jan Krivanec             408-446-7081            415-498-2556
 
Ingrid Lopes             408-446-8844            415-498-2564
 
Chia-Lin (Julian) Min    408-446-8039            415-498-2560
 
Landa Morris             408-446-6870            415-498-2557
 
Khanh-Quoc Nguyen        408-446-7670            415-498-2559
 
Resources/Validations    408-446-6315 or 6629    415-498-2514
 
Software Distribution    (See individual numbers above)
 
Sue Pal                  408-446-7705            415-498-2500
 
 
 
 
 
 
 
 
 
 


The  following employees will be relocated at Fremont Data Center 
as of May 4, 1987.
 
 
Bill Richardson          408-446-7705            415-498-2500
 
David Debroveck          408-446-7610            415-498-2500
 
 
 
 
****************************************************************
*                                                              *
*    THE CUPERTINO DATA CENTER WILL BE OFFICIALLY CLOSED ON    *
*    MAY 31, 1987.                                             *
*                                                              *
****************************************************************
Received: from EMSTXS.Ontyme.Tymnet by X930.Tymnet; Mon, 11 May 87 16:44:14 PDT
From: TYMHQ.SUP@EMSTXS.Ontyme.Tymnet 
Date: 12 MAY 87 00:17:22 
To: TXS.SUP@EMSTXS.Ontyme.Tymnet 
Message-id: I32837@Ontyme.Tymnet 
Subject: Bert Novak's New Assignment 
Resent-from: Tymcom-X Supervisor <TXSSUP@X930.Tymnet> 
Resent-date: Tue, 12 May 87 15:37:43 PDT 
Resent-to: Carl A Baltrunas <carl@X930.Tymnet>, Osman Guven
	<osman@X930.Tymnet>, Joe Smith <jms@X930.Tymnet> 
Resent-cc: Craig Fletcher <fletcherc@X930.Tymnet>, DenCoff 
BertNovak'sNewAssignment: 

                                     MCDONNELL DOUGLAS
                                 INFORMATION SYSTEMS GROUP
                                          TYMNET

DATE>      11 MAY 87  15:19

TO>        Tymnet

COPIES>    

FROM>      Clint DeGabrielle


SUBJECT>   Bert Novak's New Assignment


-----------------------------------------------------------------------


Effective April 27, 1987 Bert Novak has been appointed President
of McDonnell Douglas Field Service Company.  We are pleased with 
Bert's appointment and look forward to closely working with him.  
At the present time, we are in the process of selecting a successor
for Bert here at Tymnet.  It is our intention to keep Bert's 
group intact and to replace Bert as soon as possible.  

Until such time as a replacement is named, Bert's organization 
will report to me.



Clint DeGabrielle
Vice-President Marketing and Field Operations
Tymnet McDonnell Douglas

/to
From: TXSTEXT@X930.Tymnet 
Date: Tue, 12 May 87 19:08:14 PDT 
To: carl 
Subject: "If we have to get up in time to"... 


If we have to get up in time to go to the Archives tomorrow, I would like to go home as a 
home at a somewhat reasonable hour, Okay?   /wad
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Tue, 12 May 87 19:35:46 PDT 
To: Landa Morris <IPC.L/Morris@Ontyme.Tymnet> 
Subject: Cost Code 

Which cost code would you like.... the old cost code is 4011.
The cost code we use in Field Service Company payroll is 90842.

The 4011 cost code is what SRA has in the CUD10 database.


I am in Baltimore, MD at the moment, and will be in New Jersey for
two weeks beginning next monday.  Send mail and I will get to it when
I am able.  ?Carl

Received: from EMSTXS.Ontyme.Tymnet by X930.Tymnet; Wed, 13 May 87 10:43:46 PDT
From: IPC.L/MORRIS@EMSTXS.Ontyme.Tymnet 
Date: 13 MAY 87 09:31:25 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Message-id: A58933@Ontyme.Tymnet 
Subject: Host # Order 
HOSTNUMBERORDER: 

     ATTN:  CARL BALTRUNAS

   COPIES:  OSMAN GUVEN

     FROM:  LANDA MORRIS

     SUBJ:  HOST NUMBER ORDER


     HI!  I HAVE PLACED AN ORDER WITH TYMNET TO RESERVE FOUR (4) PDP-10
HOST NUMBERS FOR YOUR USE.

     THIS IS PER CARL'S ONTYME #A54482 SENT 4-30-87.  ON THE ORDER I
LISTED CARL AS THE PRIMARY CONTACT PERSON AND OSMAN AS THE SECONDARY
CONTACT.

     I WILL KEEP YOU POSTED ON THE STATUS OF THIS ORDER.

     IF YOU NEED MORE INFORMATION I CAN BE REACHED AT EX. 6870.  AFTER
5-18 I WILL BE AT (415)498-2557.  (WE'RE MOVING!)


THANK YOU,
LANDA/RPM
From: JMS@X930.Tymnet 
Date: Wed, 13 May 87 12:57:35 PDT 
To: carl 
Subject: "TYMNET took away our GROUP 0 access."... 

TYMNET took away our GROUP 0 access.  All 4 of us now have GROUP 45 instead
of GROUP 0.  Where is the list of host groups?  I have no idea as to where
to look for the hardcopy you have.   /Joe
Received: from B39.Tymnet by X930.Tymnet; Wed, 13 May 87 14:45:23 PDT
Return-path: <JMS@X930> 
From: Joe Smith <JMS@X930> 
Date: Wed, 13 May 87 14:37:46 PDT 
To: WRS, CARL@930 
Subject: CRSHID reports thru gateway. 

CRSHID does not appear to have any to code to login to (M33:930) by going
through a gateway.  One of the three of us should fix that, as we will be
having more PDP-10 hosts on private networks.  /Joe
From: Dennis Coffey (Tymcom-X Systems) <DenCoff@X930> 
Date: Wed, 13 May 87 16:05:12 PDT 
To: nets.p/hidy@ontyme, netops.v/stafford@ontyme 
Subject: Network validation: Group 44 access needed. 
Resent-from: Dennis Coffey (Tymcom-X Systems) <DenCoff@X930> 
Resent-date: Wed, 13 May 87 16:19:12 PDT 
Resent-to: (Monitor Group:), Carl, Osman, Joe <JMS> 
Resent-cc: Craig <FletcherC>, TXSSup 



                                  MEMORANDUM


                                                              TYMCOM-X SYSTEMS

DATE:  13-May-87    16:06:18

  TO:  Vida Stafford

  CC:  Paul Hidy

FROM:  Dennis Coffey  (Tymcom-X Systems)

SUBJ:  Network validation:  Group 44 access needed. 

------------------------------------------------------------------------------

Vida,

    The four of us who support the Tymcom-X monitor and utilities need access
to outdial network hosts, in order to support Tymcom-X systems which are not
on the public network.  The need is not frequent, but when the need arises the
need is urgent.

    I have spoken with Paul Hidy about our need.  He indicated that he would
be informing you of his approval of our request.

    The usernames needing vlaidation in Group 44 are:
        DENCOFF
        CARL
        JMS
        OSMAN

    If there are any questions or problems with this request, please call me
at X2588 (415/794-2588), or Ontyme TXS.D/COFFEY.


                                                Thanks,
                                                Dennis Coffey
Received: from EMSTXS.Ontyme.Tymnet by X930.Tymnet; Fri, 15 May 87 8:41:10 PDT
From: TYMOPS.V/STAFFORD@EMSTXS.Ontyme.Tymnet 
Date: 15 MAY 87 08:27:31 
To: TXS.D/COFFEY@EMSTXS.Ontyme.Tymnet 
Message-id: M92587@Ontyme.Tymnet 
Subject: access to group 44 
Resent-from: Dennis Coffey (Tymcom-X Systems) <DenCoff@X930> 
Resent-date: Fri, 15 May 87 11:10:33 PDT 
Resent-to: (Monitor Group:), Carl, Osman, Joe <JMS> 
Resent-cc: Craig <FletcherC>, TXSSup 
Networkvalidation: Group 44 access needed.

Dennis

Your request per the following ontyme has been completed.

Vida

Received: from X930.Tymnet by EMSTXS.Ontyme.Tymnet; Wed, 13 May 87 16:36:41 PDT
From: Dennis Coffey (Tymcom-X Systems) <DenCoff@X930> 
Date: Wed, 13 May 87 16:05:12 PDT 
To: netops.v/stafford@ontyme, nets.p/hidy@ontyme 
Subject: Network validation: Group 44 access needed. 
Resent-from: Dennis Coffey (Tymcom-X Systems) <DenCoff@X930> 
Resent-date: Wed, 13 May 87 16:34:45 PDT 
Resent-to: TYMOPS.V/STAFFORD@ONTYME 



                                  MEMORANDUM


                                                              TYMCOM-X SYSTEMS

DATE:  13-May-87    16:06:18

  TO:  Vida Stafford

  CC:  Paul Hidy

FROM:  Dennis Coffey  (Tymcom-X Systems)

SUBJ:  Network validation:  Group 44 access needed. 

------------------------------------------------------------------------------

Vida,

    The four of us who support the Tymcom-X monitor and utilities need access
to outdial network hosts, in order to support Tymcom-X systems which are not
on the public network.  The need is not frequent, but when the need arises the
need is urgent.

    I have spoken with Paul Hidy about our need.  He indicated that he would
be informing you of his approval of our request.

    The usernames needing vlaidation in Group 44 are:
        DENCOFF
        CARL
        JMS
        OSMAN

    If there are any questions or problems with this request, please call me
at X2588 (415/794-2588), or Ontyme TXS.D/COFFEY.


                                                Thanks,
                                                Dennis Coffey
From: Joe Smith <JMS@X930> 
Date: Fri, 15 May 87 15:00:57 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: REFSTR not working for 2020 systems. 

REFSTR assigns 64 pages for the KS front-end file (SYS)FEFILE.SYS, and
allocates page 14 for its RIB, but does not write the RIB to disk.
The first time a full DSKCLN is run after refreshing the disk, the pages
assigned to the front-end file system get marked as available for use.
The changes to fix this will only affect 2020 monitors.  /Joe
From: Joe Smith <JMS@X930> 
Date: Fri, 15 May 87 15:33:28 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Running ERRCHK on 2020's. 

How do you run ERRCHK?  The built-in help message is pretty worthless in that
it does not say what order the commands are to be given, how to start it
running.  I know it understands BP devices, but what about RM (KS) or AP (F3)
disks?  Do we need to modify it to understand 3650 disks?    /Joe
From: Joe Smith <JMS@X930> 
Date: Sun, 17 May 87 18:08:57 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff, WRS 
Subject: Inactivity timeout bug fixed. 

There is a bug in the job inactivity timeout killer that has been fixed.
The bug has existed for some time, and caused F29 to crash 3 times this
weekend.  The noname stopcode at TTYFND+2(SCNSER+13721) was triggered when
the inactivity timeout monitor noticed a job logged in as MAIL running TMS
that had been idle for more than 15 minutes.  In the process of killing it,
accumulator J got set to 777454, which is not in the JBT tables.  The was
not noticed on F29 before because (MAIL)TMS was not running on that system
until this weekend.  (Bill said he was moving the major MAIL functions from
system 39 to system 29.)  This may also explain some of B39's crashes.

The fix is in (M33)INTKIL.PAT on all systems, and has been applied to
(SYS:29)SYSTEM.SAV=F29-P035/B03-3 and (SYS:29)NEWMON.SAV=F29-P035/B04-3.

			/Joe
Received: from B39.Tymnet by X930.Tymnet; Mon, 18 May 87 13:07:45 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Mon, 18 May 87 12:34:41 PDT 
To: Joe Smith <JMS@X930> 
Cc: Monitor Group <JMS>, Carl, Osman, FletcherC, DenCoff 
Subject: Re: Inactivity timeout bug fixed. 
In-reply-to: your message of Sun, 17 May 87 18:08:57 PDT

I doubt the inactivity timer bug is responsible for any crashes on 39
since it was never used (to my knowledge).  In fact it should not be
expiring on 29, so I have to go check why it was being inactive for so
long.  -Bill
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Tue, 19 May 87 7:44:11 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: To reach me 

If you need to reach me... MAIL is fine for messages.  I will log in and
check a few times a day (when able).  I am staying at the Red Bull Motor Inn
(a best western) on rt. 22 in Somerville, NJ.   The phone is 201-722-4000
room 271.

During AT&T office hours, I should be reachable at 201-580-5520.  Angela is
at 201-580-5520 (AT&T) or 201-822-3100 (MDC office).

/Carl
From: Joe Smith <JMS@X930> 
Date: Tue, 19 May 87 13:52:10 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Preventing XEXEC from running after DSKCLN during system rebuild. 

As an interim solution, I have modified INITIA to not start the XEXEC job
if the file (XEXEC)INITIA.SYS does not exist.  Instead, it will output
"?INITIA cannot run XEXEC until (XEXEC)INITIA.SYS is restored from tape."
every 5 minutes until the file is created or until the OPER kills the
job.  Until Carl finishes SUBOPR, this will ensure that XEXEC does not
start after the full DSKCLN that is necessary between restoring SYS and
the rest of the structure.

If (XEXEC)INITIA.SYS is accidently deleted, just create a new one.  It
doesn't matter what's in the file as long as it exists.
/Joe
From: JMS@X930.Tymnet 
Date: Tue, 19 May 87 13:58:27 PDT 
To: carl 
Subject: "That's why XEXEC was logged in"... 

That's why XEXEC was logged in as JMS - I was testing INITIA.
From: Joe Smith <JMS@X930> 
Date: Wed, 20 May 87 0:45:27 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Hotline calls 

20-May-87 00:27/Joe
Contact:  Fremont Operations, Bonnie, (415)498-2558, System F33.
Problem:  Front-end 11 died, tried to run TAKEIT to bring system down, but
          CHKPNT was stuck with JACCT on (it was waiting for the SETUUO to
          finish typing on the CTY which was not responding).
Solution: Logged in, tried to set license to use MDDT, but got stuck in ML
          because CHKPNT was stuck.  Told them to get FSC to try to clear the
          PDP11 that KLDCP could deposit nonzero in 30.  Else power off KL.


18-May-87 23:38/Joe
Contact:  Fremont Operations, Bonnie, (415)498-2558, System F33.
Problem:  As per procedure, they needed one of us to give license to XEXEC.SAV


From: Joe Smith <JMS@X930> 
Date: Wed, 20 May 87 1:13:36 PDT 
To: CARL, OSMAN, DENCOFF 
Subject: Cute interaction between FIND and PCOM/EXECX 

Guess what happened when I submitted the following CTL file:
	FIND M7860 M8204 M7819 M7269 M7294 (M33)*.*/O
	FIND M7860 M8204 M7819 M7269 M7294 (KS2020)*.*/O
	FIND M7860 M8204 M7819 M7269 M7294 (JMS)*.*/O
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 20 May 87 7:00:26 PDT 
To: Joe Smith <JMS@X930.Tymnet> 
Subject: Cute FIND/ PCOM-EXECX 

I haven't looked, but i expect line length (terminator) to be a problem.
Also, FIND is trying to do it's own I/O with auxcals... so... I will look
at it later.

/Carl
From: Joe Smith <JMS@X930> 
Date: Wed, 20 May 87 11:01:36 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Subject: Re: Cute FIND/ PCOM-EXECX 
In-reply-to: your message of Wed, 20 May 87 7:00:26 PDT

Hint: The "problem" is not in the code - FIND does exactly what it was told
to do.  Question: What unwanted side-effect occurs?  Since this is a trivia
question don't worry about it too much.  /Joe
Received: from B39.Tymnet by X930.Tymnet; Thu, 21 May 87 14:51:41 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Thu, 21 May 87 14:41:39 PDT 
To: WRS@C39.Tymnet, CARL@X930 
Subject: PEAK 

LONG PENDING ISSUE IS TO REMOVE TYMLICENSE REQ'M'T FROM PEAK.
BELIEVE PLAN NOW IS THAT BILL WILL CHANGE SOURCE TO REMOVE REQ'M'T,
 AND CARL WILL FOLLOWUP FROM THERE TO GET OBJECT TO THE SYSTEMS.
CARL - WHERE IS THE SOURCE??????? (THE STARTING POINT FOR BILL).
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Fri, 22 May 87 6:44:54 PDT 
To: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Cc: WRS@C39.Tymnet 
Subject: Re: PEAK 
In-reply-to: your message of Thu, 21 May 87 14:41:39 PDT

Wayne,
  At this point, I am not sure where the correct sources to PEAK reside
for the current version.  That is the major stumbling block with removing
the check for TYM license.  I am still in NJ woring on a project for AT&T
and will be back next week.  I will contact Ken Dawson and ask where the
current sources are and get back to you.
/Carl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Fri, 22 May 87 6:49:20 PDT 
To: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Cc: WRS@C39.Tymnet 
Subject: Re: PEAK 
In-reply-to: your message of Thu, 21 May 87 14:41:39 PDT

Correction to previous message...
  I will be back the first week in June... not 24-May as originally expected.
/Carl
From: Joe Smith <JMS@X930> 
Date: Tue, 26 May 87 1:06:17 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Hotline calls during Memorial Day Weekend. 

25-May-87 14:30/Joe
Contact:  Fremont Operations, Debbie, (415)498-2558, System F33.
Problem:  Several BADSAT, RIBERR stopcodes, one REDSAT, scattered across units.
Reply:    Try one more full DSKCLN, then call in maintenance to look at disk
          system, I suspect the disk controller.


23-May-87 09:00/Joe
Contact:  Dallas Operations, (214)637-7436, System D55.
Problem:  While restoring files for the rebuild, TITO said some files were not
          getting XC license.
Solution: Poked the job running TITO, told them to continue and re-restore all
          the problem files (including, of course, XEXEC.SAV).



Received: from F29.Tymnet by X930.Tymnet; Tue, 26 May 87 10:47:21 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Tue, 26 May 87 10:45:29 PDT
Return-path: <IPC.E/ROOP@EMSTXS.Ontyme.Tymnet> 
From: IPC.E/ROOP@EMSTXS.Ontyme.Tymnet 
Date: 26 MAY 87 10:21:46 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Message-id: A63540@Ontyme.Tymnet 
Subject: DETAIL INVOICES 

CARL,

HOPE YOU GET THIS. HAD TROUBLE USING FSC ONTYME NAME.


CARL,

 TALKED TO THE ST LOUIS FISCAL FOLKS ABOUT THE SERVICE BILLING QUSETION
YOU BROUGHT UP ON DETAIL ACCOUNTING. EVENTHOUGH THE STANDARD OPTIONS
WOULD TRUNCATE THE USERNAME TO EIGHT CHARACTERS, SOME SPECIAL OPTIONS
MAY GIVE US WHAT YOU WANTED. I AM CURRENTLY WAITING FOR A SAMPLE INVOICE
THAT ATT GETS FOR DETAIL VAX BILLING AND SOME MORE INFORMATION ON POSSIBLE
OPTIONS. ST LOUIS SHOULD FAX THIS TO ME ON TUESDAY OR WEDNESDAY OF NEXT WEEK.
I WILL FOLLOW UP WITH YOU AT THAT TIME.

  ED
Received: from F29.Tymnet by X930.Tymnet; Tue, 26 May 87 11:32:30 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Tue, 26 May 87 11:20:09 PDT
Return-path: <IPC.L/MORRIS@EMSTXS.Ontyme.Tymnet> 
From: IPC.L/MORRIS@EMSTXS.Ontyme.Tymnet 
Date: 26 MAY 87 11:08:20 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Message-id: A63557@Ontyme.Tymnet 
Subject: Host # Order 
HOST#ORDER: 

     ATTN:  CARL BALTRUNAS
            OSMAN GUVEN

     FROM:  LANDA MORRIS

     SUBJ:  HOST # ORDER


     FOUR HOST NUMBERS HAVE BEEN RESERVED FOR YOUR USE FOR TESTING PER
CARL'S ONTYME #A54482.  THEY ARE:

     3984
     4117
     4284
     4525

     IF YOU HAVE ANY QUESTIONS, I CAN BE REACHED AT (415)498-2557.


THANK YOU,
LANDA/RPM
From: FLETCHERC@X930.Tymnet 
Date: Tue, 26 May 87 11:56:10 PDT 
To: carl 
Subject: "As part of the office clean-up"... 

As part of the office clean-up campaign I was asked, effectively by
Bert Novak to unhang your plant and lamp from the ceiling.  They are
now resting on hte bookshelf over your desk.  Plants on top of
bookshelves are OK, plants hanging from ceiling are "planta non
grata".

		Crai8
g

From: JMS@X930.Tymnet 
Date: Tue, 26 May 87 16:21:22 PDT 
To: CARL 
Subject: "has my list of 2-digit host numbers."... 

(JMS)HOST99.DAT has my list of 2-digit host numbers.
From: Dennis Coffey (Tymcom-X Systems) <DenCoff@X930> 
Date: Tue, 26 May 87 17:02:08 PDT 
To: carl 
Subject: RPG for TRW. 

Hi!

  Since talking with you I've asked Joe about TRW and TUMS.  He has put TUMS
up on their host.  Therefore, I will give them RPG v.156.  I'll get the 
proper sources out of (OSU:930). 

  thx!
 -D.-
From: Dennis Coffey (Tymcom-X Systems) <DenCoff@X930> 
Date: Thu, 28 May 87 10:17:18 PDT 
To: (Monitor Group:), Carl, Osman, Joe <JMS> 
Cc: Craig <FletcherC>, TXSSup 
Subject: New phone numbers for Bldg. C former occupants. 

The folks from Bldg.  C, including the Resource Planning & Management unit and
the Software Distribution & Installation unit, have moved to Solar Way, so
they have new phone numbers.

On top of this, the tie line between here and Solar Way has been taken out.
Because of this, you have to get out of the old Tymshare telephone network
into the public phone network, then dial the exchange and the whole 4-digit
extension number to reach anyone over there.  This is also true of the PDP-10
operators, and Lenny.


the numbers are:

Ed Roop				415/498-2562
Julian Minh			415/498-2560
Vivian Hyatt			415/498-2563

    RPM:
Resources			415/498-2514
Jan Krivanic			415/498-2556
Landa Morris			415/498-2557

    SDI:
Bob Jacobs			415/498-2558
Khanh Nguyn			415/498-2559
Ingrid (Dolovitchenyj) Lopes	415/498-2564

I'm sure there are others, but these are the only ones I can think of whom we
would need to know.


-D.-
From: Joe Smith <JMS@X930> 
Date: Fri, 29 May 87 1:50:11 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: (MPL)TYPBAT types the contents of the BAT pages. 

It uses the same routine that is now part of "TYPE BAT" in the FILES dialog.
If you run (MPL)TYPBAT on 930, the F3 is having problems with record 0 on
head 0 of many cylinders.  If you run it on any of the other systems, you
will see that the 3652 disks have not bad spots, the 3675 disks have a log
of bat spots, and they are all on record 14 of an odd head.  The pattern is
so strong, it looks like BPXKON is having problems.      /Joe
From: Joe Smith <JMS@X930> 
Date: Fri, 29 May 87 1:55:04 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff, IPC.T/MARCONI@ONTYME, IPC.R/DANIELS@ONTYME 
Subject: /B04 is expected to have several "%% EVENT stopcode BADPAG" messages. 

Running /B02 or later once will activate the badblock recording routines.
/B04 will output a message on the CTY when a badblock is detected, all
previous monitors noticed the badblock but never said anything.

This means that system that starts running /B04 on the old disks is expected
to get sporadic BATPAG messages until the first time an ASP is done.  During
the ASP, flurry of up to 20 BADPAG messages would not be unusual.  After the
ASP completes, the number of new BADPAG messages should slow to less than
one a week.  Operations can run (MPL)TYPBAT to see how bad the disks are.

The point I'm trying to make is that the sudden flare-up of BADPAG messages
is not the fault of the new monitor.  The disks are getting read errors and
a deficiency in the previous monitors caused problems to not be reported.

		/Joe
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Fri, 29 May 87 6:27:00 PDT 
To: jms 
Subject: Re: BADPAGE messages. 

I saw in some of the crash mail on 29 or 74 that they were had reloaded the
system because of BADPAG messages.  You may wish to include some message
which specifically states that the flare-up of messages is NOT a reason to
reload, although it may be reason to move a pack or PAKCOP a pack before
the count gets too high on a single unit.

/Carl
From: JMS@X930.Tymnet 
Date: Fri, 29 May 87 15:35:11 PDT 
To: carl 
Subject: "show there are a lot of different"... 

(JMS)PEAK.WHR show there are a lot of different versions of PEAK.SAV out there.
From: Joe Smith <JMS@X930> 
Date: Fri, 29 May 87 16:32:36 PDT 
To: Dennis Ernst <DErnst@B39> 
Cc: Monitor Group <JMS>, Carl, Osman, FletcherC, DenCoff 
Subject: Can't load micronet from D57 anymore. 

Help!  System 57 went away.  Right now we have absolutely no way to reload
6657 if it goes down.  We can't use NODLOD on 930 because it's 930's base.
We can't use NODLOD from 95 because routing from 6760 to 2346 is not working.
We can't use LOADII from 57 now that it's gone.  We can't use LOADII from 39
because of passwords thru the gateway.  We would like to use LOADII from 95
but it is not authorized to do so.

Could you go through channels and get LOADII working for us on system 95?
And as a backup, get NEW11 validated on F26 and D31 (since our micronet is
sort of a private net)?

			/Joe
From: Joe Smith <JMS@X930> 
Date: Fri, 29 May 87 18:40:26 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: /B04 should not be run on 3675 disks. 

There appears to be a bug in BPXKON that is aggravated by /B04 doing
contiguous allocation.  I will send another mail message with details,
the following is a list of how many bad spots TYPBAT reported on each unit.
                                Summary from TYPBAT as of 29-May-87
  New 3650/3652 disks
25:3652B 0 0 0 0 0 0 0 0 0 0 0 0
26:3652B 0 0 0 0 0 0 0 0 0 0 0 0 0 0
31:3652B 0 0 0 0 0 0 0 0 0 0 0 0
33:3652B 0 0 0 0 0 0 0 0 0 0 0 0 0 0
34:3652B 0 0 0 0 0 0 0 0 0 0 0 0
54:3652B 0 0 0 0 0 0 0 0 0 0 0 0
55:3652B 0 0 0 0 0 0 0 0 0 0 0 0
58:3652B 0 1 0 0 0 0 0 0 0 0 0 0        1 spot at DSKB1 page 34664
70:3650P 0 0 0 0 0 0 0 0 0 0

  Old 3675 disks with old monitor
23:3675B BAT pages not set up
27:3675B BAT pages not set up
35:3675B BAT pages not set up
37:3675B 0 0 0 0 0 0 0 0 0 0 0 0 0 0
56:3675B BAT pages not set up
65:3675B BAT pages not set up

  Old 3675 disks with P034/B04.  All but 2 spots are record 18 + search error
22:3675B 1 0 2 0 1 1 1 0 0 0 0 0 0 0
29:3675B 2 0 0 3 13 0 0 2 0 1 2 3 0 0
30:3675B 0 1 0 0 0 0 0 3 0 1 0 1 0 0 0 1 1 1 1 0
38:3675B 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
39:3675B 25 31 28 31 31 27 26 0 29 0 31 27 29 31 1
74:3675B 3 0 2 1 0 0 1 2 1 1 2 0 1 0 0 0 0 1 2 0 0 1 0 0 0 0 2 0 2

  Other
95:RM03B 0 0
930:CDCP 32 7 8                 These are all real read errors on the F3's disk

Note that system 39 shows an average of 26 "bad" spots per disk!
From: Joe Smith <JMS@X930> 
Date: Fri, 29 May 87 18:46:38 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Possible explanation for the multitude of BADPAG occurances. 

We have observed two kinds of bad spots on the disk.  A real one is consistantly
bad - you couldn't read it last week and you can't read it this week.  All the
bad spots on 930 (62's disk) are real.  A phantom bad spot causes a read error
once - copying the file to itself clears up the read error.  Almost all of the
read errors on the IBM disks are phantom.

It looks now as if there is (and always has been) a bug in BPXKON.  Whenever the
monitor decides to read in a bunch of pages on the same cylinder, it calls
BPXKON repeatedly until BPXADD says it can't handle any more.  If the pages are
contiguous on disk and contiguous in core, BPXADD is given a request that could
very easily exceed the size of the command list.  When this occurs, BPXADD is
committed to do the transfer, so it has to split it up and do the second part
after getting an interrupt from the first part done.  When a request spans the
track boundry, BPXKON has to create a new select-head command before it
continues building read commands.  I do not like the code that handles end-of-
track and changed that section in CPXKON.

My reason for suspecting BPXKON is that for all but 2 of the read errors, it
was for records 15-18 of an even track.  If BPXADD did not recognize the end
of the track, it would attempt to read records 19-22 of the current track
instead of 1-3 of the next track.  Of all the ERRCHK reports I looked at, they
all said "Search error, Count error, Record 18".

If BPXKON did have this failure in the past, a read error would occur when the
read request filled up the command list and overflowed onto the next track at
the same time.  This scenario is a virtual certainty when running ASP.  ASP
would get 30 errors per disk, not report them (because it turned off error
checking on read), and CORE1 would attempt to log them in the BAT pages when
the pages were released.  Since the BAT self-pointers were not initialized,
nothing would get into the BAT pages.  The only trace left that a read error
had occured is that the "M" bit would be set so the page would not be 
recycled.  This would last only until the next DSKCLN, at which there would
be no log of the phantom read error.

P035/B04 had two changes.  One is that the read errors get logged to the CTY
as BADPAG stopcodes and logged in the BAT pages.  The second is that MAPIO
now makes new files be allocated to contiguous pages on disk when it is
convenient to do so.  This second change makes disk I/O more efficient.  It
also increases the probability that programs other than ASP will cause the
channel command list to get filled up and trigger the BPXKON bug.  CPXKON does
not exhibit this bug.

Therefore I suggest we go forward with /B04 on all 3650/3652 systems.
Until BPXKON is fixed (or CPXKON verified as reliable with 3675 blocks),
the 3675 disk systems should NOT run /B04 (or /B05).

To verify some of the things I've said, we need to run ASH on all systems.
If it is BPXKON, then unreported read errors would cause ASP to write bad
data to tape.  If system 39 is any indication, then the bug means that 30
out of 68680 pages per unit were written bad.

		/Joe
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Sun, 31 May 87 23:28:46 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: I'm back! 

I got in an hour ago... began unpacking etc... plugged in my beeper
'cause unless I'm mistaken, I'm on call this week (6/1 - 6/7)...

Will see you all later (Monday).
/Carl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Sun, 31 May 87 23:31:47 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: BPXKON/ASP ? 

Is it possible that the "read errors" we see with BPXKON while running an
ASP are indeed caused by the same BPXKON problem causing the BADPAG stopcd's?

(or am I barking up the wrong tree)?
/Carl
From: Joe Smith <JMS@X930> 
Date: Mon, 1 Jun 87 11:37:48 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: HELP version 6(75)-2 has been distributed to all systems. 

Sometime back we decided to have the HELP command run (SYS)HELP instead of
RPG.  I put a hack into DEC's HELP program so that it can find files on (SYS).
It now responds to "HELP" to give general info, "HELP *" to give a list of
available topics.  Once we have a suitable base of *.HLP files distributed,
we should mention it in (SYS)ACCESS.MSG.   /Joe
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Mon, 1 Jun 87 13:22:56 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: Telephones at MDC center 

Craig,
  as per the 5.18.87 minutes for the relocation users group concerning
telephones at MDC center...

"Wiring orders have been placed for the telephone system.  The Scheme
calls for two terminals and one voice line per office.  Work areas and
file rooms requiring special requirements need to be identified with
your telephone coordinator.  Departments requiring other than twisted
pair wiring for data need to contact Judy Carlson.  Recommended tele-
phone equipment standards will remain as issued."

Our telephone needs (as we presented them for the current AT&T system
at Liberty) with multi-line capability for the hotline, support-line
and our own individual lines with call-hold (via call-waiting or multiple
lines for our individual stations) do not fall into the "two terminals
and one voice line per office" guidelines.

Are we going to be able to have the multi-line phones in the new offices
with these capabilities?

Will we need more than twisted pair to communicate with our micronodes?
Will our access to our micronodes be via the phone, or via hard lines?
If by phone, what data speeds and might we not want a couple of direct
dial modems installed on dataset lines on the micronodes in the new lab
building?  (I guess we still need to talk to Judy Carlson about this?)

/Carl
From: JMS@X930.Tymnet 
Date: Tue, 2 Jun 87 11:59:07 PDT 
To: carl 
Subject: "does not work. It does not handle"... 

"CPY @MON.CMD" does not work.  It does not handle "@".
From: TXSTEXT@X930.Tymnet 
Date: Tue, 2 Jun 87 15:36:27 PDT 
To: carl 
Subject: "Hi! It's me...there is advenced"... 


Hi! It's me...there is advenced doggie reform school tonoc @ 7:30; please come
home in time to eat something first, okay? Unless I hear otherwise from you,
I shall expect you home by 6:30 at the latest. ILY, /Wad
Received: from B39.Tymnet by X930.Tymnet; Wed, 3 Jun 87 13:58:43 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Wed, 3 Jun 87 13:45:17 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Cc: WRS@C39.Tymnet 
Subject: Re: PEAK 
In-reply-to: your message of Fri, 22 May 87 6:44:54 PDT

ACTUALLY MORE THAN PEAK ----
1)BUT THAT TOO;
2)SETOP PASSWORD ROUTINE AS IT IS NOW. EGAD!!!& GADZOOKS!!ETCETCETC. I 
JUST CHANGED MY PASSWORD, BUT IT DID NOT CHECK MY "OLD" i.e. "CURRENT"
PASSWORD. I THOUGHT WE CHANGED THAT LONG AGO. EITHER OF YOU CAN HELP
ME ON THAT AND/OR CHANGE IT.
3)TIME TO SET TIME TO MEET TO REVIEW LATEST ON THE NEW SETOP!!!
HOW ABOUT NEXT TUES,6/9 OR THURS,6/11. LUNCH FOLLOWED BY MEETING????
(BILL - HAVE YOU REVIEWED CURRENT VERSION OF THE DOCUMENT???)
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 3 Jun 87 14:00:26 PDT 
To: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Cc: WRS@C39.Tymnet 
Subject: Re: PEAK 
In-reply-to: your message of Wed, 3 Jun 87 13:45:17 PDT

I'm back!  (got in sunday night)

Next tuesday 6/9, I have a 10:00 meeting with a state SBE auditor.
Next wednesday, we have our weekly 10:00 meeting.

I'm available any other time...

/Carl
From: TXSTEXT@X930.Tymnet 
Date: Wed, 3 Jun 87 13:59:22 PDT 
To: carl 
Subject: "Hi! It's only me...here's a list"... 


Hi!

It's only me...here's a list of some additional stuff that you should probably
include in the expense report:

tolls....................@ $.25 x 8 = $2.00
			   1.50        1.50 (T-Z Bridge)
			   1.00 x 2 =  2.00 (to N.J.)
maid svc. tips...........@ 1.00 x 14= 14.00
laundry..............................  5.00
baggage tips @ $.50 ea.......50 x 3 =  1.50 going
   "     "   "   "  " .......50 x 5 =  2.50 coming home
taxi to S.F. (Ernie)......25.00     = 25.00
			_____
		$53.50 total spent
Well, that's all I can think of for now; please print this and keep it - I'm
not sure I could get it all down a second time. If I think of anything else, 
I'll send more mail. ILYBM, ADYFI! /Wad
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 3 Jun 87 16:40:06 PDT 
To: Landa Morris <IPC.L/Morris@Ontyme.Tymnet> 
Cc: jms 
Subject: Landa, 

  The two accounts which I would like validated in VALDAT for all PDP-10
hosts are:

   VUE    3,377411   now in valdat for 33,34,35,39,90
   YEUX   3,377412   now in valdat for 33,34,35,39

I will take care of the LUD/DUL additions on the remainder of the PDP-10
systems.  These IDs are the production and development directories for the
VUE editor.

Thanks so much for your help.

/Carl
Received: from X62.Tymnet by X930.Tymnet; Wed, 3 Jun 87 23:17:20 PDT
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:50:34 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:49:22 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:48:25 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:47:40 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:47:04 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:46:34 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:46:03 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:45:21 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:43:58 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:42:58 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:41:58 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:41:09 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:39:46 PST
Return-path: <TXSTEXT@X930.Tymnet> 
From: TXSTEXT@X930.Tymnet 
Date: Wed, 1 Apr 87 17:36:36 PST 
To: carl @ x62 
Subject: "Hi! Please print my file, name"... 


Hi!

Please print my file, name MILLS.PEN, ON 62 (OR IS IT 930?...I'm confused, at
this point) on the laser printer. Thnaks. Love, /Wad
Received: from X62.Tymnet by X930.Tymnet; Wed, 3 Jun 87 23:17:49 PDT
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:52:47 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:50:34 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:49:22 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:48:25 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:47:40 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:47:04 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:46:34 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:46:03 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:45:21 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:43:58 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:42:58 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:41:58 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:41:09 PST
Received: from X930.Tymnet by X930.Tymnet; Wed, 1 Apr 87 17:39:46 PST
Return-path: <TXSTEXT@X930.Tymnet> 
From: TXSTEXT@X930.Tymnet 
Date: Wed, 1 Apr 87 17:36:36 PST 
To: carl @ x62 
Subject: "Hi! Please print my file, name"... 


Hi!

Please print my file, name MILLS.PEN, ON 62 (OR IS IT 930?...I'm confused, at
this point) on the laser printer. Thnaks. Love, /Wad
From: JMS@X930.Tymnet 
Date: Wed, 3 Jun 87 23:47:17 PDT 
To: OSMAN, CARL 
Subject: "P035/B06 has been telecopied to"... 

P035/B06 has been telecopied to NEWMON on 32 and 62.  Both need to be reloaded
in the morning.  I tried reloading 32 using TAKEIT, but it's still down.  /JOE
Received: from F29.Tymnet by X930.Tymnet; Thu, 4 Jun 87 16:02:20 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Thu, 4 Jun 87 15:59:07 PDT
Return-path: <IPC.L/MORRIS@EMSTXS.Ontyme.Tymnet> 
From: IPC.L/MORRIS@EMSTXS.Ontyme.Tymnet 
Date: 04 JUN 87 15:48:32 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Message-id: A67594@Ontyme.Tymnet 
Subject: VALDAT ADDITIONS 

     ATTN:  CARL

     FROM:  LANDA

     SUBJ:  VALDAT ADDITIONS


     HI!  USERNAMES (VUE) AND (YEUX) HAVE BEEN ADDED TO THE VALDAT
DATABASE FOR THE FOLLOWING HOSTS:

22  23  25  26  27  29  30  31  37  38  54  55  56  58  65  70  74

     USERNAME (YEUX) WAS ALSO ADDED FOR HOST 90.

     THIS IS PER YOUR ONTYME #A67148.


THANK YOU,
LANDA/RPM
EX. 2557
Received: from B39.Tymnet by X930.Tymnet; Thu, 4 Jun 87 16:07:12 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Thu, 4 Jun 87 15:43:36 PDT 
To: carl@930, jms@930 
Subject: David Sutton 

(begin forwarded messages)
----------------------------------------------------------------
From: David Chang <DChang@B39.Tymnet> 
Date: Thu, 4 Jun 87 12:11:45 PDT 
To: Bill Soley <WRS@B39.Tymnet> 
Subject: David Sutton 

Hi Bill,
Quick question...do you know David Sutton?  He is supposed to have worked
on TYMCOM-X for TYMSHARE at Fremont between July 83 to April 84.  Please
let me know what you know about him, since he is a candidate for hire.
Thanks.
David
----------------------------------------------------------------
From: William R. Soley <WRS@B39.Tymnet> 
Date: Thu, 4 Jun 87 15:38:42 PDT 
To: David Chang <DChang@B39.Tymnet> 
Subject: Re: David Sutton 
In-reply-to: your message of Thu, 4 Jun 87 12:11:45 PDT

Forget it, he made a mess that Carl and Joe are still cleaning up.  He
also has an attitude problem about working in a team.  I'm surprised he
has the nerve to come back.  -Bill
----------------------------------------------------------------
(end forwarded messages)

Thought you'd get a kick out of this.  Feel free to send any comments along
to DCHANG@39 if you are so motivated.  -Bill
Received: from B39.Tymnet by X930.Tymnet; Fri, 5 Jun 87 8:22:28 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Fri, 5 Jun 87 8:07:33 PDT 
To: William R. Soley <WRS@B39.Tymnet> 
Cc: CARL@X930 
Subject: Re: "BUG???????? LAST 2 TIMES AFTER"... 
In-reply-to: your message of Thu, 4 Jun 87 15:36:58 PDT

LETS MEET AT THE COLEMAN STILL (YOU RECALL WE WERE THERE BEFORE, IT
IS AROUND THE CORNER FROM ROGERS) 11:30 THURS,6/11, FOLLOWED BY
MEETING IN MY OFFICE. O.K. CARL????
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Fri, 5 Jun 87 10:40:43 PDT 
To: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Cc: William R. Soley <WRS@B39.Tymnet> 
Subject: Re: "BUG???????? LAST 2 TIMES AFTER"... 
In-reply-to: your message of Fri, 5 Jun 87 8:07:33 PDT

I don't believe that I've been to the Coleman Still, but I guess I can
find it... see you both there at 11:30 thursday 6/11.

/Carl
Received: from B39.Tymnet by X930.Tymnet; Fri, 5 Jun 87 16:57:42 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Fri, 5 Jun 87 16:41:37 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Subject: Re: "BUG???????? LAST 2 TIMES AFTER"... 
In-reply-to: your message of Fri, 5 Jun 87 10:40:43 PDT

INFO ON THE STILL -- TRIMBLE THEN ACROSS 101 ON DEL LA CRUSE (LIKE STRAIGHT
ACROSS 101) ON PAST ROGERS (WHERE WE WERE BEFORE) BEND AROUND TO THE LEFT,
A LITTLE FARTHER ON THE LEFT (BUT NOT TO BE CONFUSED WITH THE COLEMAN DELI
NEXT DOOR) SEE YOU THEN
Received: from B39.Tymnet by X930.Tymnet; Sat, 6 Jun 87 1:05:06 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Sat, 6 Jun 87 0:46:36 PDT 
To: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Cc: CARL@X930 
Subject: Re: "BUG???????? LAST 2 TIMES AFTER"... 
In-reply-to: your message of Fri, 5 Jun 87 8:07:33 PDT

ok by me - see you at the still 11:30 Thu
-Bill
Received: from B39.Tymnet by X930.Tymnet; Sat, 6 Jun 87 1:54:46 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Sat, 6 Jun 87 1:46:34 PDT 
To: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Cc: Carl A Baltrunas <Carl@X930.Tymnet> 
Subject: Re: PEAK 
In-reply-to: your message of Wed, 3 Jun 87 13:45:17 PDT

>	2) SETOP PASSWORD ROUTINE AS IT IS NOW. EGAD!!!& GADZOOKS!!ETCETCETC. I
>	JUST CHANGED MY PASSWORD, BUT IT DID NOT CHECK MY "OLD" i.e. "CURRENT"
>	PASSWORD. I THOUGHT WE CHANGED THAT LONG AGO.

You had to give your "old" password to get into SETOP.  Normal users use
the OPPS program which does ask for the old.  SETOP is intended to allow
managers to change the passwords of people under them.  Obviously this does
not require knowledge of the old one.

-Bill
From: JMS@X930.Tymnet 
Date: Sat, 6 Jun 87 11:48:27 PDT 
To: carl 
Subject: "CURR11 is using 500 more pages"... 

CURR11 is using 500 more pages than it used to.  It looks like DERNST copied
the sources to 930.  /Joe
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Sat, 6 Jun 87 16:18:17 PDT 
To: William R Soley <WRS@B39.Tymnet>, Wayne D Bartlett <BARTLETW@B39.Tymnet> 
Subject: Re: SETOP passwords 

Of course!  A manager need not know the old password to change someone under
him.  How else could he set the password or change it, when an employee came
and had forgotten his password!!!

YES!!! I agree it should be changed... it should work like PASSWORD does now!
When a manager runs setop... before he can do anything, he must give his
own password... (and if you don't have WC set, I believe it does ASK for OPER
name and password).  Bill, you have enough license that you were not validated
when you changed the password.

Anyway, it makes sense that anyone doing anything should validate himself and
super licenses should still require the validation.  At present, if WRS or CARL
validated themselves, then they could only change people under them... that's
the way SETOP works.

We will have "super-user" status still.. but validatin is required to produce
a proper audit trail. So we should include the validation... and maybe.. just
maybe provide a way in to re-create the world if something happens to th
password file and it needs reconstruction.

/Carl
From: JMS@X930.Tymnet 
Date: Sat, 6 Jun 87 21:23:19 PDT 
To: carl, osman 
Subject: "I verified that system 32 could"... 

I verified that system 32 could reload from SYSTEM by itself if SW4 is off.
Unfortunately, I set sense switch 4 in order to do a FULL DSKCLN, and forgot
to turn it off.  X32 is probably at ONCE> right now, waiting for a GO.
Whoever gets there first should turn off SW4 so it can continue.  /Joe
From: Joe Smith <JMS@X930> 
Date: Sat, 6 Jun 87 21:26:16 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Status of 32XB03 and 32XB06. 

I spent this afternoon at Building-C trying to find out why 29XB03 worked but
32XB06 didn't.  TELECOPY would not work with 32XB03 either, until I made
32's CONFIG file look like 29's.  The only significant difference was
"XP JOBS,^D64" versus "XP JOBS,^D80".  I tried adjusting JOBS.  TELECO does
not work with JOBS set to 64, 72, 76, 77.  It does work with 78, 80, 108, 127.
I don't know why.  32XB06 works now that I set JOBS to 127 and added the
following to COMMON:
  IFCPU(<KI,KL>),<IFL JOBN-^D78,<
  PRINTX ? TELECOPY won't run with JOBS less than 78>>
Received: from B39.Tymnet by X930.Tymnet; Sun, 7 Jun 87 18:27:17 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Sun, 7 Jun 87 18:09:22 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Cc: Wayne D Bartlett <BARTLETW@B39.Tymnet> 
Subject: Re: SETOP passwords 
In-reply-to: your message of Sat, 6 Jun 87 16:18:17 PDT

I think you misunderstood.  I was saying that SETOP currently behaves properly.
It DOES require your password before you change anyone else's.  It either
requires it when you set WC with the OPER program, or when you enter SETOP.
Both would give you an audit trail if SETOP kept one.  I see no need for any
change to the procedure.  -Bill
From: Joe Smith <JMS@X930> 
Date: Sun, 7 Jun 87 18:28:51 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Fremont node changed. 

They took away my favorite TYMSAT!  The dial-up number in Fremont 490-7366
now is answered by node 7117 instead of 3220.  If you have 3220 in your
SWITCH.INI for LOGON, replace it with 7117.  /Joe
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Sun, 7 Jun 87 18:33:51 PDT 
To: Joe Smith <JMS@X930> 
Subject: Re: Fremont node changed. 
In-reply-to: your message of Sun, 7 Jun 87 18:28:51 PDT

Bill,
  I did misunderstand you at first... thought you were complaining that it
didn't work right.  I  was also explaining that it DID work correctly, but
I feel that SETOP should keep it's own audit trail, and require a password from
the person running SETOP, before allowing any changes.  Allow reading without
a password, however.
/Carl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Mon, 8 Jun 87 1:48:11 PDT 
To: Craig Fletcher <fletcherc@X930.Tymnet> 
Subject: Standby hours: 


Craig,
  since I will not be coming to the office (monday) here are my hours.

Normal standby + 3 h of call-ins.
 40 + 12.8 + 3 = 55.8 h total.

I will fill out one of the required forms when I come in.
If I have any additional hours between now and then, I will
record them next time.

/Carl
Received: from D35.Tymnet by X930.Tymnet; Mon, 8 Jun 87 10:29:14 PDT
Return-path: <DENCOFF@C36> 
From: Dennis Coffey Tymcom-X <DENCOFF@C36> 
Date: Mon, 8 Jun 87 10:20:58 PDT 
To: Carl Baltrunas <CARL@X930.Tymnet> 
Subject: An error message from SUBMIT. 

Carl,

  I'm in St. Louis, with the RCS people.  TymQuote has experienced a strange
error message in the running of job (TQ)BLDINX (no extension on command file
name) on host 35.  Message is:
  ; Req 4446 aborted - lost command port at line 16
Job was not re-queued.  What does "lost command port" mean?  Is it frequent?
The user's job was not requeued, so I gave the "requeue" command in SUBMIT.

  Welcome home!

  -D.-
From: JMS@X930.Tymnet 
Date: Tue, 9 Jun 87 14:45:07 PDT 
To: CARL, OSMAN 
Subject: "Somebody moved the line from the"... 

Somebody moved the line from the LN03 to a different socket on 2770 and
did not put it back.  Two of my listings went into the bit bucket.
From: Joe Smith <JMS@X930> 
Date: Tue, 9 Jun 87 18:19:18 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: AGENDA.TXT has been created in (MONDOC). 

The file (MONDOC)AGENDA.TXT on X930 needs to be updated.  This is what it has
so far:

(MONDOC:930)AGENDA.TXT - Agendas for the Tymcom-X Support Group meetings.

10-Jun-87
1) Old business
   a) Report on changes to systems 31 and 58
   b) Report on status of /B06
   c) Report on KI/KL for our use

2) more to be added here

 3-Jun-87
1) Decide which monitor version to run in Fremont.
   Decided to create P035/B06 from /B03-3 (nothing from /B04 or /B05 except
   to include the DDT patches.

2) Move to South Bay Center
   a) Determine phone requirements - 3 lines with outdial modems.
   b) Determine async requirements - Carl will draw a new diagram.

3) Computing resources
   a) Put 2020's on dispatch.
      Codes are XMR4257 and XMR4267 for new KS and X95 respectively.
   b) Acquire KI10 system in Bldg. C for swing machine.
      Dallas said they would provide a test KI.

4) AT&T Conversion
   a) Report on recomendation
   b) Will IPC fund TOPS10 accounting development?
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 10 Jun 87 0:33:19 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: (MONDOC)AGENDA.TXT 

MONDOC is very cluttered... since the agendas are more than monitor meetings
I suggest we keep the file in directory (INFO).

/Carl
Received: from F29.Tymnet by X930.Tymnet; Mon, 8 Jun 87 8:55:15 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Mon, 8 Jun 87 8:48:47 PDT
From: IPC.R/SWANSON@EMSTXS.Ontyme.Tymnet 
Date: 08 JUN 87 16:26:07 
To: TXS.SUP@EMSTXS.Ontyme.Tymnet 
Message-id: A68354@Ontyme.Tymnet 
Subject: ISG CONVERSION SERVICE 
Resent-from: Tymcom-X Supervisor <TXSSUP@X930.Tymnet> 
Resent-date: Wed, 10 Jun 87 18:11:59 PDT 
Resent-to: Carl A Baltrunas <carl@X930.Tymnet>, Osman Guven
	<osman@X930.Tymnet>, Joe Smith <jms@X930.Tymnet> 
Resent-cc: Craig Fletcher <fletcherc@X930.Tymnet>, DenCoff 

                        ISG CONVERSION SERVICE

   THE ISG CONVERSION SERVICE IS SET UP TO SERVE THE NEEDS OF THE ISG 
USER COMMUNITY.  ALONG WITH THE CURRENT CONVERSIONS THAT WE HAVE THE 
CAPABILITY TO DO THERE ARE OVER 490 OTHER CONVERSION PACKAGES 
AVAILABLE TO US.  IF YOU HAVE A NEED TO CONVERT WORD PROCESSING FILES 
WHETHER IT IS WITHIN YOUR OWN DEPARTMENT OR WITH A CUSTOMER,  CALL US 
AND LET US KNOW IF WE CAN HELP YOU IN ANYWAY! 


                        ISG CONVERSION SERVICE
                        (314) 233-8250
                        307-2E-E15
Received: from F29.Tymnet by X930.Tymnet; Wed, 10 Jun 87 16:01:54 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Wed, 10 Jun 87 15:53:57 PDT
From: IPC.I/LOPES@EMSTXS.Ontyme.Tymnet 
Date: 10 JUN 87 23:38:01 
To: TXS.SUP@EMSTXS.Ontyme.Tymnet 
Message-id: A69761@Ontyme.Tymnet 
Subject: 1022 Replacement Project 
Resent-from: Tymcom-X Supervisor <TXSSUP@X930.Tymnet> 
Resent-date: Wed, 10 Jun 87 18:12:40 PDT 
Resent-to: Carl A Baltrunas <carl@X930.Tymnet>, Osman Guven
	<osman@X930.Tymnet>, Joe Smith <jms@X930.Tymnet> 
Resent-cc: Craig Fletcher <fletcherc@X930.Tymnet>, DenCoff 

 
DATE>      10 June 1987   3:33 PDT
 
TO>        Edsel Budar                       Bill Euske
           Fred Canning                      Bob Fultz
           Regina Chen                       Kenneth Holcomb
           Paul Corcoran                     Rai-ki Huang
           Chung Lam                         Stephen Poppe
           A.S. Rajaraman                    Gary Walker
 
FROM>      Ingrid Lopes
 
SUBJECT>   1022 Replacement Project
 
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 
     This is to remind you that we will be meeting with represent-
     atives from Oracle to discuss the benchmark we would like to run
     on that product.  We will host the meeting on Friday, June 12th,
     at 10 am, not 9 am as previously announced.  We  will meet in the
     Resource Support conference room at Solar.  We welcome your
     attendance and contributions to this benchmark process.  If you
     can attend, please call me at 415/498-2564.
 
     Best regards.......Ingrid Lopes
From: Joe Smith <JMS@X930> 
Date: Wed, 10 Jun 87 22:35:16 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Hack to BPXKON installed on 58. 

The unit data block has enough room in the command list to handle 18 blocks
(1 track).  If a request for several contiguous blocks starts in the middle
of the track, then it will hit the end of the track before it hits the end
of the command list.  A portion of the spaghetti code near TRNCNT is supposed
to handle this, switch to the next head, and continue adding until the
command list is full.  That is one of the places I was uncomfortable with.
By putting a JFCL at TRNCNT+3, BPXADD won't do any fancy footwork to fake out
FILIO.  It will simply take the non-skip return, which tells FILIO to not add
anything more until the transfer-done interrupt comes in for the current
request.  Then FILIO will resume with the next block (which need not be on
a page boundry).

I logged in to 58 to test this, and found it SHUT due to all the "hard" errors.
Without the patch, ASH got several errors within the first 7000 pages.  With
the patch installed, it got no errors.   I zeroed out the BAT blocks so we
and the CTY can see new entries.  /Joe
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 11 Jun 87 1:05:41 PDT 
To: Joe Smith <JMS@X930> 
Cc: Monitor Group <JMS>, Osman, FletcherC, DenCoff 
Subject: Re: Hack to BPXKON installed on 58. 
In-reply-to: your message of Wed, 10 Jun 87 22:35:16 PDT

...atta boy...
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 11 Jun 87 11:11:35 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: Setop meeting 

I have a meeting this afternoon with Wayne Bartlett and Bill Soley
about SETOP, PEAK and a few other things... I may or may not return
to the office this afternoon.

If not, I should be available at home sometime after 3pm.  /Carl
My number there is 408-945-4314.

From: Joe Smith <JMS@X930> 
Date: Thu, 11 Jun 87 12:18:15 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Found BPXKON bug for /B06. 

If the command list is big enough to hold 25 blocks, then there were cases
where BPXKON would transfer the last 2 blocks on one track, and then try to
transfer 23 blocks on the next track.  That does not work - 3675's have only
18 blocks.  BPXKON assumed that the command list was a certain size, and
never checked it.  The following is now in /B06 for systems with 3675 disks.

File 1)	DSK:BPXKON.B03	created: 1431 03-FEB-87
File 2)	DSK:BPXKON.MAC	created: 1149 11-JUN-87

1)14		MOVEI P2,^D18
****
2)14	IF2,<PRINTX [BPCMSZ in COMMOD must big enough for at least 18 blocks]>
2)	;*; XP BPCMSZ,^D<18*7+1+3+2+1>	;LOADER will complain if mismatch
2)	;*; ;Above line commented out - can be more than 18 as of P035/B06.
2)		MOVEI P2,^D18
**************
1)19	TRNCNT:	JUMPE P4,T2POP0	;REALLY OUT OF TRANSFER TO DO
1)		HRRZ T3,P3
****
2)19	;Here from BPXADD if P2 has gone to zero, indicating end of track.
2)	;If P4 is also 0, we have hit the end of the cylinder and should stop.
2)	;If there are more words to transfer, we have to switch heads and
2)	;continue on the next track.
2)	TRNCNT:	JUMPE P4,T2POP0	;STOP AT END OF CYLINDER
2)		HRRZ T3,P3
**************
1)19		JRST T2POP0	;NO, MUST BE OUT OF LIST NOT TRACK
1)		SUBI T3,2(P1)	;SEE HOW MUCH MORE WILL FIT
1)		IDIVI T3,7
1)		LSH T3,B2WLSH
****
2)19		 JRST T2POP0	;NO, COMMAND LIST MUST BE FULL
2)		SUBI T3,2(P1)	;SEE HOW MUCH MORE WILL FIT
2)		IDIVI T3,7	;(7 command words to xfer 1 block)
2)	;Make sure we don't attempt to go past end of track if command list is
2)	; set for ^D25 blocks.  Fixed in P035/B06
2)		CAILE	T3,^D18	;More than one track's worth left?
2)		 MOVEI	T3,^D18	;Yes, limit ourselves to notice end of track
2)		LSH T3,B2WLSH	;# of words that can be handled (full blocks)
**************
From: JMS@X930.Tymnet 
Date: Thu, 11 Jun 87 12:26:07 PDT 
To: carl 
Subject: "I got mail from the Postmaster"... 

I got mail from the Postmaster - user KAREN has not read mail in 30 days.
Just though you'd like to know.
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 11 Jun 87 23:44:10 PDT 
To: William R Soley <WRS@B39.Tymnet>, Wayne D Bartlett <BARTLETW@B39.Tymnet> 
Subject: License granting 

Bill,
  I started to make a list of things to augment the current SETOP database
as per our meeting and it seems that we can get similar results (as seen in
the detailed plan) by using your suggested text-file format with some minor
additions.

1.  Keep the OPER password file info the same.
    Make a text file that corresponds to the password file containing the
    information to re-create the password file plus the following:
    a. Employee Number
    b. Employee Name
    c. Username (followed by optional additional legal usernames)
    d. Security mail address (TUMS or ONTYME)
    e. Entry date (creation of record)
    f. Employee Change date;Employee Change author
    g. Password Change date;Password Change author
    h. Granted-Received license list (format)
       G;license-names;OPERNAME;date-granted;start-date;stop-date
       R;license-names;OPERNAME;date-granted;start-date;stop-date

The "G" or "R" determines whether the record is a license granted to
someone else or to this opername.  OPERNAME refers to the grantor or the
grantee.  Date-granted is when the change was put into effect and is the
default value for start-date.   Both start-date and stop-date are optional
and if missing default to date-granted and forever.

This capability to generate license values from granted license gives us
the technical structure we want.  Only SETOP cares about the managerial
structure, so it should make no difference at all if different users have
capabilities that their managers don't have (in the password file).  And
the new SETOP would do everything with the text file (locking the entire
file just as it is done now).

What about Phone numbers?  Do we want them for the records with requests
to update them periodically when people change departments?


comments?

/carl

The last question I have is... do we start with one super user that grants
license to some special people and then we propagate this by saying that
licenses are granted by the current managers???   Or do we say, noone has
any license and start acceptng applications for licenses?

The structure works fine once it is in place... but the initial placement
still needs to be ironed out.  I can have somehting together that reads
the format I've prescribed and manipulates the records in memory within
2 man weeks... but how are we going to implement it?

Another possible idea is to accept applications and build the new password
and data file strictly by application and when the cut-over date occurrs,
no-one except those that have applied and have added their own sub-accounts
will exist in the new system.  This would install users and let them run
the new SETOP / OPPS, although it wouldn't take effect until Sept 1, or some
other date.  (I prefer 1,DEC or 1,JAN since it would mean everyone would
be moved into new quarters and we'd get NEW phone or location numbers).

/Car
From: Joe Smith <JMS@X930> 
Date: Fri, 12 Jun 87 9:38:45 PDT 
To: CARL 
Subject: Returned MAIL 

(begin forwarded message)

From: Postmaster@X930.Tymnet 
Date: Wed, 10 Jun 87 17:15:06 PDT 
To: JMS@X930.Tymnet 
Subject: Returned MAIL 

The following message was not delivered because:
User has not read mail in 30 days: KAREN
Last logout: 12 May 87


----------
RCPT To: karen 
From: JMS@X930.Tymnet 
Date: Tue, 12 May 87 15:21:55 PDT 
To: carl, karen 

(INFO)FAKPPN.MEM and (INFO)GAN3.MEM show that CARL has reserved the PPNs
in the range of [3,700000] to [3,700577].    /Joe

(end forwarded message)

I noticed that KAREN's PPN did not match the others.
Received: from B39.Tymnet by X930.Tymnet; Fri, 12 Jun 87 12:04:50 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Fri, 12 Jun 87 12:01:48 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Cc: Wayne D Bartlett <BARTLETW@B39.Tymnet> 
Subject: Re: License granting 
In-reply-to: your message of Thu, 11 Jun 87 23:44:10 PDT

Everyone should be able to update their own mail name and phone number
just like they would their password (maybe through OPPS).  Then there
is no need to put it off - lets get it over with.  -Bill
From: Joe Smith <JMS@X930> 
Date: Mon, 15 Jun 87 0:12:17 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Hotline call 


From: Joe Smith <JMS@X930> 
Date: Mon, 15 Jun 87 0:13:14 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Hotline call 

14-Jun-87 23:56/Joe
Contact:  Fremont Operations, Rick, (415)498-2558, System F33.
Problem:  One of the new 3650 disks has hardware problems - kept going offline,
          now gets unit check one a particular cyl/surf/head.  PAKCOPY gets
          stuck there, even with sense switch two set.  Rick wanted to know
          if he should go ahead with ASSIGN and DEASSIGN to reformat that one
          track.  25 blocks will be lost, but the rest of the pack can then be
          copied.

From: Joe Smith <JMS@X930> 
Date: Mon, 15 Jun 87 12:22:35 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: F38 recovering from bad 3650 disk. 

System 38 had the HDA on BPA3 go bad.  PAKCPX had problems copying out the
pack due to "equipment check" on head 21 record 20 on 344 of the 555 cylinders.
I hacked at PAKCPX to get it to continue after such errors.  Rick Daniels read
the numbers to me over the phone, I wrote a quick program to create a DDT file,
and used TSTSUP on system 38 to create (JMS)BADPAG.MUP which had pointers to
all those pages in its RIB.  This caused DSKCLN to report the names of all the
files that were using those pages.  (JMS)FIX38.* shows what happened.  The end
result is FIX38.FIL (which was copied to (OPER:38)FIX38.FIL) which lists 274
files and 3 UFDs being damaged.  Restoring these files will be a lot quicker
than redoing the rebuild.  Time-in=02:18, time-out=12:31.   /Joe
From: JMS@X930.Tymnet 
Date: Mon, 15 Jun 87 12:38:31 PDT 
To: carl 
Subject: "WHEN doesn't like my SWITCH.INI"... 

WHEN doesn't like my SWITCH.INI anymore.  What did you change?
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Mon, 15 Jun 87 13:03:00 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: WHEN program change 

TO make WHEN work correctly with ARGPAR, only switches may exist in the
SWITCH.INI file.  To make the OLD usage of WHEN work do the following:

Old:  WHEN  /MULTI CARL, OSMAN, JMS
New:  WHEN  /MULTI /USERS:CARL, OSMAN, JMS

You may also specify /USERS:xxx on the command line, but that defeats the
purpose of the command line and overrides it. SO, proper usage is:

WHEN user,user/switch
WHEN ?
WHEN

This works but the results are funny:

WHEN user1,user2/USERS:user3,user4

...this reports user3 and user4, completely ignoring user1 and user2.

/Carl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 17 Jun 87 2:05:16 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: (INFO)AGENDA.TXT 

I made up an agenda... of course, it was written in a vacuum, so there
may be things I left out, and things I put in that should be thrown out.
Please feel free to look at the agenda and make changes.

I moved it to (INFO)AGENDA.TXT out of (MONDOC) as mentioned last week.
I also typed in the significant things I had noted from the last meeting
as the minutes.  The minutes currently precede the agenda, since they
inevitably replace the agenda.. if we follow it !!!

See you all at the meeting.
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 17 Jun 87 2:10:33 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: AGENDA - MINUTES 

Please read the first couple of pages in (INFO)AGENDA.TXT before the
meeting.  The minutes of the previous meeting(s) can be found herein
and should be read prior to the meeting so we do not waste valuable
meeting time rehashing last week's meeting.

/Carl
From: Joe Smith <JMS@X930> 
Date: Wed, 17 Jun 87 19:14:23 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: System 38 will bring up P035/B07 tonight. 

I looked at the tracks left in the circular buffer and found a cause of
THUNGs.  There were several outstanding read requests, including one for unit
324.  When a request for 314 was added, for some reason it got a busy signal.
This is normal, the unit will be restarted when the not-busy signal comes in.
When the transfer on unit 324 finished, the not-busy signal came in as if it
were for units 320-327 instead of for units 300-317 as was expected.  Therefore
CPXKON tried to restart waiting units on BPB (unit 324 is BPB4), but not the
units on BPA (unit 314 is BPA14).  The THUNG was because unit 314 was not
restarted within 3 seconds.  Until we teach COMMOD and CPXKON that a single
controller (BPA) can have more than 16 disks, I put in a one-line hack that
restarts all waiting units when the not-busy signal comes in.  It will now find
any waiting unit, be it on BPA, BPB, BPC, or BPD.

File 1)	DSK:CPXKON.B06	created: 1100 12-JUN-87
File 2)	DSK:CPXKON.MAC	created: 1817 17-JUN-87
1)7	KONEN1:	HLLZ	T1,BPXCUB(J)	;Get mask of 16 unit busy flags
****
2)7		   ;This *HACK* is to allow 3 strings on one 3674 controller
2)		MOVEI	J,BPACB##	;*HACK* Start at 1st string *HACK*
2)		   ;The *HACK* is supposed to fix THUNG problems on F38
2)	KONEN1:	HLLZ	T1,BPXCUB(J)	;Get mask of 16 unit busy flags
**************
1)7	CRST:	JFFO	T1,.+2		;Find first unit that was busy
****
2)7	IF2,<PRINTX [Hack at KONEN1 needs to be eliminated]>
2)	CRST:	JFFO	T1,.+2		;Find first unit that was busy
**************
				/Joe
From: Joe Smith <JMS@X930> 
Date: Wed, 17 Jun 87 21:35:45 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Why /B07. 

Craig and Dennis:
  The previous message did not mention that the decision to create 38XB07
was made by Osman, Carl and myself.  The change is one line to CPXKON, but
is necessary to solve the THUNG problem on 38 and 3652 systems.  We also
decided that all systems currently running /B06 should come up on /B07 as
soon as possible.  The systems we scheduled to run /B06 next week will be
running /B07 at that time.

The correct fix (which will be after P035/C) will be to teach COMMOD and
CPXKON that there can be more than 2 strings on a controller.  The places
that currently store 16 flag bits in a halfword need to be modified to
handle 64 bits in two words.  Then update the CONFIG files so that systems
with many strings on a single physical controller show up as a single
logical controller.  In particular, system 38 will have BPA0-BPA27 instead
of BPA0-BPA17 + BPB0-BPB7, and systems with 3652s will have BPA0-BPA7 +
BPA40-BPA47 instead of BPA0-BPA7 + BPC0-BPC7.

The above change will make CPXKON aware of reality.  When it determines that
controller "BPA" is busy, it will correctly understand that the units on all
4 strings on that controller are busy.  Prior to /B07, CPXKON figured that
because the second 2 strings were assigned to "BPB", that it was a seperate
piece of hardware, and was not affected by "BPA" being busy.

I expect 38XB07 will not get any THUNGS.    /Joe
Received: from F29.Tymnet by X930.Tymnet; Tue, 16 Jun 87 10:19:03 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Tue, 16 Jun 87 9:29:46 PDT
From: NETS.TTE@EMSTXS.Ontyme.Tymnet 
Date: 16 JUN 87 16:49:30 
To: TXS.SUP@EMSTXS.Ontyme.Tymnet 
Message-id: I47474@Ontyme.Tymnet 
Subject: TTE Schedule Update 
Resent-from: Tymcom-X Supervisor <TXSSUP@X930.Tymnet> 
Resent-date: Wed, 17 Jun 87 21:56:57 PDT 
Resent-to: Carl A Baltrunas <carl@X930.Tymnet>, Osman Guven
	<osman@X930.Tymnet>, Joe Smith <jms@X930.Tymnet> 
Resent-cc: Craig Fletcher <fletcherc@X930.Tymnet>, DenCoff 
TTEScheduleUpdate: 

                            M E M O R A N D U M

                          NETWORK SYSTEMS COMPANY
                         NETWORK SYSTEMS MARKETING


DATE>      16 JUN 87  08:47

TO>        All Employees

COPIES>    

FROM>      Tymnet Training and Education


SUBJECT>   TTE Schedule Update


-----------------------------------------------------------------------


TTE has add the following classes to the schedule-

     TTE 100 Basic Data Communication            June 17-19
     TTE 502 TYMNET Concepts                     July 8-17
     TTE 430 Assembly Language Programming       July 20-24
     TTE 440 TYMNET Engine Programming           July 27-31
     TTE 442 ISIS Slot Programming and Debugg.   September 14-25
     TTE 210 IBM Data Comm and Intro to SNA      October 12-16
     TTE 230 TYMNET 3270/CMT                     October 19-23
     TTE 240 TYMNET SNA                          October 26-30

To enroll for any TTE course through OnTyme access               
  :EXEC *** TTE.ENROLL
From: FLETCHERC@X930.Tymnet 
Date: Thu, 18 Jun 87 8:48:24 PDT 
To: carl 
Subject: "Attaboy for timely and informative"... 

Attaboy for timely and informative minutes.  They look very good
and sum up what we discussed in the meeting.  Thanks for a good job.

	Craig
From: Osman Guven <osman@X930.Tymnet> 
Date: Thu, 18 Jun 87 8:51:55 PDT 
To: Monitor Group <Osman@X930.Tymnet>, Carl A Baltrunas <carl@X930.Tymnet>, Joe
	Smith <jms@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: THUNG Fix, /B07 monitor .. 

I copied P035/B07 from (M33) to (SYS)NEWMON.SAV on systems
F26, F29, F39, F58, F70. Sent mail to oper to bring the
systems up with NEWMON next time they come up. System F38
is running with /B07 as of today.
-Osman-
From: TXSTEXT@X930.Tymnet 
Date: Thu, 18 Jun 87 14:19:07 PDT 
To: carl 
Subject: "Hi! I didn't want to bother you"... 


Hi!

I didn't want to bother you with another phone call, but I forgot to ask you the
question which had been the reason for my call...Linda just called to confirm
the fact that we are still on for dinner tomorrow noc, and asked if 7PM reser-
vations would be okay. I gave her a tenative yes, depending on your work
schedule. Please call back a.s.a.p. if this is NOT okay, because I told her
that if she doesn't hear from me, she can assume that we're still on, okay?
ILYVM! /Waddle
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 18 Jun 87 14:37:16 PDT 
To: William R Soley <WRS@B39.Tymnet> 
Subject: Modems 

Bill,
  I've been asked to reccommend what kind of modems/line-drivers to
get for our 2 synch lines that will be run from South Bay Center to
our lab (1.5 mi north) at Nicholson lane.

  Since we're using DUP-11 or DUV-11 hardware which can't really run
faster than 9600 that is all I need...

  can you suggest any particular modems, or direct me to the information.

/Carl
From: TXSTEXT@X930.Tymnet 
Date: Thu, 18 Jun 87 15:08:29 PDT 
To: CARL 
Subject: "WE'RE SUPPOSED TO BE AT L L'S"... 


WE'RE SUPPOSED TO BE AT L & L'S HOUSE BY 7
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 18 Jun 87 18:19:31 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: Microcycle clock 

The contents of JBTCMP,JBTCP2 are the low&high 2-word result of the
KL EBOX time (RDEACT instruction) since system startup.  JBTCMP(J) and
JBTCP2(J) contain the KL EBOX time per job, since login.

We currently throw away the MBOX time, by overwriting it with the EBOX
time.  ICP reports the total of the EBOX times for all jobs for the
interval taken, divided by the fraction of a second to give MCY/SEC.

/Carl
From: Dennis Coffey (Tymcom-X Systems) <DenCoff@X930> 
Date: Fri, 19 Jun 87 8:51:04 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Subject: Re: Microcycle clock 
In-reply-to: your message of Thu, 18 Jun 87 18:19:31 PDT

Carl,

I understood everything except the following:  "ICP reports the total of the
EBOX times for all jobs for the interval taken, divided by the fraction of a
second to give MCY/SEC."  Could you clarify for me?  Thanks!

-D.-
Received: from F29.Tymnet by X930.Tymnet; Fri, 19 Jun 87 12:31:36 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Fri, 19 Jun 87 12:19:17 PDT
Return-path: <OPERA.SUP@EMSTXS.Ontyme.Tymnet> 
From: OPERA.SUP@EMSTXS.Ontyme.Tymnet 
Date: 19 JUN 87 11:59:03 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Cc: (27 names) 
Message-id: A72945@Ontyme.Tymnet 
Subject: NEW MONITORS for TYMCOM-10'S 

                        M E M O R A N D U M

                                                 MC DONNELL-DOUGLAS TYMSHARE




DATE>      19 JUN 87  11:58

TO>        SEE CC LIST

COPIES>    SEE CC LIST

FROM>      Rick Daniels


SUBJECT>   NEW MONITORS for TYMCOM-10'S


-----------------------------------------------------------------------


TYMCOM-10 Software Support will at times send mail to Operations
with instructions to bring a system up on a different monitor
and when it should be done.

Normally it is done during regular scheduled downtime.  The exceptions
to this rule are:

     a.  If a system is continuously going down; or

     b.  If USERS' are having problems with their software; or,

     c.  Problems of an EMERGENCY nature.

In these cases, they may request the system be recycled immediately
after they have solved the problem.  The crash code to use during
this recycle is the same crash code that was used when the problem
first developed.

Whatever shift this occurs on, the Operator should contact their Shift
Supervisor, or Senior Operator.  Please contact me if you cannot contact
the Shift Supervisor, or Senior Operator.
                                                                Page  2


The Shift Supervisor, or Senior Operator, should insure that the system
logbook has complete information entered into it.  They should also 
insure that:

     a.  SSW #4 is set

     b.  A note put on the CTY as to what monitor to bring system
         up on when recycled again or if the system should go down.

     c.  A monitor tape made for the host to use for COLDSTARTS.

     d.  Run DSKMAP to see if it has been updated.

     e.  Run R CRSHID;/SYS on the host to check monitor versions
         installed.

     f.  If there is a difference, then run RU (QASYS)MAPUPD.
         This program will update the DSKMAP.

     g.  When completed, run DSKMAP again and post it on the
         mainframe.

Please contact me if you have questions.

Thanks;

Rick Daniels
Received: from F29.Tymnet by X930.Tymnet; Fri, 19 Jun 87 15:17:37 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Fri, 19 Jun 87 15:15:55 PDT
Return-path: <OPERA.SUP@EMSTXS.Ontyme.Tymnet> 
From: OPERA.SUP@EMSTXS.Ontyme.Tymnet 
Date: 19 JUN 87 15:07:09 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Cc: OPERA.C/ELDRED@Ontyme.Tymnet, OPERA.J/WALLACE@Ontyme.Tymnet,
	OPERA.M/BELLOPATRICK@Ontyme.Tymnet, OPERA.S/MARCOTTE@Ontyme.Tymnet,
	OPERA.SUP@Ontyme.Tymnet, IPC.B/FISCHER@Ontyme.Tymnet,
	TXS.O/GUVEN@Ontyme.Tymnet, TXS.J/SMITH@Ontyme.Tymnet,
	TXS.C/BALTRUNAS@Ontyme.Tymnet, TXS.C/FLETCHER@Ontyme.Tymnet 
Message-id: A73074@Ontyme.Tymnet 
Subject: "M E M O R A N D U M MC DONNELL-DOUGLAS"... 

                        M E M O R A N D U M

                                                 MC DONNELL-DOUGLAS TYMSHARE




DATE>      19 JUN 87  15:04

TO>        Shift Supervisors
           Cheryl Eldred
           Bill Fischer

COPIES>    Osman Guven
           Carl Baltrunas
           Joe Smith
           Craig Fletcher

FROM>      Rick Daniels


SUBJECT>   Testing ASP (Version 7)


-----------------------------------------------------------------------


The weekend of 18 July this software will be tested on system 58.
Between now and then, 14 disk packs need to be set up to be used.

For the next few weekends, I will schedule this system down at 2400
on Friday nights until 0800, Saturday mornings.  The regular ASP dump
will be rescheduled for this timeframe.  The remaining time after the
dump is to be used to REFRESH, FORMAT, and INITIALIZE the packs.

On the weekend of 27 June, 7 packs will be done, or as many as possible,
and 7 packs the weekend of 4 July.  If the weekend of 11 July is needed to
finish up, it will be scheduled.  These packs will be identified and set
aside for use on 18 July.

On 18 July, the system will be scheduled down from 2400, Friday night
with a scheduled uptime of 2400, 19 July.

                                                                Page  2

During this time an ASP dump will be taken on F58 using (OSU)ASP.SAV
(Version 7) software.  After tapes have been verified, the system packs
will be taken off-line and put aside.

The packs that were set up previously will be put on-line.

After the file structure has been built, the ASP tapes will be restored.
After the restore, the system will be UNSHUT for users.

Any problems, a backup will be taken (if possible), and the packs will
be switched.

Please see me if questions.
Received: from F29.Tymnet by X930.Tymnet; Sun, 21 Jun 87 9:02:17 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Sun, 21 Jun 87 8:50:22 PDT
Return-path: <OPERA.SUP@EMSTXS.Ontyme.Tymnet> 
From: OPERA.SUP@EMSTXS.Ontyme.Tymnet 
Date: 21 JUN 87 08:40:48 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Cc: OPERA.C/ELDRED@Ontyme.Tymnet, OPERA.J/WALLACE@Ontyme.Tymnet,
	OPERA.M/BELLOPATRICK@Ontyme.Tymnet, OPERA.S/MARCOTTE@Ontyme.Tymnet,
	OPERA.SUP@Ontyme.Tymnet, IPC.B/FISCHER@Ontyme.Tymnet,
	TXS.O/GUVEN@Ontyme.Tymnet, TXS.J/SMITH@Ontyme.Tymnet,
	TXS.C/BALTRUNAS@Ontyme.Tymnet 
Message-id: A73198@Ontyme.Tymnet 
Subject: "M E M O R A N D U M MC DONNELL-DOUGLAS"... 

                        M E M O R A N D U M

                                                 MC DONNELL-DOUGLAS TYMSHARE




DATE>      21 JUN 87  08:38

TO>        Shift Supervisors
           Cheryl Eldred
           Bill Fischer

COPIES>    O. Guven
           J. Smith
           C. Baltrunas

FROM>      Rick Daniels


SUBJECT>   Addendum to A73074


-----------------------------------------------------------------------



This is a follow-up on my ONTYME A73074.

Sequence of events leading up to the ASP test on 18 July and responsi-
bilities:

22 JUN     DAYS

Obtain 14 good disk packs and make up slap-tags.  Slap-tags will be
identified as follows:

     a.  Pack ID

     b.  Vender and serial number of pack.

     c.  NEW (ASP VER 7)

                                                                Page  2

When completed, packs will be stacked in the vicinity of F58 disks
drive and identified why they are there.  A list of pack serial
numbers will be provided the COORDINATOR.

26 JUN     SWINGS

Locate the 14 disk packs above and put in front of disk drives as
identified on slap-tags.

27 JUN     MIDS

Start ASP using (OSU)ASP, Version 7 on current running disk packs.

I will be in before ASP dump is completed to assist in pack movement.

Please contact me if any questions.
From: FLETCHERC@X930.Tymnet 
Date: Mon, 22 Jun 87 11:37:46 PDT 
To: carl, jms, osman, dencoff 
Subject: "Please tell me what Tymnet related"... 

Please tell me what Tymnet related courses you have taken to date
so I can determine what courses to enroll you in for the rest
of the year.  Tell = send mail.

	CRaig
Received: from F29.Tymnet by X930.Tymnet; Mon, 22 Jun 87 12:16:29 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Mon, 22 Jun 87 12:05:31 PDT
Return-path: <OPERA.SUP@EMSTXS.Ontyme.Tymnet> 
From: OPERA.SUP@EMSTXS.Ontyme.Tymnet 
Date: 22 JUN 87 11:35:10 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Cc: (26 names) 
Message-id: A73484@Ontyme.Tymnet 
Subject: "There is an updated ASPDMP.MEM"... 

There is an updated ASPDMP.MEM under the username FREMONTDOC:74 with 
latest procedures.

It is recommended you obtain a copy and if there are questions or 
changes, please let me know.

Thanks Rick
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Mon, 22 Jun 87 15:04:05 PDT 
To: Cherie Marinelli <TXSText@X930.Tymnet> 
Subject: Re: Angela's address 

Angela DeSouza
102 Princeton Arms
Cranbury, NJ  08512
(609) 443-8755
From: Osman Guven <osman@X930.Tymnet> 
Date: Mon, 22 Jun 87 15:40:00 PDT 
To: Monitor Group <Osman@X930.Tymnet>, Carl A Baltrunas <carl@X930.Tymnet>, Joe
	Smith <jms@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: Base crashes & FTACFC STOPCD .. 

                             M E M O R A N D U M


                                                      TYMCOM-X SUPPORT



   DATE:  22 June, 1987

     TO:  Rick Daniels

   FROM:  Osman Guven

SUBJECT:  Base crashes and FTACFC STOPCD crashes on /B07

--------------------------------------------------------------------

o  Base crashes occurs at both Data Centers PDP10's.  Frequency of the
   crashes is about the same.  One of the enhancement we have in the
   que about TYMCOM-X and EBUS slot code is to eliminate some of these
   type of crashes: TTYBMT, TTYBPN, CNTPRT, ZAPBUG, BASE etc.

o  Yes, Joe is looking into FTACFC STOPCD crashes.

-Osman-
From: Joe Smith <JMS@X930> 
Date: Mon, 22 Jun 87 15:41:29 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Created /B08 instead of /B07-1. 

As per discussion (with JMS, CARL, OSMAN, DENCOFF present), the fix system
38's FTACFC crash will not be distributed as a DDT patch.  Instead, /B08
will replace all copies of nnXB07.SAV.

The crash on F38 showed FTA3 was given a command, FTA1 interrupted while
waiting for FTA3 to finish so FTA1 was given a new command, then the unit
check on FTA3 was noticed.  Due to what appears to be a minor glitch in the
SA10 microcode, the pointer stored at memory location 300+2 implied FTA1
when the unit-check was reported for FTA3 at location 300+1.  This
inconsistancy caused the FTACFC stopcode, which is the same as KAF with
CH1's PC indicating a loop at PI channel 3 at SGPREV in FTASER.  The patch
is to set T4 to a reasonable value and return instead of getting stuck in
a very slow loop searching 256K for the bogus pointer.

File 1)	DSK:FTASER.B07	created: 1859 02-JAN-87
File 2)	DSK:FTASER.MAC	created: 1516 22-JUN-87
1)46		MOVEI	T2,UNICMD+1(T3)	;ADDR OF 1ST READ CMD.
1)		CAIGE	T1,(T2)		;T1 should point past this addr
1)		 STOPCD	(.,JOB,FTACFC,,<FTA error - Cannot Find Command>)
1)	SGPRV2:	SKIPN	(T2)		;SKIP 0
****
2)46					;T1 has pointer from RH of location 302
2)		MOVEI	T2,UNICMD+1(T3)	;Skip set-density, get addr of read cmd
2)		MOVE	T4,T2		;Use top of command list if FTACFC
2)		CAIL	T1,UNICMD(T3)	;Does it point before the command list
2)		CAILE	T1,UNIDON(T3)	; or after the end of the command list?
2)		 STOPCD	(CPOPJ,INFO,FTACFC,,<FTA error - Cannot Find Command>)
2)	SGPRV2:	SKIPN	(T2)		;SKIP 0
**************
1)52	SNEW:	HRRZ	T1,1(U)		;SET UP T4 FOR THE CMD
1)		PUSHJ	P,SGPREV	;GENERATORS TO TIC TO.
****
2)52	IF2,<PRINTX [Should use BMX pointer if async error status]>
2)	SNEW:	HRRZ	T1,1(U)		;SET UP T4 FOR THE CMD
2)	;22-Jun-87 crash dump on F38 shows that SA10 may leave garbage at 1(U)
2)		PUSHJ	P,SGPREV	;GENERATORS TO TIC TO.
**************			/JMS
Received: from B39.Tymnet by X930.Tymnet; Tue, 23 Jun 87 2:56:50 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Tue, 23 Jun 87 2:54:37 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Subject: Re: Modems 
In-reply-to: your message of Thu, 18 Jun 87 14:37:16 PDT

Paradyne seems to be the favorite around Bubbnet-land.  Mine is a mode
MP-9600 part number 836-4200-0011.  Hope this helps.  -Bill
From: Osman Guven <osman@X930.Tymnet> 
Date: Tue, 23 Jun 87 11:08:20 PDT 
To: Monitor Group <Osman@X930.Tymnet>, Carl A Baltrunas <carl@X930.Tymnet>, Joe
	Smith <jms@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: Information .. 

o  /B08 Didn't get to F29 & F33, I finished the copy.

o  Last night, F29 had some KAF crashes while restoring accouting 
   tapes from Ontyme machines just like F28 was a few months ago.  
   Asked Rick to come up with /B08 and use the same Ontyme accounting
   tape which was crashing the system to see if the fix in /B08 will
   take care  of the problem.  He will schedule the system to try it
   today or tomorow.

-Osman-
From: Joe Smith <JMS@X930> 
Date: Tue, 23 Jun 87 11:15:06 PDT 
To: Rick Daniels <OPERA.SUP@EMSTXS.Ontyme> 
Cc: Monitor Group <JMS>, Carl, Osman, FletcherC, DenCoff 
Subject: Summary of recent monitor changes. 

P035/B04 includes the ability to run with AR/ARX parity trap enabled.
         It runs on systems with 365x disks.

P035/B06 fixes the problem of bogus "search errors" on systems with 3675 disks.

P035/B07 would normally be called P035/B06-1.  It fixes the problem of THUNGs
	 on systems with 3 strings on a single 3674 and on 3652 disks.

P035/B08 would normally be called P035/B06-2.  It allows the system to continue
	 after an FTACFC stopcode, which occurs only when unrecoverable read or
	 write errors occur on one FTA while a second FTA is doing I/O.

With the possible exception of system 39, we want to be running /B08 on all
systems in the Fremont Data Center.

			/Joe Smith
From: Osman Guven <osman@X930.Tymnet> 
Date: Tue, 23 Jun 87 12:40:52 PDT 
To: Monitor Group <Osman@X930.Tymnet>, Carl A Baltrunas <carl@X930.Tymnet>, Joe
	Smith <jms@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: Group Meeting .. 

Craig and I will be going to a meeting at Fremont D. C. 
tomorrow (6/24 at 10:30).  Our group meeting is rescheduled 
from 10:00 am to 1:00 pm.

-Osman-
From: Osman Guven <osman@X930.Tymnet> 
Date: Tue, 23 Jun 87 14:21:27 PDT 
To: Monitor Group <Osman@X930.Tymnet>, Carl A Baltrunas <carl@X930.Tymnet>, Joe
	Smith <jms@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: This afternoon .. 

I am going to BLDG C to test the KL Diagnostic Pakc.

-Osman-
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Tue, 23 Jun 87 20:43:14 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Jon Mosser <MosserJ@X930.Tymnet>,
	Dennis Coffey <dencoff@X930.Tymnet>, William R Soley <WRS@B39.Tymnet>,
	Wayne D Bartlett <BARTLETW@B39.Tymnet>, Baigent, Landa Morris
	<IPC.L/Morris@Ontyme.Tymnet>, Ed Roop <IPC.E/Roop@Ontyme.Tymnet>,
	Ingrid Lopes <IPC.I/Lopes@ontyme.tymnet>, Jan Krivanec
	<IPC.J/Krivanec@Ontyme.Tymnet>, Rick Daniels
	<IPC.R/Daniels@ontyme.tymnet> 
Subject: New SETOP requirements 

In preparation for building a test database on system X930 for the new
SETOP program I am asking each of you to send me mail containing all of
the following information:

   1. Your Name
   2. Your ISG identification number
      (This is NOT necessarily your employee number if you are part of
       MDFSCO or MDCSC.  It is the 6-digit number on your ISG badge,
       such as 212344, most probably not 008834 with leading zeros.)
   3. Your current OPER name
   4. Your current telephone number and mail stop
   5. Your TUMS or ONTYME name (or both) for security mail
   6. Your Username (or list of usernames, if you use more than one)
   7. Your opername manager (who gave you license)
   8. Your immediate supervisor's name, phone number and department
   9. Your current license

  10. Why do you need whatever licenses you have.  Please be specific on
      each and every license listed in item 9.  If you do not know why you
      have a particular license, please say so.  If you have a particular
      need for more license than you have, please say so, and why.

      If you are a manager and require license only because one of your
      subordinates requires the license to do their job, please say so
      and specify the above information for each of your subordinates so
      they may be entered into the database.

Thank you all.
From: Joe Smith <JMS@X930> 
Date: Wed, 24 Jun 87 0:48:28 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Maximum jobs versus disks. 

Our current monitor configuration can handle only 32 jobs when 64 disks 
(8 strings) are defined.  Lowering the number of disks to 48 allows 80 jobs,
and with 32 disks 128 jobs can be handled.

These limits are based on the restriction currently in ONCE that the entire
monitor (including the symbol table) fit in 112K of unpaged core.

/Joe
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 24 Jun 87 2:12:17 PDT 
To: William R Soley <WRS@B39.Tymnet> 
Subject: SETOP record 

Bill,
    Thanks for the prompt response.  Your record on 930 looks like:

WRS         ;23-Jun-87 23:16:17;ROOT        
211711;   0;ROOT        
Soley, William R.
408-446-6210  Bubb D
WRS,MAIL
William R. Soley <WRS@B39.Tymnet>
24-Jun-87 01:34:50;CARL  
541611752315;21-May-85 00:00:00;WRS         
R;   377 775617;01-Jun-87 00:00:00;ROOT        
C;Mgr: Euske, William;408-446-7175;Dept 4119 (Network Systems Architecture)
C;Why: All licenses; systems programming and security auditing

    Format is:

OperName;Entry-Date;Who entered
ISG ID#;District;Oper-Manager
Employee Name
Employee Phone & Mailstop
Username List (where it's valid to see PUTSAR records in stream acct)
TUMS/Ontyme mailing address
Record-change-date;Record-change-author  (other than password change)
Password hash;password change date-time;Password change author
L; license bits (pseudo,real);when setup;who setup; start * ; stop *
R; license bits (pseudo,real);when received;who granted; start * ; stop *
G; license bits (pseudo,real);when granted;to whom; start * ; stop *
C; comment record, usually has info about real manager not in file
C; or notes about why user has license and what it's for.


Notes:

All records are recognized by the preceeding blank line!
All L,R,G and C information lines may be repeated as necessary.
L; lines are base licenses, usually granted by God or [1,1] to ROOT.
R; lines are licenses received by an opername, saying where it came from.
G; lines are licenses granted to an opername, saying whom receives it.
C; lines are completely free-form.

start * = optional start date, if missing, defaults to when granted/received
stop *  = optional stop date,  if missing, defaults to infinity


Notice, no total license field... it is the accumulated R records which
make up your license.  L records are special, same as when manager is only
a PPN and not a real manager... shoul dnot happen in the future, only one
is ROOT, given license by [1,1].

Any questions, send mail or give me a call...

PS.  Cherie's not up to visiting this week... we dug out 40 tons of dirt
     this weekend from our back yard.

How is Becky doing?
/Carl
From: Osman Guven <osman@X930.Tymnet> 
Date: Wed, 24 Jun 87 8:30:11 PDT 
To: Monitor Group <Osman@X930.Tymnet>, Carl A Baltrunas <carl@X930.Tymnet>, Joe
	Smith <jms@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: /B08 Testing of KAF .. 

---------------------------------------------------------------------

Message 218 (964 chars): New Read
Received: from F74.Tymnet by X930.Tymnet; Wed, 24 Jun 87 4:54:42 PDT
Return-path: <DANIELSR@F74.Tymnet> 
From: DANIELSR@F74.Tymnet 
Date: Wed, 24 Jun 87 4:48:36 PDT 
To: osman, danielsr 
Subject: "Brought F29 up on NEWMON manually"... 

Brought F29 up on NEWMON (P035/B08) manually to rerun HS2287 ONTYME
accounting tape.  This was done to see if the system would cacrash with the same STOPCODE that occurred on 22 Jun.

After bringing the system up, I mounted this tape of FTA2
and started the restore.  I also mounted a tape on FTA1 and started
storing the directory of UTIL to it.

The accounting tape stopped after "Creating User Information" typed
out (same place as before).  The TITO tape stopped shortly after this.
Approximately one minute later, F29 went down with same "KAK" stopcode.

(That's KAF, not KAK)

I then dismounted the tapes and brought the  system up.  I have the
hardcopy if additional information is needed.

Rick


---------------------------------------------------------------------

Thanks Rick.  This is very valuable information.  Please save the tape
that causes the crash.  We will be talking about this in our group meeting
this afternoon and come up with another patch/fix to the monitor to
fix the problem.

-Osman-
From: Dennis Coffey (Tymcom-X Systems) <DenCoff@X930> 
Date: Wed, 24 Jun 87 9:10:33 PDT 
To: carl 
Subject: SETOP test database. 

1. NAME:	Dennis Coffey
2. ISG ID #:	212320
3. OPER NAME:	DENCOFF
4. PHONE:	415/794-2588
   MAIL STOP:	Liberty
5. TUMS:	DENCOFF@X930.TYMNET
   ONTYME:	TXS.D/COFFEY
6. USERNAMES:	DENCOFF
		SPPOPER
		SYSMAINT
		TSUCOOP
7. OPERNAME MGR:TXS
8. IMMED SUPER:	Craig Fletcher
		415/794-2403
		FSCO, Tech Ops, TXS
9. CURR LIC:	TP AS HF (BH) RA WA RC OP SY GD TD ST JL AC XC F1 (JB) WC
10. NEED:	TP	Member of TXS
		AS	Member of TXS
		HF	Member of TXS
		(BH)	Member of TXS
		RA	Member of TXS
		WA	Member of TXS
		RC	Member of TXS
		OP	Member of TXS
		SY	Member of TXS
		GD	Member of TXS
		TD	Member of TXS
		ST	Member of TXS
		JL	Member of TXS
		AC	Member of TXS
		XC	Member of TXS
		F1	Member of TXS
		(JB)	Member of TXS
		WC	Member of TXS
Received: from F29.Tymnet by X930.Tymnet; Wed, 24 Jun 87 11:17:16 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Wed, 24 Jun 87 11:11:17 PDT
Return-path: <IPC.I/LOPES@EMSTXS.Ontyme.Tymnet> 
From: IPC.I/LOPES@EMSTXS.Ontyme.Tymnet 
Date: 24 JUN 87 10:45:35 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Cc: TXS.C/BALTRUNAS@Ontyme.Tymnet 
Message-id: A74383@Ontyme.Tymnet 
Subject: "M E M O R A N D U M DATE> 24 June"... 

           M E M O R A N D U M
 
 
DATE>      24 June 1987  10:43 PDT
 
TO>        Carl Baltrunas (TXS.C/BALTRUNAS)
 
FROM>      Ingrid Lopes
 
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 
     1.  Ingrid Lopes
     2.  214859
     3.  OPER name = SSINSTALL
     4.  415/498-2564 , Solar
     5.  IPC.I/LOPES
     6.  Username = SSINSTALL
     7.  OPER mgr. = CORBIN on 930,  = TXS on all PDP-10's
     8.  Ed Roop, 415/498-2562, MD-IPS Resource Mgmt.
     9.  OPER license as found on sys 930:
         WC RC OP SY GD TD ST JL AC XC RA WA HU CS AP MT SP RL
         OPER license as found on sys. 34:
         WC RC OP SY GD TD ST JL AC XC QM RA WA HU CS AP MT SP RL VL
     10. Justification: Licenses are necessary for distribution and
         installation of files to directories, including SYS.
From: Osman Guven <osman@X930.Tymnet> 
Date: Wed, 24 Jun 87 16:49:31 PDT 
To: Rick Daniels <opera.sup@emstxs.ontyme.tymnet>, Monitor Group
	<Osman@X930.Tymnet>, Carl A Baltrunas <carl@X930.Tymnet>, Joe Smith
	<jms@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: /B08 Monitor .. 

Rick ..

o  (SYS)NEWMON.SAV on all of the PDP10's except B39 is a P035/B08 monitor.
   Please bring all the systems up with it next time they come up.  Some
   of them already running with /B08 monitor, this is to make all of them
   run with the same monitor.

o  B39, please continue to run it with P034/P-16 monitor untill we find
   out why it wouldn't run the /B06 monitor.

o  FTACFC STOPCD, we are looking into it, will let you know when we come
   up with a solution.

-Osman-
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 24 Jun 87 17:23:41 PDT 
To: Joe Smith <JMS@X930.Tymnet> 
Cc: Osman Guven <Osman@X930.Tymnet> 
Subject: License... 

As per our "wall" discussion, I'd like you to think about this:

What if,  license on a file worked like a "protection".
          If a file has more license than the process attempting to
          update or supersede (ENTER UUO) then the "ENTER" fails.
          Rename to reduce the license (or increase the license) would
          always succeed if the process has the final license.

So, just as you cannot delete a file marked NO NO NO, you can rename it
    to a lower protection, and delete it.

So, a file with license can only be copied by a process with that or greater
    license.  It can be renamed, reducing the license, then copied, renamed
    or deleted.

    This also prevents accidently renaming a file, losing it's license, and
    never knowing it....  a current problem, not so much a security risk.

--------------------
So, what about TELECOPY, of files with license?  Trying to copy files to
files on other systems without license would fail (as it should).  TELECOPY
should be fixed as part of implementing such a scheme (as it would need to
be fixed, in order to work correctly).
--------------------

What do we really lose?  The convenience of being able to create a file and
then have to manually put license on it.  If a file has a license and it is
to be superseded, the license goes away (unless it is specified in the ENTER)
(which many programs such as LINK do not know enough to do).

I'm not advocating this change.... I just want us to think about it, and
how something similar could help our "license" problems with new, restored,
updated, copied, stolen programs and/or data.
/Carl
Received: from B39.Tymnet by X930.Tymnet; Wed, 24 Jun 87 17:43:34 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Wed, 24 Jun 87 17:36:55 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Subject: Re: SETOP record 
In-reply-to: your message of Wed, 24 Jun 87 2:12:17 PDT

Re: Becky - still hanging in there.  Saw Veronica today and everything is
fine.  No sign of dialation, yet.  Expect sometime within next 7 days.
-Bill

SETOP stuff looks good.
-Bill
From: Joe Smith <JMS@X930> 
Date: Wed, 24 Jun 87 21:48:24 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Cc: Osman Guven <Osman@X930.Tymnet> 
Subject: Re: License... 
In-reply-to: your message of Wed, 24 Jun 87 17:23:41 PDT

One feature we would like to keep is the current one where if the job has
enough license, and the existing destination file has any license, then a
superseding ENTER preserves license.  That is "!GET (OSU)LOGINN" followed
by "!SSAVE (SYS)LOGINN" preserves the old protection and license.  Is this
what you meant by "license should be like protection"?  I agree that a frame
that has WF but not JL should get an error on ENTER if it were to try to
supersede (SYS)LOGINN.SHR.

/Joe
From: Joe Smith <JMS@X930> 
Date: Wed, 24 Jun 87 22:12:51 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: License disappears (sometimes) on RENAME. 

After reading Carl's message I did some testing.  I GFDed to SPL, and then,
without setting license, I tried ".RENAME COPY.S=COPY.SAV".  The file COPY.SAV
had JL and RF license before and after.  (And still after renaming back to
COPY.SAV.)  Then I tried ".RENAME (JMS)COPY.SAV=(SPL)COPY.SAV".  The license
disappeared when the file changed directories!  After reinstating JL and RF,
I tried renaming it the other direction, from my logged in directory to the
GFDed directory.  License went away.  One last test was to reset everything
and set WF only on my frame and then try renaming across directories.  This
time RF survived (since it is implied by WF) but JL did not.

Until today I did not know that license got left behind on a RENAME.  It is
not what I expected.  However the preservation of license when doing
 "RENAME (SYS)PROGRAM.OLD=(SYS)PROGRAM.SAV" is a feature worth preserving.
/Joe
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 25 Jun 87 0:01:03 PDT 
To: Joe Smith <JMS@X930.Tymnet>, Osman Guven <Osman@X930.Tymnet> 
Subject: License again 

Yes, want to preserve:  load/get program; SSAVE program     keeps license
      if you have the same license... although, if you don't have ALL the
      license, I think it ought to fail... you should NOT be able to do
      anything by way of ENTER if you do not have same or greater license.

Rename across directories, if you don't have license, it goes away... as
      expected.  Are you saying that if you HAVE the license, it also goes
      away just because it is across directories?  (It should always go
      away if you don't have it [now] whether or not it is across dir's
      but you should be able to rename license across dir's if you have it!)

My suggestion is to make the enter fail, if you do NOT h
ave enough license
which would cause a "protection"/"license" failure and abort...  so people
can't "accidently" rename or copy over a file that has license.

/Carl
From: FLETCHERC@X930.Tymnet 
Date: Thu, 25 Jun 87 7:57:30 PDT 
To: carl 
Subject: "I enrolled you in tte.400 intro"... 

I enrolled you in tte.400 intro to ISIS starting july 27.
Please let me know when you get confirmation.

	Craig
Received: from F29.Tymnet by X930.Tymnet; Thu, 25 Jun 87 15:32:20 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Thu, 25 Jun 87 15:27:23 PDT
Return-path: <IPC.L/MORRIS@EMSTXS.Ontyme.Tymnet> 
From: IPC.L/MORRIS@EMSTXS.Ontyme.Tymnet 
Date: 25 JUN 87 15:08:17 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Message-id: A75037@Ontyme.Tymnet 
Subject: Setop 
NEWSETOPREQUIREMENTS: 

     ATTN:  CARL BALTRUNAS

     FROM:  LANDA MORRIS

     SUBJ:  NEW SETOP REQUIREMENTS


     HERE IS MY RESPONSE TO YOUR ONTYME #A74206 REQUESTING CURRENT
INFORMATION FOR THE NEW SETOP REQUIREMENTS.

     IF THERE IS SOMETHING I HAVE OMITTED, PLEASE LET ME KNOW.


THANK YOU,
LANDA/RPM

     1.  Landa Morris
     2.  211855
     3.  OPER name:  LANDA
     4.  (415)498-2557 - Solar Wy.
     5.  ONTYME:  IPC.L/MORRIS
     6.  USERNAME:  LMORRIS, SRA, SRA1, SRAMOV, SRACRT, SRAVAL, etc.
     7.  Manager:  ROOPE
     8.  Supervisor:  Ed Roop  (415)498-2562  Dept. L256/RPM
     9.  WC OP SY AC RF WF CS VL
    10.  Reason:  These licenses were assigned to me when I came into
         the department.  They are necessary to help validate users and
         monitor the systems.
From: Joe Smith <JMS@X930> 
Date: Fri, 26 Jun 87 1:14:04 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: 8 of 10 crashes on 33 are SAXINX 

Most of F33's crashes are KAF stopcodes, but the crash dumps show that a
SAXINX info stopcode had just occurred and the info hadn't gotten a chance to
type out on the CTY.  One crash implied that the SA10 stopped working the
time it was determined that the SA10 caused the interrupt and the time the
status was read to determine which channel caused the interrupt.  The
changes to COMMOD in /B09 will get more information and try to continue.
Note: This does not affect F29's problem with reading ONTYME accounting.
That problem is still under investigation.     /Joe
From: Joe Smith <JMS@X930> 
Date: Fri, 26 Jun 87 11:57:03 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: No meeting. 

The 1pm Friday meeting has been canceled due to insufficient data.
I believe /B09 will help F33's KAF stopcodes due to heavy FTA usage.
However F29's KAF stopcodes from the ONTYME accounting is a different problem,
and needs further study.  I will send another message later today.  /Joe
From: Joe Smith <JMS@X930> 
Date: Fri, 26 Jun 87 17:13:33 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Found loop in FTASER. 

FTASER has several phases of "DC-R" recovery (DataCheck-Read).  Phase 1 is to
re-read the record forwards.  Phase 2 is to read the record backwards.  Phase 3
is to continue reading backwards if phase 2 worked but did not read the entire
record.  The calculation to determine where to resume reading misinterpreted
the command list and got into an infinite loop (causing KAF).  The check for
getting out of the loop failed if the current command list did not start at
the beginning of the area reserved for command lists.  The fix was to stop at
a zero word as well.  
File 1)	DSK:FTASER.B09	created: 1516 22-JUN-87
File 2)	DSK:FTASER.MAC	created: 1524 26-JUN-87

1)47		SOJA	T1,SDMPC2	;SEE IF CONTINUE.
****
2)47		SKIPE	-1(T1)		;Done if no previous command
2)		SOJA	T1,SDMPC2	;SEE IF CONTINUE.
**************

The system does not hang anymore.  However, the OSIRUS RESTORE program tries
to re-read the same record over and over again.  But that's its problem (or
possibly a misfeature in FOROTS).  P035/B10 will be put on F29 tonight, and
eventually all other systems in Fremont.    /Joe
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Fri, 26 Jun 87 18:40:45 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey
	<dencoff@X930.Tymnet>, Rick Daniels <IPC.R/Daniels@Ontyme.Tymnet> 
Subject: Hotline (type) call 

System F30 was experiencing a rise in hard device errors on BPA6.  They
took the system down to do a PAKCOP of the pack (3675's) and saw the same
hardware check problem we had with system 38 two weeks ago.

Rick called and wanted to know if it was OK to use Joe's modified PAKCOP.
I said, go... and we realized that that version was for 3650's in blocks.
We decided to run ASP version 7 to copy out the pack to tape and then do
a restore to a new pack.

We did a compare of the save prior to the restore and found 78(*) pages that
did not copy exactly.  Nothing was done to see how "off" the pages were.
We restored the tapes to a new drive/pack and I created a file with 78 pages
in it for DSKCLN to find multiply used pages and mark the files bad.

System came up with a FULL DSKCLN and reported errors as expected in RECOV.SYS
and on the console.  One UFD was affected.  Operations has the list of files
from FNDBAD to restore and the UFD name to work through the all-files and
backups.

I told them to call us if they had any more problems.

We received a verbal "thanks" from both Bob Fischer and Cheryl Eldred for
saving them a rebuild.

/Carl
Received: from B39.Tymnet by X930.Tymnet; Sun, 28 Jun 87 1:56:16 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Sun, 28 Jun 87 1:41:24 PDT 
To: (Monitor People) Carl@930, JMS@930, Osman@930 
Subject: RDIST program (finally) 

I've finally written RDIST as promised.  It updates files on multiple systems.
I've attached the manual page for it.  Locations are:
  source:  (XEXEC:29)RDIST.SAI
  document:(XEXEC:39)RDIST.PUB
I'll be putting it on XEXEC everywhere soon.  Advise of suggestions.  Please
consider fixing TELECOPY to allow the TALK command in a command file and to
not always update existing file (i.e. supercede).  -Bill
   (XEXEC)RDIST                    Tymcom-X                     (XEXEC)RDIST


   SYNOPSIS

           Remote file distribution.

   SYNTAX

           RDIST outfile=f1,f2,...,fn/USER:u/HOST:h/CHECK/LIST/TRACE/VERBOSE

   DESCRIPTION

           RDIST maintains  duplicate copies of  selected files  on multiple
           systems.   This is  accomplished by  building a  circuit  to each
           system  and running  the (SPL)FINDIT  program to  obtain creation
           date, checksum, protection and license data on the  files.  RDIST
           then  builds a  TELECOPY command  file and  executes  TELECOPY to
           update those files which have incorrect checksums.

           The parameters are as follows:

             outfile=      output file for status log; default is no log

             f1,f2,...,fn  files to be updated, each may contain user name
                           and wild cards; if no user name is given the
                           one given by /USER:u is assumed; default is *.*

             /USER:u       login name to build circuit under (requires AC
                           license); default is current user

             /HOST:h       list of host numbers to update; default is all

             /CHECK        do everything but run TELECOPY

             /LIST         generate list only; does not compare files or
                           run TELECOPY; replaces running FINDIT via MHX

             /TRACE        show circuit traffic on terminal for debugging

             /VERBOSE      show status of each file, even if its current;

   CAVEATS

           The program has no way to correct bad protection or license.












                                 June 28, 1987                             1

Received: from F30.Tymnet by X930.Tymnet; Sun, 28 Jun 87 7:53:44 PDT
Return-path: <DANIELSR@F30.Tymnet> 
From: DANIELSR@F30.Tymnet 
Date: Sun, 28 Jun 87 8:02:44 PDT 
To: CARL 
Subject: "CARL WOULD YOU GET RID OF THE"... 


CARL - WOULD YOU GET RID OF THE FILE THAT REPORTS  'BDA' ON F30.

THANKS RICK
Received: from F29.Tymnet by X930.Tymnet; Mon, 29 Jun 87 12:01:55 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Mon, 29 Jun 87 10:47:27 PDT
Return-path: <IPC.R/DANIELS@EMSTXS.Ontyme.Tymnet> 
From: IPC.R/DANIELS@EMSTXS.Ontyme.Tymnet 
Date: 29 JUN 87 10:34:16 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Cc: (28 names) 
Message-id: A75677@Ontyme.Tymnet 
Subject: Out Of Office 

                         M E M O R A N D U M





DATE>      29 JUN 87  10:33

TO>        All Concerned

COPIES>    

FROM>      Rick Daniels


SUBJECT>   Out Of Office


-----------------------------------------------------------------------


This is to inform you that I will be unavailable from 3 July
through 10 July. 

Thanks 

Rick Daniels
Received: from F74.Tymnet by X930.Tymnet; Mon, 29 Jun 87 15:00:51 PDT
Return-path: <osman@X930.Tymnet> 
From: Osman Guven <osman@X930.Tymnet> 
Date: Mon, 29 Jun 87 14:59:39 PDT 
To: Rick Daniels <opera.sup@emstxs.ontyme.tymnet>, Monitor Group
	<Osman@X930.Tymnet>, Carl A Baltrunas <carl@X930.Tymnet>, Joe Smith
	<jms@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: /B10 Monitor .. 

Rick..

(SYS)NEWMON.SAV on all Fremont D. C. systems are P035/B10 monitor.
Please bring the systems up with it next time they come up.  It has
a fix so that the system won't crash (KAF) when OSIRUS RESTORE is
reading ONTYME accounting tapes.  Thank You.

-Osman-
Received: from F38.Tymnet by X930.Tymnet; Mon, 29 Jun 87 16:59:50 PDT
Return-path: <Carl@X930.Tymnet> 
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Mon, 29 Jun 87 16:57:50 PDT 
To: wrs 
Subject: MAIL on DETxxx program FINDIT TI 

You have some number of these jobs on various hosts....  Methinks something
is not working quite right with whatever you are having done on useranme
MAIL.  Maybe an older version of your new program for copying files?

/Carl
Received: from B39.Tymnet by X930.Tymnet; Mon, 29 Jun 87 18:22:30 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Mon, 29 Jun 87 18:15:28 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Subject: Re: MAIL on DETxxx program FINDIT TI 
In-reply-to: your message of Mon, 29 Jun 87 16:57:50 PDT

It counts on LOGOUT ON DISCONNECT and SMTP screws with it.
Thanks - I'll fix SMTP.  -Bill  (that won't be a problem
with other user names than MAIL). 
From: Joe Smith <JMS@X930> 
Date: Mon, 29 Jun 87 21:34:19 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: TUMS distribution not complete. 

System 58 users were complaining that the MAIL command produced "Address Check
for device DSK, UUO at user PC 150".  (MAIL:58)RDMAIL.SAV was corrupted - the
GET command bombed out.  After copying over a new version, the following
discrepencies were noticed:

(MAIL:35)MAILER.SAV wrong protection.
(MAIL:58)MAILER.SAV wrong checksum
(MAIL:58)SENDMA.SAV wrong checksum
(MAIL:58)RDMAIL.SAV was causing "ADDRESS CHECK", I telecopied from 29
(MAIL:62)MAILER.SAV wrong protection, no license
(MAIL:62)RDMAIL.SAV no license

On some systems (XEXEC)*.DOC is protected ALL RD NO instead of ALL RD RD.
From: JMS@X930.Tymnet 
Date: Tue, 30 Jun 87 1:12:45 PDT 
To: carl 
Subject: "What the is going on? My modem"... 

What the #%$# is going on?  My modem just hung up.  I have DETACH-CONTINUE
set in the LUD, but when I logged back in, my job was not there!  How can
that happen?  Is the monitor out to get me?  How did it know I was 2 seconds
away from exiting the editor?  Huh?
From: Joe Smith <JMS@X930> 
Date: Tue, 30 Jun 87 1:17:40 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Ignore message about TUMS distribution. 

Sorry, wrong address.
From: Joe Smith <JMS@X930> 
Date: Tue, 30 Jun 87 14:13:52 PDT 
To: CARL, WRS 
Cc: Monitor Group <JMS>, Carl, Osman, FletcherC, DenCoff 
Subject: SETOP should clear input buffer if no DRWSPR.EPO file. 

There is a very small window between the time that PJ copies the new oper
password file to SYS and the time that it sets WC license on it.  If an MHX
job just happens to try to use "O$" during that time, SETOP complains that
there is "NO PASSWORD FILE" and exits without clearing the input buffer.
When this happenned to me today, my oper password showed up on the command
line where anyone looking over my shoulder could see.  Because of MEXEC, it
tried to run a program matching the first word of my oper password.  This
word was then made available to SYSTAT for the world to see.

This is not good.
Received: from B39.Tymnet by X930.Tymnet; Tue, 30 Jun 87 17:07:30 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Tue, 30 Jun 87 16:58:18 PDT 
To: Joe Smith <JMS@X930> 
Cc: CARL, Monitor Group <JMS>, Carl, Osman, FletcherC, DenCoff 
Subject: Re: SETOP should clear input buffer if no DRWSPR.EPO file. 
In-reply-to: your message of Tue, 30 Jun 87 14:13:52 PDT

Of course PJ should be fixed to specify the license in the enter rather
than doing a rename after the fact.  Aside from that, OPER should also
always take a password, regardless of weather there is an oper password
file or if its bad or if the name specified does not exist.  This is the
same strategy we'll be releasing in the network as soon as we get a round
tuit.  [it also makes guessing harder]  -Bill
Received: from F29.Tymnet by X930.Tymnet; Wed, 1 Jul 87 11:24:21 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Wed, 1 Jul 87 11:15:16 PDT
Return-path: <IPC.J/KRIVANEC@EMSTXS.Ontyme.Tymnet> 
From: IPC.J/KRIVANEC@EMSTXS.Ontyme.Tymnet 
Date: 01 JUL 87 10:44:28 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Message-id: A76767@Ontyme.Tymnet 
Subject: "Carl, In response to your ontyme"... 

Carl,
     
In response to your ontyme dated 23 June 87, the following lists 
information for your database:
     
1. Jan Krivanec
2. 211894 
3. JKRIVANEC   
4. 415 498-2556  Solar Way    
5. Ontyme: IPC.J/KRIVANEC
6. Username: KRIVANEC and all SRA support ids.    
7. Opername Manager: ROOPE    
8. Supervisor: Ed Roop 415-498-2562 L256
9. WC OP SY AC RF WF CS VL    
10. These license were given for customer support and systems monitoring   
    support analysis.
From: TXSTEXT@X930.Tymnet 
Date: Wed, 1 Jul 87 13:17:15 PDT 
To: carl 
Subject: "Hi! This is your friendly neighbourhood"... 


Hi!

This is your friendly neighbourhood wifey, here...just dropping you a line
(and noooo, you're not a fish; but this IS mail, isn't it?) to tell you
that the rest of the fan came today...I THINK we now have everything.

Anyway, PLEASE don't forget that tonight is trash night, okay? Thanks, 
sweetie. ILY, /Waddle
From: Joe Smith <JMS@X930> 
Date: Wed, 1 Jul 87 18:51:32 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Memo to Ed Roop about 32 disks. 

The following is in (M33)32DISK.MEM.  Whoever is going to the meeting in 
Solar Way at 13:00 on 7/02/87 can give copies to Roop, Fischer, etc.
			/Joe

--------------------------------------------------------------------------

From the TYMCOM-X Support Group.
In reference to memo from Ed Roop dated June 4, 1987.

We are currently running a monitor with 32 disk addresses defined.  F74
has 29 active spindles disks, F38 had 28 active disks before it was
converted.  Running with 32 units of model 3675 disks is not a problem.

We have run a test monitor configured for a 3652 system with 32 addresses
and a test monitor configured for a 3652 system with 64 addresses.
Although only 1 string of 3652 disks was connected at the time, we see no
problems with using a second string of 3652 disks due to the uniformity
of disk addressing.  All 32 addresses go through the same 3674 controller.

Due to the current limitation on the size of the resident monitor, a
system can be configured for more than 32 addresses only at the expense
of the number of jobs the system can handle.

        A monitor with 32 disks can be defined with 128 jobs.
        A monitor with 48 disks can be defined with  80 jobs.
        A monitor with 64 disks can be defined with  32 jobs.

Note that each additional string of 3652 disks (with 16 addresses)
reduces the maximum number of jobs by 48.  There is an absolute maximum
of 64 units per structure.  Defining the DSKB structure with more than
32 units is not recommended.  Recovering from an HDA failure on a 48 unit
DSKB would take more than 48 hours of down-time.

Unless the sytems were to use multiple structures, we cannot recommend
attaching more than 32 disk units per CPU.
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 1 Jul 87 23:59:07 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: Host numbers!!! 

We (finally) received the host numbers we ordered back in May.  We ordered
four 2-digit host numbers for PDP-10 development use.  We received...

    14, 14, 16 and 17 for our use

We also received, in late May, four 4-digit host numbers for our use.
(I don't have these handy, but will save them away for later).

With these 8 numbers, and the ones we already have, we should be able
to configure our micronet with printer devices accessible from the real
network.

/Carl
From: Osman Guven <osman@X930.Tymnet> 
Date: Thu, 2 Jul 87 16:59:21 PDT 
To: Joe Smith <jms@X930.Tymnet>, Carl A Baltrunas <carl@X930.Tymnet> 
Subject: X930 Hang, reloaded monitor .. 


From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Fri, 3 Jul 87 3:44:07 PDT 
To: Craig Fletcher <fletcherc@X930.Tymnet> 
Subject: Schedule 

It looks like my neighbor with the truck will be available... so I will NOT
be in today (friday).  Depending on my schedule, However, I may work on
Monday... I will let you know so we can schedule another Friday or Monday
in it's place.  (I may be too tired to do anything but office-work after 3
days of post-hole digging... sigh.)

/Carl
From: FLETCHERC@X930.Tymnet 
Date: Fri, 3 Jul 87 13:59:28 PDT 
To: carl 
Subject: "It works out OK that you have"... 

It works out OK that you have the truck today as Osman and I spent the morning
and a while after lunch discarding old files from the storage room.

I'll see you Tuesday.

		Craig
From: Osman Guven <osman@X930.Tymnet> 
Date: Fri, 3 Jul 87 20:24:26 PDT 
To: Monitor Group <Osman@X930.Tymnet>, Carl A Baltrunas <carl@X930.Tymnet>, Joe
	Smith <jms@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: X930 All-Files Complete. 

Used set 'E', took 11 tapes.
From: TXSTEXT@X930.Tymnet 
Date: Wed, 8 Jul 87 12:14:14 PDT 
To: carl 
Subject: "Hi! I said I was gonna send you"... 


Hi!

I said I was gonna send you mail; well, here it is. As soon as the laser printer
is fixed, please print the following files for me:
resume.cmm
salary.hx

Please just print about 20 each. Print this and save it for future reference.
Love, Waddle ILY
Received: from F38.Tymnet by X930.Tymnet; Thu, 9 Jul 87 19:10:49 PDT
Return-path: <JMS@X930> 
From: Joe Smith <JMS@X930> 
Date: Thu, 9 Jul 87 19:09:44 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: EQUIP CHECK on F38's 3652. 



From: JMS
Date: JULY 9,1987 18:57
The THUNGs on BPA12 and BPB6 are a side affect of the HDEV:4 on BPA13.
I tried to read CYL:1 HEAD:22 RECORD:23 4 times to see if it would cause
an EVENT stopcode BADPAG on unit 12 page 511.  It did not.  However, it
took more than 3 seconds for the monitor to do all the retries on that page,
which caused the THUNGs.  BPA12 and BPB6 were not hung - the monitor was
ignoring them while doing the retries.  The best way to clear this disk
error is to ASSIGN and DEASSIGN an alternate track to CYL:1 HEAD:22.
Due to the way SPAGES is used, no data will be lost.   /Joe
The THUNGs on BPA12 and BPB6 are a side affect of the HDEV:4 on BPA13.
I tried to read CYL:1 HEAD:22 RECORD:23 4 times to see if it would cause
an EVENT stopcode BADPAG on unit 12 page 511.  It did not.  However, it
took more than 3 seconds for the monitor to do all the retries on that page,
which caused the THUNGs.  BPA12 and BPB6 were not hung - the monitor was
ignoring them while doing the retries.  The best way to clear this disk
error is to ASSIGN and DEASSIGN an alternate track to CYL:1 HEAD:22.
Due to the way SPAGES is used, no data will be lost.   /Joe
Received: from B39.Tymnet by X930.Tymnet; Sat, 11 Jul 87 5:20:09 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Sat, 11 Jul 87 5:11:54 PDT 
To: wrs/baby 
Subject: William Christian Soley 

The latest addition to the Soley family: William Christian Soley
Born at home, 11-Jul-87 02:10 PDT, 9.25 lbs.
Both Becky and the baby are in excellent health.

-Bill
Received: from F29.Tymnet by X930.Tymnet; Mon, 13 Jul 87 8:44:51 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Mon, 13 Jul 87 8:36:42 PDT
Return-path: <OPERA.SUP@EMSTXS.Ontyme.Tymnet> 
From: OPERA.SUP@EMSTXS.Ontyme.Tymnet 
Date: 13 JUL 87 08:17:25 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Cc: (26 names) 
Message-id: A80175@Ontyme.Tymnet 
Subject: "M E M O R A N D U M MC DONNELL-DOUGLAS"... 

                        M E M O R A N D U M

                                                 MC DONNELL-DOUGLAS TYMSHARE




DATE>      13 JUL 87  08:15

TO>        Shift Supervisors
           All TYMCOM-10 Operators

COPIES>    Cheryl Eldred
           Osman Guven
           Carl Baltrunas
           Joe Smith

FROM>      Rick Daniels


SUBJECT>   ASP Dump Testing on F58


-----------------------------------------------------------------------


This coming weekend, starting at 0000, 18 Jul, there will be two (2) 
ASP dumps taken on this system.  F58 is scheduled to be up by 1200,
18 Jul.

The first dumpt will be taken with Version 6 from the directory of (SYS).
The second ASP dump will be taken with version 7 from the directory of (OSU).
Use the current rotation set of tapes for the first dump.  Make up a 
second set (15 tapes total) for the second dump.  Label the tapes as:

     F58 ASP DUMP (VER 7)

     SET 0       TAPE #

After the second dump is completed and verified, the system will be taken
down.  Call me when you are half way through the verification of the
second dump.
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Tue, 14 Jul 87 0:39:27 PDT 
To: wrs 
Subject: William Christian Soley 


CONGRATULATIONS!!!


Congratulations to both of you.  Apparently, both the baby and Becky are
doing well (or you would have said so)...  I just got your mail --- been
pretty busy myself lately ---  Cherie is iPasadena... (on the phone)
and she says Congratulations too!  (She just took 3rd place in the Regional
Junior Olympic Skating competition in Downey)...


CONGRATULATIONS!!!

/Carl & Cherie
From: JMS@X930.Tymnet 
Date: Tue, 14 Jul 87 15:11:17 PDT 
To: carl 
Subject: "XEXEC killed TAKEIT when I hung"... 

XEXEC killed TAKEIT when I hung X118.  See SUBMIT's mail for details.
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 15 Jul 87 2:13:07 PDT 
To: Dennis Ernst <DErnst@B39.Tymnet> 
Cc: Joe Smith <JMS@X930.Tymnet>, Osman Guven <Osman@X930.Tymnet>, dencoff 
Subject: Micronode changes 

Dennis,
  I've sent you interoffice mail with a node map and hardware layout of
the new proposed micronet.  I've created a file (CURR11:930)RUFSC.MAC that
has the routing information (a la RULAB.MAC) with the nodes that are NOT
part of our local net removed.

  I put routing info in for the host numbers that I've chosen for the DZ's
and the (future) DZV's for comment... they can be commented out so that
they would go to TYMNET and back into the micronet where necessary.  We
can talk about that part when you and I talk on the phone.

  Please call me when you receive the inter-office mail.

/Carl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 15 Jul 87 2:19:54 PDT 
To: wrs 
Subject: Username (ACCESS#) 

THey actually validated that on a PDP-10?????

They can't even look at it woth most software... I wonder if they will be
able to delete it?  NONAME won't let you look at it.

(This is a rhetorical comment... Lynn Lawrence tole me that she talked to
 you and you told her "#" was illegal in a TYMCOM-X username.)

Did you know that LOGINN runs init programs at start-address + 1 ???

(at least by demonstration... it appears that way)
(F40 may not like that... meaning, anyone using an F40 INIT program will
 experience problems depending upon what they do in their programs... the
 program in question does an LUUO '015 at the start address, and a JRST 140
 at start address+1, and it gets a HALT whenever started at start+1)

Is the behavior of LOGINN proper in your opinion?  Should it ever run the
init program at start+1... (I haven't looked, but is this documented?)

Please comment, but no urgency is required... I understand that your
domestic life has changed dramatically over the weekend and you will
definately need time to adjust.  (Are you taking any vacation time?)

Please say hello to Becky and the baby... I'll probably give you a call
but, I'm being "considerate" and waiting until the initial hub-bub has
a chance to die down...

/Carl
Received: from B39.Tymnet by X930.Tymnet; Wed, 15 Jul 87 2:36:21 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Wed, 15 Jul 87 2:26:52 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Subject: Re: Username (ACCESS#) 
In-reply-to: your message of Wed, 15 Jul 87 2:19:54 PDT

I think it's probably the project code validation program that's running
at start address plus one.  I don't remember that being true for INIT.
What does she want to do about it?  I can still hack things if she wants
to keep the username, but I'll just have to use FET in stead of NONAME.
Oh well.  Life here is going well (and at 150%) but I've given up entirely
on being able to plan anything farther than 30 seconds into the future at
least until 11-Jul-2008.  Oh my, I just realized he'll be graduating from
the class of 2005!  That year does not seem real.  Not even 1990 seems
real.  Maybe they're not.  End babble.  End message.  -Bill
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 15 Jul 87 13:49:07 PDT 
To: William R Soley <WRS@B39.Tymnet> 
Subject: ACCESS# 

Thanks... you were right!  They had the same program setup as both the
INIT program and the project-code validation program, so I didn't bother
to check it...

I think F40 doesn't like to be started at start+1, so I'm going to
suggest that Lynn has a second program for PJCVFY that sets restricted
restricted mode and the INIT program to run and runs it at the regular
start address...

I think it might be nice (now that INITIA runs the init program for the
user) to allow the INIT command in restricted mode.  Maybe change INITIA
to run the RCF program if there is no init program so it works as expected.

/Carl
Received: from B39.Tymnet by X930.Tymnet; Wed, 15 Jul 87 14:08:37 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Wed, 15 Jul 87 14:01:10 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Subject: Re: ACCESS# 
In-reply-to: your message of Wed, 15 Jul 87 13:49:07 PDT

I have a special program for them to run that runs in front of the Fortran
one that sets up stuff.  Do a NONAME on user INFORMATION - I think its
called "SECURE" but I forget what directory its on.  Suggest you use that
if you're going to set it up for her (which would be nice since I'm kind
of tied up at the moment).  Thanks -Bill
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 15 Jul 87 14:31:38 PDT 
To: William R Soley <WRS@B39.Tymnet> 
Subject: Thanks 


Received: from F29.Tymnet by X930.Tymnet; Wed, 15 Jul 87 15:24:45 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Wed, 15 Jul 87 15:20:04 PDT
Return-path: <OPERA.SUP@EMSTXS.Ontyme.Tymnet> 
From: OPERA.SUP@EMSTXS.Ontyme.Tymnet 
Date: 15 JUL 87 14:58:48 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Cc: TXS.O/GUVEN@Ontyme.Tymnet, TXS.J/SMITH@Ontyme.Tymnet,
	TXS.C/BALTRUNAS@Ontyme.Tymnet, OPERA.SUP@Ontyme.Tymnet 
Message-id: A81487@Ontyme.Tymnet 
Subject: TOPICS DESIRED FOR PDP SEMINARS 

DATE> 13 JUL 87
 
FROM> Cheryl
 
TO>   Rick
 
CC>   Mike
      Sharon
      Jim
 
SUBJ> TOPICS DESIRED FOR PDP SEMINARS
 
                              M E M O R A N D U M
 
-----------------------------------------------------------------------------
Rick,
 
The following is a list of topics operation's personnel would liked addressed
in PDP seminars.
 
1)  Hardware
    A)  Define each component and its purpose
    B)  How each component interacts with the other
 
2)  Memory
    A)  What is it?
    B)  How and why do we deselect memory?
 
3)  System Structure & File Structure
    A)  What is it?
    B)  How is it defined and why?
    C)  Disolving and defining a file structure.
    D)  Blocks vs pages
    E)  How are files stored on disk? What are the differences between
        3675's, 3650's and 3652's.
 
4)  ASP, ALLFILES & Daily Backups
    A)  What each one is.
    B)  What each would be used for.  (i.e. rebuild, restore of bad file)
 
5)  Monitors
    A)  What are they?
 
6)  DSKCLN
    A)  What a FULL DSKCLN is and what it does?
    B)  What a FAST DSKCLN is and what it does?
    C)  How to determine if a FULL or FAST is required.
 
7)  Pakcop
    A)  What is it?
    B)  How does it work?
 
8)  Rebuilds
    A)  Process of a rebuild
    B)  What backup (Allfiles, Daily & ASP) is appropriate for rebuilds.
        (Examples of different scenarios.)
 
 
 
These are only topics that we find that we would absolutely need presented.
Additional topics that you or Tymcom10 software/hardware support feel would
be beneficial to operation's personnel would be greatly appreciated.
 
Thanks,
 
Cheryl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 15 Jul 87 15:43:47 PDT 
To: Dennis Ernst <DErnst@B39.Tymnet>, Monitor Group <CARL@X930>, Osman Guven
	<Osman@X930.Tymnet>, Joe Smith <JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: PDP-11 Diagnostics 

Dennis,
  It is my impression that the node code loaded by NODLOD in *.IMG files
is an image copy made using LINK11 of code that runs in the PDP-11.  It
is also my impression that *.BND files are also possible to be built and
then loaded with LOADII.

  The hardware FE's have some standard diagnostics for PDP-11 based systems
which (on the 11's with disks or tapes) can be loaded and run.

  Do you know if the format of either the BND or IMG files is the same or
similar to the DEC standard diagnostics, and if it is reasonable to expect
that we could load these diagnostics from a TYMCOM-X system using NODLOD or
LOADII?

  If the formats are different, it may be possible (should be, anyway) to
convert them to either IMG or BND file format, and then load them into the
LSI's to run memory or other diagnostics in order to trace some of our
intermittant faults.

  I am asking, because this may be the method to use to try and diagnose
why the micronode at TRW keeps halting... the symptoms suggest a power-
supply problem, but I am unsure, and would like to try another route...
besides, it will give us a way to trace and fix the intermittant problems
we have with two of our micronodes.

/Carl
Received: from F74.Tymnet by X930.Tymnet; Thu, 16 Jul 87 8:26:24 PDT
Return-path: <Carl@X930.Tymnet> 
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 16 Jul 87 0:53:56 PDT 
To: danielsr 
Subject: MACRO sources for software 

Rick,
  The sources are mostly on :930...  why do you ask?

/Carl
Received: from F74.Tymnet by X930.Tymnet; Thu, 16 Jul 87 8:26:36 PDT
Return-path: <Carl@X930.Tymnet> 
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 16 Jul 87 3:06:19 PDT 
To: mktginfo 
Subject: ACCESS# username and program 

Lynn,
  I have talked to Bill soley, and it appears that what is wrong with your
ACCESS program is that it is bumping into a restriction with fortran-IV
runtimes which do not allow it to be run at the CCL (or secondary) start
address.

  You have (MKTGINFO)ACCESS.SAV setup as both the INIT program and the
project code validations program.  I have removed it from the project-code
validations program, but in order to provide the SECURE environment that
you want to have, we need to set the user up in the LUD with logout-on-stop
and restricted-user-mode, and have it run (MKTGINFO)SECURE as it's INIT
file.

  This will cause it to check the security requirements, and then run the
program (MKTGINFO)ACCESS   [using the first 6 letters of teh username to
determine what program to run].

  I don't have the bit definitions in front of me... but I will setup the
username in the LUD when you are ready to go into production with this
program and username.  I will wait until you have the name ACCESS validated
and we use that instead of ACCESS#.

/Carl
Received: from F74.Tymnet by X930.Tymnet; Thu, 16 Jul 87 8:26:41 PDT
Return-path: <Carl@X930.Tymnet> 
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 16 Jul 87 3:13:08 PDT 
To: mktginfo 
Subject: Call me 

Lynn,
  Please give me a call...

/Carl   (afternoon only)
From: Osman Guven <osman@X930.Tymnet> 
Date: Thu, 16 Jul 87 10:24:11 PDT 
To: Joe Smith <jms@X930.Tymnet>, Carl A Baltrunas <carl@X930.Tymnet>, Dennis
	Coffey <dencoff@X930.Tymnet> 
Subject: Rest of today .. 

I am at Fremont and/or Cupertino D.C.

-Osman-
Received: from B39.Tymnet by X930.Tymnet; Thu, 16 Jul 87 11:23:07 PDT
Return-path: <DERNST@B39.Tymnet> 
From: DERNST@B39.Tymnet 
Date: Thu, 16 Jul 87 11:08:12 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Cc: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet>, Craig Fletcher <fletcherc@X930.Tymnet>, Dennis
	Coffey <dencoff@X930.Tymnet> 
Subject: Re: PDP-11 Diagnostics 
In-reply-to: your message of Wed, 15 Jul 87 15:43:47 PDT

Carl,
  Once upon a time, we had a project to get the source
for the LSI-11 diags (yes, DEC sells them) and assemble them
using our PDP-11 assembler.  They could then be converted
to BND format.  However, since the normal method used by the
field people when the want to do diags is to read them from
mag tape using a portable TU-58, the project was dropped.  They are
also available on paper tape.  

I got your stuff in the mail.  Will call you when I have had a chance to 
look it over.

Dennis
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 16 Jul 87 13:06:38 PDT 
To: Dennis Ernst <DErnst@B39.Tymnet> 
Subject: Changes to uNet 

Dennis,
  In addition to what you received in the mail, there a a couple of "trivial"
changes, as follows:

    o  The second DUV11 in node 2346 has been "assigned" to be the link to
       host BNET  (Network DUV11 driver)

    o  Another host number, for a DZV11 to be installed in the free slot in
       node 2346  (host #4285, I believe).  If the DLV11 can do full moden
       control, then the DLV11 would work as this host, but I believe that
       the DLV only has limited modem control... haven't really checked...

    o  Node YYYY has another host link; a DUV11 x.25 line into a microVax II.

  I have some questions regarding the host "devices" and the translations at
which points in the micronet versus host numbers for these devices.  WHen I
talk to you, I'll go over these changes and my questions.

  I believe that the routing map (CURR11)RUFSC.MAC is completely correct with
the exception of the host numbers for the DZ-11 and DZV-11s.

/Carl
Received: from B39.Tymnet by X930.Tymnet; Fri, 17 Jul 87 4:38:40 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Fri, 17 Jul 87 4:27:50 PDT 
To: Joe Smith <JMS@X930> 
Cc: CARL 
Subject: Re: PNAMES vs strange .TMP names 
In-reply-to: your message of Thu, 16 Jul 87 22:48:53 PDT

It just runs FINDIT so...
I suppose I could check for .TMP and try to handle it gracefully, but the
problem here is not .TMP, its binary file names.  The program RDIST blew
up here because it got two files with the same (reported) name.  I guess
that they each contained an embedded blank and differed following that so
the cvxstr routine in sail (which does the wrong thing) stops at the first
blank.  I'm not sure what the best fix would be.  Maybe FINDIT could output
otherwise illegal file names in some special way like '123456654321.XYZ.
Suggestions?  -Bill
Received: from B39.Tymnet by X930.Tymnet; Fri, 17 Jul 87 4:38:50 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Fri, 17 Jul 87 4:32:18 PDT 
To: Joe Smith <JMS@X930> 
Cc: CARL 
Subject: Re: PNAMES vs strange .TMP names 
In-reply-to: your message of Thu, 16 Jul 87 22:48:53 PDT

Actually, I would think FINDIT would want to ignore .TMP, wouldn't it?
-Bill
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Fri, 17 Jul 87 5:00:14 PDT 
To: William R Soley <WRS@B39.Tymnet>, Joe Smith <JMS@X930.Tymnet> 
Subject: FINDIT and *.TMP 

I think FINDIT does ignore *.TMP unless you explicitly specify .TMP...
Next time I get a chance I'll verify that... but that's what it used to
do when it was first written.

/Carl
From: Dennis Coffey (Tymcom-X Systems) <DenCoff@X930> 
Date: Fri, 17 Jul 87 13:56:11 PDT 
To: carl 
Subject: Jeff Liu's (NETALERT)ALERT has reliability problems. 

Carl,

  I was called by Jeff.  Here is what I know:

    1.)  (NETALERT)ALERT, as an SUBMIT/EXECX job is not reliable (will not
restart at system startup), due to the lack of "notice in child frame".

    2.)  (NETALERT)ALERTT, as an SUBMIT/EXECX job which starts a detached PCOM
job, will not run the ALERT program reliably, due to the job/program dying and
not being restarted.

    3.)  Jeff believes the program ALERT is COMPLETELY reliable.


	The following are the XEXEC job, its control file, and the PCOM job's
control file:


SUBMIT> sh alertt *

Job: ALERTT  Req #8309 DSK:(NETALERT)ALERTT.CTL
Username: NETALERT  Node:2034 TID=1200
Limits:   Time:01:00:00  TRU:no limit  Pri:0
Options:  Log:None Mail:Error Restart:None Unique:Job
Period:   STARTUP.
Run date: --Startup--       Queued-Wait     
Last run: 16-Jul-87 14:59:42




!type alertt.ctl
dcom alert/log:none/time:0
:quit



!type alert.ctl
run alert

From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Fri, 17 Jul 87 18:15:47 PDT 
To: Dennis Ernst <DErnst@B39.Tymnet> 
Subject: red herring 

Actually, it's more like "back to the drawing board"...

We were planning on "giving" one or both of our F3s to Tymnet training
as part of TrainNet.  It so happens that this is NOT going to occur.
So, the interconnect to TrainNet is now being removed from our plans.

I will regroup our systems and configuration to reflect this change and
send you a copy of the new configuration via interoffice mail.  This will
give us an option or two that we had talked about, such as possible host
numbers directly on BNET so that we can communicate with B39 without the
added gateway problems.  Possibly host 930 or something like that.

/Carl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Fri, 17 Jul 87 18:21:41 PDT 
To: William R Soley <WRS@B39.Tymnet> 
Subject: BubbNet hosts 

Bill,
  I will contact Sandy or Kal, but I thought that I'd run it past you first.
We were planning on configuring our micronet and hosts so that they could be
accessed from another network (other than TYMNET) such as as TrainNet or
BubbNet.  The connection into BubbNet was mostly for Dennis Ernst to be able
to access that micronet, but I see an advantage for System 39, if we were to
put both of our 2020s on dual bases, one host on TYMNET and one on BUBBNET
for each host.

  Since our micronet is somewhat the proving ground for what Dennis does, it
wouldn't be in conflict with having only NTD hosts on Bubbnet...  It would
give us direct connections into B39 and eliminate the gateway problems we have
in trying to support system 39 from Tymnet.

  Do you think that we would have any problems getting the host and node
connections to Bubbnet?

/Carl
Received: from D34.Tymnet by X930.Tymnet; Fri, 17 Jul 87 21:48:23 PDT
Return-path: <Carl@X930.Tymnet> 
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Sat, 18 Jul 87 0:41:16 EDT 
To: Jan Krivanec <IPC.J/Krivanec@Ontyme.Tymnet> 
Subject: VL license 

Jan,

  Please forward this to anyone that you think need to know about this, and
have them contact me...

  As per my previous mail about gathering information about individuals
that have license on the PDP-10s for the new SETOP replacement program, it
has come to my attention that there are many many opernames that have been
setup with only VL license.

  Is there an individual connected with each of these opernames?  Do they
have an ISG identification number?  Are they all ISG employees, or are any
of these names belonging to TYMNET customers?

  This same issue comes up for those users with just SP or RL license for
SPOOL.  I really need to get the facts about these opernames, because when
the new system is implemented and we enforce only having ISG employees with
license on our machines, this MAY be important to our system and network
security.

   Please let me know what you find out.

/Carl Baltrunas,  x2515 in Fremont-Liberty
Received: from B39.Tymnet by X930.Tymnet; Sun, 19 Jul 87 9:39:37 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Sun, 19 Jul 87 9:33:46 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Subject: Re: BubbNet hosts 
In-reply-to: your message of Fri, 17 Jul 87 18:21:41 PDT

Sounds good to me.  I think there would be no problem so long as there
is already a bubbnet line at your location.  It is in our best interest
to have you support 39, after all.  -Bill
Received: from B39.Tymnet by X930.Tymnet; Mon, 20 Jul 87 9:43:47 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Mon, 20 Jul 87 9:37:46 PDT 
To: CARL@X930 
Subject: "TIME TO REVIEW STATUS?? WHEN???"... 

TIME TO REVIEW STATUS?? WHEN??? ALSO - CAN YOU SEND ME THE NAME AND WAY TO 
CONTACT THE PERSON WHO KNOWS PEAK????
Received: from F29.Tymnet by X930.Tymnet; Tue, 21 Jul 87 13:32:27 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Tue, 21 Jul 87 13:26:17 PDT
Return-path: <TYM.T/FERRO@EMSTXS.Ontyme.Tymnet> 
From: TYM.T/FERRO@EMSTXS.Ontyme.Tymnet 
Date: 21 JUL 87 13:14:53 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Message-id: I61359@Ontyme.Tymnet 
Subject: 2020 CRASH ON 7-19-87 
DEC2020CRASH: 

TO: JOE AND CARL
FR: TONY FERRO
RE: DEC 2020 CRASH

GENTLEMEN,

THE 2020 CRASHED ON SUNDAY NIGHT ABOUT 10PM.  IT LOOKS LIKE IT WAS BECAUSE
OF RUNNING OUT OF DISK SPACE ONLY, BUT I THOUGHT YOU MAY FIND SOMETHING
HELPFUL IN THE CRASH SAVE.  IT IS IN (SYS)CRA001.SAV.

TRW IS STILL WAITING ON PARTS FOR THEIR NEW DISK DRIVE.

REGARDS,
TONY
From: Dennis Coffey (Tymcom-X Systems) <DenCoff@X930> 
Date: Wed, 22 Jul 87 8:39:39 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Subject: Re: WHEN program change 
In-reply-to: your message of Mon, 15 Jun 87 13:03:00 PDT

Carl,

  I've checked WHEN.DOC & LOGON.DOC.  I can find no reference to the "/MULTI"
switch that you use in your example.  What's it about?
----------------------------------------------------------------
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Mon, 15 Jun 87 13:03:00 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: WHEN program change 

TO make WHEN work correctly with ARGPAR, only switches may exist in the
SWITCH.INI file.  To make the OLD usage of WHEN work do the following:

Old:  WHEN  /MULTI CARL, OSMAN, JMS
New:  WHEN  /MULTI /USERS:CARL, OSMAN, JMS

You may also specify /USERS:xxx on the command line, but that defeats the
purpose of the command line and overrides it. SO, proper usage is:

WHEN user,user/switch
WHEN ?
WHEN

This works but the results are funny:

WHEN user1,user2/USERS:user3,user4

...this reports user3 and user4, completely ignoring user1 and user2.

/Carl
----------------------------------------------------------------

Thx!
-D.-
Received: from F29.Tymnet by X930.Tymnet; Thu, 23 Jul 87 15:24:26 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Thu, 23 Jul 87 15:13:28 PDT
Return-path: <OPERA.SUP@EMSTXS.Ontyme.Tymnet> 
From: OPERA.SUP@EMSTXS.Ontyme.Tymnet 
Date: 23 JUL 87 15:09:07 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Cc: (25 names) 
Message-id: A84856@Ontyme.Tymnet 
Subject: "M E M O R A N D U M MC DONNELL-DOUGLAS"... 

                        M E M O R A N D U M

                                                 MC DONNELL-DOUGLAS IPS




DATE>      23 JUL 87  15:08

TO>        Shift Supervisors
           All Operators

COPIES>    Cheryl Eldred
           Osman Guven
           Carl Baltrunas

FROM>      Rick Daniels


SUBJECT>   Testing Version 7 of ASP on F33


-----------------------------------------------------------------------


This weekend, system F33 will be down from 0000, 25 Jul until
2400, 26 Jul, for rebuilding using Version 7 of ASP.

Two ASP dumps will be taken:

     The first dump will be taken with Version 6 using the normal
rotation set.

     The second dump will be taken with Version 7, using the set
hanging in the tape library.  They should be labeled as

         F33 ASP DUMP VER 7

     VERSION 7 IS IN (OSU) DIRECTORY.

     After both sets have been verified, restore Version 7 back
onto system 33.

                                                                Page  2

     This is all that is tentatively planned, unless Software Support
decides on somthing else to be done.

     Bring system up with a "FULL" DSKCLN.

     Hold version 6 tapes for three weeks and then scratch.  Version
7 tapes will be sent off-site.

Any questions, please contact me.

Thanks

Rick
From: Postmaster@X930.Tymnet 
Date: Thu, 23 Jul 87 17:15:11 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Subject: Returned MAIL 

The following message was not delivered because:
User has not read mail in 30 days: BAIGENT
Last logout: 28 Apr 87


----------
RCPT To: Baigent 
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Tue, 23 Jun 87 20:43:14 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Jon Mosser <MosserJ@X930.Tymnet>,
	Dennis Coffey <dencoff@X930.Tymnet>, William R Soley <WRS@B39.Tymnet>,
	Wayne D Bartlett <BARTLETW@B39.Tymnet>, Baigent, Landa Morris
	<IPC.L/Morris@Ontyme.Tymnet>, Ed Roop <IPC.E/Roop@Ontyme.Tymnet>,
	Ingrid Lopes <IPC.I/Lopes@ontyme.tymnet>, Jan Krivanec
	<IPC.J/Krivanec@Ontyme.Tymnet>, Rick Daniels
	<IPC.R/Daniels@ontyme.tymnet> 
Bcc: CARL@X930.Tymnet 
Subject: New SETOP requirements 

In preparation for building a test database on system X930 for the new
SETOP program I am asking each of you to send me mail containing all of
the following information:

   1. Your Name
   2. Your ISG identification number
      (This is NOT necessarily your employee number if you are part of
       MDFSCO or MDCSC.  It is the 6-digit number on your ISG badge,
       such as 212344, most probably not 008834 with leading zeros.)
   3. Your current OPER name
   4. Your current telephone number and mail stop
   5. Your TUMS or ONTYME name (or both) for security mail
   6. Your Username (or list of usernames, if you use more than one)
   7. Your opername manager (who gave you license)
   8. Your immediate supervisor's name, phone number and department
   9. Your current license

  10. Why do you need whatever licenses you have.  Please be specific on
      each and every license listed in item 9.  If you do not know why you
      have a particular license, please say so.  If you have a particular
      need for more license than you have, please say so, and why.

      If you are a manager and require license only because one of your
      subordinates requires the license to do their job, please say so
      and specify the above information for each of your subordinates so
      they may be entered into the database.

Thank you all.
From: Osman Guven <osman@X930.Tymnet> 
Date: Fri, 24 Jul 87 10:32:54 PDT 
To: Carl A Baltrunas <carl@X930.Tymnet>, jms 
Subject: Question ..?? 

1.  Where are we loading the our micronodes these days?

2.  Where can I get a "Out Dial" list of nodes & baud rates?

-Osman-
From: Joe Smith <JMS@X930> 
Date: Fri, 24 Jul 87 10:43:34 PDT 
To: Osman Guven <osman@X930.Tymnet> 
Cc: Carl A Baltrunas <carl@X930.Tymnet>, DENCOFF, FLETCHERC 
Subject: Re: Question ..?? 
In-reply-to: your message of Fri, 24 Jul 87 10:32:54 PDT

1.  As long as 62 and 930 are both working, we can reload the microbases from
the other CPU.  The 2020 can reload its microbase and 2346, but nothing else.
6657:	Use NODLOD on 62.  10115 and 2346 must be up.
10115:	Use NODLOD on 930.  6657 and 2346 must be up.
2346:	Use NODLOD on 62, 930, or 95.  The host's base must be up.
2770:	Use NODLOD on 62 or 930.  Intervening nodes must be up.
6760:	Use NODLOD on 95 running in CONSOLE mode.
Note:  After a complete power failure, 6657 and 10115 must be reloaded from
the network.  With host 57 gone, WE CAN'T RUN LOADII!!!!!! 

2. Out Dial information is in the INFO tree, topic OUTDIAL.
				/JOE
Received: from D23.Tymnet by X930.Tymnet; Fri, 24 Jul 87 12:15:48 PDT
Return-path: <JMS@X930> 
From: Joe Smith <JMS@X930> 
Date: Fri, 24 Jul 87 14:14:44 CDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Info in (NETDB:23) about our nodes. 

 Node    Host Description     Mem  Customer                 Eff-date Order Site
 2770      14 TEST HOST         60 TYMNET/FIELD SUPPORT     PENDING  35763  177
 2770     118                      TYMNET/FIELD SUPPORT     07/25/85 33633  177
 2770    3984 TEST HOST            TYMNET/FIELD SUPPORT     PENDING  35334  177
 2770    4681 KERNEL HOST

 6657      15 TEST HOST         60 TYMNET/FIELD SUPPORT     PENDING  35763  177
 6657     930                      TYMNET/FIELD SUPPORT     07/25/85 13480  177
 6657    4117 TEST HOST            TYMNET/FIELD SUPPORT     PENDING  35334  177
 6657    4511 KERNEL HOST

 6760      16 TEST HOST         60 TYMNET/FIELD SUPPORT     PENDING  35763  177
 6760      95 TYMCOM               TYMNET/FIELD SUPPORT     07/02/85 12649  177
 6760     934         ???          TYMNET/FIELD SUPPORT     06/17/85 12649  177
 6760    4284 TEST HOST            TYMNET/FIELD SUPPORT     PENDING  35334  177
 6760   18813 MICRO TYMBASE        TYMNET/FIELD SUPPORT     05/01/85 12649  177
 6760    ???? KERNEL HOST (not on file, we are using 934 as kernel host)

10115      17 TEST HOST         60 TYMNET/FIELD SUPPORT     PENDING  35763  177
10115      62                      TYMNET/FIELD SUPPORT     MOVE     30761  177
10115    4525 TEST HOST            TYMNET/FIELD SUPPORT     PENDING  35334  177
10115    7964 KERNEL HOST
From: TXSTEXT@X930.Tymnet 
Date: Fri, 24 Jul 87 17:24:44 PDT 
To: carl 
Subject: "Hi! It's almost 5:30; when were"... 

Hi!

It's almost 5:30; when were you planning on coming home? You told me to call youand I have, but your line has either been busy or you don't answer. Please call
me a.s.a.p. and tell me when you're coming home. /Cherie 
From: Joe Smith <JMS@X930> 
Date: Sat, 25 Jul 87 0:30:03 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Hotline call Friday night 

24-Jul-87 22:45/Joe
Contact:  Fremont Operations, Tim, (415)498-2588, System F30.
Problem:  While doing a PAKCOPY, accidently initialized the source pack.
Fix:      Created 30XX02 on (M33:33) because it has TSTSUP in it.
	  Put BPA13CB at UNTTBL+12, rewrote HOM page on DSKB12 usin DSKB22
	  as a template.  FULL DSKCLN ran, answered at 00:24


From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Sat, 25 Jul 87 20:03:34 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: Re: TSTSUP in the monitor 

Congratulations!!!  Good work.  Life will be much easier now...

/Carl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Sun, 26 Jul 87 2:41:14 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey
	<dencoff@X930.Tymnet>, William R Soley <WRS@B39.Tymnet> 
Subject: PDP-10 coding trick 

  In putting together my own octal print routine for my SETOP endeavor
I chose to combine the octal and decimal print routines into one.  This
had the side effect that octal numbers with the sign bit set became
a weird set of punctuation marks (since I had an unsigned print routine).

		  OOPS!

  If you start with a standard routine such as this...

  num = 1
  rem = num+1

OCTOUT:	SKIPA	rad,[^D8]		; octal
DECOUT: MOVEI	rad,^D10		; decimal
RDXOUT: IDIV	num,rad			; divide
	HRLM	rem,(P)			; save remainder on stack
	SKIPE	num			; any more digits?
	  PUSHJ	P,RDXOUT		; yes, loop
	HLRZ	num,(P)			; get digit from stack
	MOVEI	num,"0"(num)		; convert to digit
	OUTCHR	num			; print it (with routine of choice)
	POPJ	P,			; return when done

  I came up with this interesting bit of code as a work around that I had
never encountered in any bag of PDP-10 coding tricks...

OCTOUT:	SKIPA	rad,[^D8]		; octal
DECOUT: MOVEI	rad,^D10		; decimal
; ** begin trick **
	EXCH	num,rem			; setup number in remainder word
	SETZ	num,			; for 2-word divide instead
	LSHC	num,1			; shift sign (if any) to high word
	LSH	rem,-1			; shift low word back into position
	DIV	num,rad			; first divide, results same as IDIV
	CAIA				; or JRST .+2 to skip first divide
; ** end trick **
RDXOUT: IDIV	num,rad			; divide
	HRLM	rem,(P)			; save remainder on stack
	SKIPE	num			; any more digits?
	  PUSHJ	P,RDXOUT		; yes, loop
	HLRZ	num,(P)			; get digit from stack
	MOVEI	num,"0"(num)		; convert to digit
	OUTCHR	num			; print it (with routine of choice)
	POPJ	P,			; return when done

; Have you ever seen this used anywhere before?

PS.  TYMCOM-X only...
    replace
	MOVEI	num,"0"(num)
	OUTCHR	num
    with
	OUTCHI	"0"(num)		; outchr immediate

/Carl
Received: from B39.Tymnet by X930.Tymnet; Sun, 26 Jul 87 18:03:51 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Sun, 26 Jul 87 17:21:04 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Subject: Re: PDP-10 coding trick 
In-reply-to: your message of Sun, 26 Jul 87 2:41:14 PDT

So is SETOP in assembler?  -Bill
From: Osman Guven <osman@X930.Tymnet> 
Date: Mon, 27 Jul 87 8:51:28 PDT 
To: Monitor Group <Osman@X930.Tymnet>, Carl A Baltrunas <carl@X930.Tymnet>, Joe
	Smith <jms@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: I am on call this week .. 7/27 to 8/2 


Received: from F29.Tymnet by X930.Tymnet; Mon, 27 Jul 87 12:13:00 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Mon, 27 Jul 87 12:05:04 PDT
Return-path: <IPC.SRAMAIL@EMSTXS.Ontyme.Tymnet> 
From: IPC.SRAMAIL@EMSTXS.Ontyme.Tymnet 
Date: 27 JUL 87 12:04:42 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Cc: QSATS.G/WALKER@Ontyme.Tymnet, IPC.B/FISCHER@Ontyme.Tymnet,
	IPC.E/ROOP@Ontyme.Tymnet, TXS.C/BALTRUNAS@Ontyme.Tymnet,
	IPC.R/DANIELS@Ontyme.Tymnet, IPC.C/ELDRED@Ontyme.Tymnet,
	TXS.C/FLETCHER@Ontyme.Tymnet, IPC.JENNY@Ontyme.Tymnet,
	IPC.SRAMAIL@Ontyme.Tymnet 
Message-id: A85797@Ontyme.Tymnet 
Subject: F70 -> F33 CONSOLIDATION SCHEDULE 

SUBJ: F70 -> F33 CONSOLIDATION SCHEDULE





                         M E M O R A N D U M





DATE>      27 JUL 87  12:00

TO>        GARY WALKER

COPIES>    BILL FISCHER
           ED ROOP
           RPM GROUP
           CARL BALTRUNAS
           RICK DANIELS
           CHERYL ELDRED
           CRAIG FLETCHER

FROM>      LINDA FREITAS
           RESOURCE PLANNING AND MANAGEMENT


SUBJECT>   F70 -> F33 CONSOLIDATION SCHEDULE


-----------------------------------------------------------------------



    RPM           -ORDERED NEW 3652 STRING; ESTIMATED DATE OF ARRIVAL: WEEK
                   OF AUGUST 10.   
     
    FREMONT OPNS. -WHEN NEW STRING ARRIVES, ADD TO F33. THIS WILL OCCUR    
                   DURING A WEEKEND AND WILL BE SCHEDULED APPROXIMATELY    
                   TWO WEEKS FROM ARRIVAL OF STRING.   
     
    RPM   
    JENNY ENGLISH -BEGIN CONSOLIDATION OF USERS FROM F70 ONTO F33 BY GROUPS.    
                   THERE ARE THREE GROUPS, GROUP #1 CONSISTS OF FIELD SERVICE,  
                   NTD AND VARIOUS OTHERS AND IS SCHEDULED TO BE MOVED ON  
                   AUGUST 14, 1987 (FRIDAY). 
     
                   GROUP #2 CONSISTS OF TYMNET USERS AND IS SCHEDULED TO BE
                                                                Page  2

                   MOVED ON AUGUST 28, 1987 (FRIDAY); PROVIDED THAT THE NEW
                   DASD IS ADDED TO SYSTEM F33.   
     
                   GROUP #3 CONSISTS OF INTERNAL GROUPS AND IS SCHEDULED   
                   TO BE MOVED BY SEPTEMBER 3, 1987 (THURSDAY), HALF OF    
                   THESE USERS WILL BE MOVED BY JENNY, THE OTHER HALF 
                   WILL BE MOVED BY EACH INDIVIDUAL.   
     
                   JENNY WILL BE SENDING DETAILED MOVE PROCEDURAL MEMOS    
                   PRIOR TO EACH MOVE TO THE INVOLVED PARTIES.   
     
                   CLOSE MONITORING OF F33 USAGE AND PERFORMANCE WILL 
                   CONTINUE THROUGHOUT ENTIRE MOVE.    
     
                   ALL F70 USERS SHOULD BE UP AND RUNNING ON F33 BY   
                   FRIDAY, SEPTEMBER 3, 1987.
     
    FREMONT OPNS.   
    RICK DANIELS  -F70 WILL MAINTAIN DAILY UPDATES MADE OF USERS MOVED
                   TO F33 FOR LENGTH OF CONSOLIDATION. 
     
                   BRING F70 COMPLETELY DOWN AND CONVERT F74 FROM 30'S
                   TO 50'S TAKEN FROM F70.
From: Osman Guven <osman@X930.Tymnet> 
Date: Mon, 27 Jul 87 13:50:49 PDT 
To: Carl A Baltrunas <carl@X930.Tymnet> 
Subject: Which edit of ASP ..?? 

Carl ..

Rick says, he has seing two edits of (OSU)ASP.SAV.
One is Ver 7 (104), and the other is Ver 7 (107).
Will you please put the right edit on all the systems
and send mail to him. Thanks.

P. S.
If you are busy, let me know which edit should be
out there and I will take care of it.

-Osman-
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Mon, 27 Jul 87 13:43:06 PDT 
To: William R Soley <WRS@B39.Tymnet> 
Subject: SETOP IN ASSEMBLER 

Heavens no!!!  At least not yet...

I have run into string garbage collect problems, so I reduced string usage
as much as possible on output by encoding my own fill routines for numeric
and string output to overwrite the same large constant string...  My string
space still gets larger than 64K and string GC occurs when it needs to expand
and the GC takes 30+ seconds...

Know any way to reduce, turn off string GC?

I'm now re-thinking the data structure into multiple files to increase the
access speed.. expect that to be done the end of this week... I'm in class
over at TYMNET TRAINING (Intro to ISIS) all this week.

Let Wayne know... I may have a preliminary "GED" for him by next week sometime.
...assuming some progress is made this week.

/Carl
From: Joe Smith <JMS@X930> 
Date: Mon, 27 Jul 87 14:08:57 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff, Dennis Ernst <DErnst@B39> 
Subject: TXS micronet *.BND files are now on F38 and D37. 

Since (NEW11:57)ND6657.BND,ND6760.BND,ND2770.BND,ND0115.BND went away when
system 57 was shut down, I went to (NEW11:39) and telecopied the files to
(NEW11:38) and (NEW11:37).  This puts the required files on 3 consecutive
systems (37,38,39) in 3 locations (Dallas, Fremont, Bubbnet).  The TXS
micronet files in (CURR11), (OLD11), (DOC11), and (TOOLS11) have also been
copied from 39 to 38 and 37.

The ND####.BND files in (NEW11) on 62, 95, and 930 might not be correct, due
to changes in the routing table (which is not stable yet).

			/Joe
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Mon, 27 Jul 87 14:19:48 PDT 
To: Osman Guven <Osman@X930.Tymnet> 
Subject: ASP %7(107) 

Source and .SAV are in (OSU:930)

Pleas copy ASP.SAV to (OSU:*)

/Carl ... Thanks.
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Mon, 27 Jul 87 14:29:49 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey
	<dencoff@X930.Tymnet>, Dennis Ernst <DErnst@B39.Tymnet> 
Subject: TXS-NET map 

Dennis,
  (CURR11:930)RUFSC.MAC  is complete, showing all host and node links
for our micronet.  We do not have a kernel host # on BNET for 2346
(or have verified that 2346 is available as a node on bubbnet) and have
not getten a host number for the KS on bubbnet yet... but that will not
be needed until late October most probably anyway.

  Let us know when the code is ready so we can start reconfiguration.

Thanks again...

/Carl
From: Joe Smith <JMS@X930> 
Date: Mon, 27 Jul 87 14:46:16 PDT 
To: Dennis Ernst <DErnst@B39>, Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: TXSBND.WHR and TXSIMG.WHR 

(JMS:930)TXSBND.WHR shows where our ND####.BND files are.
(JMS:930)TXSIMG.WHR shows where our SV####.IMG files are.
The files are sorted by file name, checksum, then directory:system.
Received: from B39.Tymnet by X930.Tymnet; Mon, 27 Jul 87 14:49:34 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Mon, 27 Jul 87 14:26:14 PDT 
To: CARL@X930 
Subject: "HOPE THIS GETS THRU IF SO HAVE"... 

HOPE THIS GETS THRU - IF SO - HAVE BIG MEMO FROM DOUG E. RE NAD FOR 
YOU (IT CAME BACK) ALSO TIME FOR REVIEW AND UPDATE ON SETOP (DID
YOU GET MY EARLIER MEMO ON THAT???)
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Mon, 27 Jul 87 15:04:08 PDT 
To: Wayne D Bartlett <BARTLETW@B39.Tymnet> 
Subject: Review SETOP 

Yes, .. got both messages.

Tell Doug, my ONTYME name is TXS.C/Baltrunas, but he can also send TUMS
mail to me as CARL@X930.Tymnet, or simply CARL

I ran into some timing problems... it takes between as long as 5 minutes
just to read in the formatted text records... so I am looking at splitting the
data into multiple files...

I'm in TYMNET class all this week... if you want to get together for a noon
lunch, send me mail...

/Carl
Received: from B39.Tymnet by X930.Tymnet; Mon, 27 Jul 87 16:11:59 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Mon, 27 Jul 87 16:05:02 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Subject: Re: SETOP IN ASSEMBLER 
In-reply-to: your message of Mon, 27 Jul 87 13:43:06 PDT

Yes, you can turn of garbage collect and force it to always get more memory.
Set some flag in GOGTAB, not sure right now, its in the manual.  -Bill
From: Osman Guven <osman@X930.Tymnet> 
Date: Mon, 27 Jul 87 16:45:55 PDT 
To: Monitor Group <Osman@X930.Tymnet>, Carl A Baltrunas <carl@X930.Tymnet>, Joe
	Smith <jms@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: Running D56 with 200. ports 

Joe ..

Do you see any problem running D56 with 200 ports.??
D56-P035/C is cut with 200 ports and ready come up with it, right?
Roy R. is asking us to come up with 200 port monitor first and
after couple of days, he will have network reload the base code
which is cut for 200 port.
-Osman-
Received: from B39.Tymnet by X930.Tymnet; Mon, 27 Jul 87 17:06:33 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Mon, 27 Jul 87 16:57:31 PDT 
To: CARL@X930 
Subject: "HERE IS THE DOUG E. MEMO THAT"... 

HERE IS THE DOUG E. MEMO THAT DIDNOT TRANSMIT:
----------------------------------------------------------------
Received: from F29.Tymnet by B39.Tymnet; Fri, 24 Jul 87 18:02:06 PDT
Received: from EMSTYM.Ontyme.Tymnet by F29.Tymnet; Fri, 24 Jul 87 18:03:50 PDT
Return-path: <QSATS.D/ELLENBERG@EMSTYM.Ontyme.Tymnet> 
From: QSATS.D/ELLENBERG@EMSTYM.Ontyme.Tymnet 
Date: 24 JUL 87 17:54:17 
To: TYM.W/BARTLETT@EMSTYM.Ontyme.Tymnet 
Message-id: M07903@Ontyme.Tymnet 
Subject: PROPOSAL FOR PROVIDING ENHANCED SECURITY IN THE 

            PROPOSAL FOR PROVIDING ENHANCED SECURITY IN THE
            -----------------------------------------------

     STRUCTURE AND ACCESS CAPABILITIES OF DIRECTORIES ON THE PDP 10
     --------------------------------------------------------------

                          CODE GENNING SYSTEMS
                          --------------------


                            Preliminary Copy

                  Additional Research Being Performed



















                             July 23, 1987

                                   by

                          Douglas G. Ellenberg




Contributions:

Individuals who contributed to the document and their organizations.


Quality Assurance    Hardware Technical Support    Network Technology Division

 Diana Houge             Ed Mooring                     Romolo Raffo
                         Paul Krumviede
                         Ron Vivier


Security             Field Service Company

Wayne Bartlett           Dennis Coffey
                         Carl Baltrunas








Overview:

Security is a major concern in all areas of the Network.  From
restricting access to the Network to restricting the range of
capabilities a user has once a successful connection is made to a
host, security is a concern.  This proposal seeks to address one part
of the security picture.

Today, all users on the PDP Code Genning Systems have the capability to
access the NAD program in the (SYS) directory.  This program gives them
Write File (WF) license.  With this capability, any user has the ability
to over-write any file on the system they are logged into.  With NAD they
are also able to gen code and create listings of the Tymnet source code.

What this proposal seeks to control is really two fold.  First, it will
restrict which users are allowed access to NAD in the (SYS) directory.
This will remove their Write File capabilities and not allow them to
create code listings.  Secondly, it will also restrict the ability to gen
code to only those users who have been identified as requiring this
capability.


Goals and Compromises:

The ultimate goal for the implementation of restricted access was to
disallow access to the (SOURCE) and (BETATEST) directories from all
users except those that require access.  Those requiring access include
all field and Headquarters support people; Project Implementation; the
Field Service Organization; Customers who, by contract, are allowed
access; the Headquarters Quality Assurance group; and the development
organization.  Groups that required access only to a limited set of
files in the (SOURCE) and (BETATEST) directories would then be
restricted on a file by file basis.  For example, Customer A has in
their contract a license to gen X.25, Node Code and ISIS.  They would be
allowed access to only the source for this code and be barred access to
the remaining source code files.

Unfortunately, barring access down to a per file per user basis is not
possible under current TYMCOM-X limitations.  This capability would
require modifications to the Operating System.  What is possible is to
restrict access to the (SOURCE) and (BETATEST) directories as a whole
and restrict access to some of the capabilities of the NAD program. 
Thus, restricting access on a more limited basis is possible.

After the restructuring of the PDP systems, as will be documented,
restriction to the (SOURCE) and (BETATEST) directories will be on
a per user basis.  Certain users will be barred from being able to
create listings of the source code and will be able to only write files
into their own directories.  They will not be able to over-write files
at will as they can today.




Restructuring with Restrictions:

There are copies of the code genning program, NAD, on all PDP Code Genning
Systems.  One NAD is the aforementioned copy in the (SYS) directory.
The second NAD is the copy in the (SOURCE) directory.  The only
difference between these two copies of the same program is the license
assigned to the programs.  The NAD program in the (SYS) directory has
Write File license (WF).  Use of this copy of NAD allows the user to
over-write files anywhere on the PDP system they are accessing.  The
copy of the NAD program in the (SOURCE) directory has only Home File
(HF) license.  This will still allow the user to over-write files in 
directories under the same GAN.  A change to NAD would be required
to restrict this further.[*]

There is also an important feature of NAD that is part of this
restructuring.  If a user lacks TYM license, NAD will not allow that
user to create listings of the source code.  Currently, most users that
gen code have TYM license.  They are able to both gen code and create
listings of the source code.

The changes proposed to create tighter controls on the capabilities of
users on the PDP Code Genning Systems are:

1.  Remove Write File (WF) license from NAD in the (SYS) directory.

2.  Place protections on NAD in the (SYS) directory so it could only be
    called and used by users that have the license required to do so.
    Even users in the same GAN will be restricted unless they have the
    license necessary to access the code.

3.  Structure the customer directories as follows.

    A customer will have a minimum of two directories.  One will be
    under a separate GAN and will be used for CODE STORAGE.  Code that
    is operating in their network will be stored in this directory.  The
    second directory will be under the same GAN as the (SOURCE) and
    (BETATEST) directories.  This directory will be used only for CODE
    GENERATION.  The second, or CODE GENNING directory, will have an
    ACCESS list allowing the customer to GFD into this directory from
    their CODE STORAGE directory.

4.  Remove TYM license from users who should not be able to create
    listings of the source code.

5.  The (SOURCE) and (BETATEST) directories should have directory access
    protection of  SHARABLE and LISTABLE only.  They currently have
    SHARABLE, LISTABLE and NEW FILES.




By making these changes, users not in the (SOURCE) and (BETATEST) GANs,
and without proper license, will not have access to NAD.  They will be
forced to only use the NAD program in the (SOURCE) directory.  Without
the TYM license, they would be unable to create listings of the source
code.  Without the additional licenses on the NAD program they would be
unable to over-write files not in their own directory.  With directory 
access set, users will be prevented from writing into the (SOURCE) and
(BETATEST) directories.

With the current protections placed on all (SOURCE) and (BETATEST)
source code, users without the proper license will not have access to
the files in these directories.  They would be restricted from even
viewing the source files.


Concerns and Questions:

Items marked with a [*] throughout this document require further
research.

PEAK and VUE, the text editors on the PDPs, require modification if they
are to be used by users that do not have TYM license.

Will changing the customer's GAN for the code genning directory cause
any problems?  Do any other programs key off the GAN, etc.

Will the customer be allowed to log into their code genning directory
directly or only be able to access it via a GFD from their storage
directory?

Who will be tracking the change of GANs for the customers?

Who will identify the customers requiring these changes?

Who will be removing the Write File (WF) license from (SYS)NAD and the
Home File (HF) license from (SOURCE)NAD?

An ACCESS.LST file will have to be maintained in the code genning
directories to allow the GFD access from the code storage directories.
Recovery procedures will have to be established for the recovering of
these files after accidental deletion.
----------------------------------------------------------------
Received: from B39.Tymnet by X930.Tymnet; Mon, 27 Jul 87 17:08:47 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Mon, 27 Jul 87 17:03:25 PDT 
To: CARL@X930 
Subject: "NOTE TTE 4Q SCHEDULE Received:"... 

NOTE TTE 4Q SCHEDULE 
----------------------------------------------------------------
Received: from F29.Tymnet by B39.Tymnet; Mon, 27 Jul 87 9:21:50 PDT
Received: from EMSTYM.Ontyme.Tymnet by F29.Tymnet; Mon, 27 Jul 87 9:04:25 PDT
Return-path: <TYM.SUP@EMSTYM.Ontyme.Tymnet> 
From: TYM.SUP@EMSTYM.Ontyme.Tymnet 
Date: 27 JUL 87 08:45:28 
To: TYM.SECURITY@EMSTYM.Ontyme.Tymnet 
Message-id: I63646@Ontyme.Tymnet 
Subject: TTE 255 ADVANCED X.25 
TTE255AdvancedTymnetX.25: 

                            M E M O R A N D U M

                          NETWORK SYSTEMS COMPANY
                         NETWORK SYSTEMS MARKETING


DATE>      24 JUL 87  15:11

TO>        All Employees

COPIES>    

FROM>      Tymnet Trainig and Education


SUBJECT>   TTE 255 Advanced Tymnet X.25


-----------------------------------------------------------------------


TTE is pleased to announce the piloting of TTE 255, Advanced Tymnet
X.25 Implementation and Troubleshooting, to be held at the TTE, 
San Jose facility, September 14-18, 1987

The course has bees designed and is intended for Tymnet personnel who
have taken TTE 225 and have had a minimum of six months experience
with Tymnet X.25 implementation and/or support.

The course will be delivered by experienced support and field personnel
to include Michelle Willhauck, Jerry Lucas, Dan Lane, Patty Dixon,
Ed Moorine and Chris Nicoll.

The following is a brief topical outline of the course:

Day One -
    o    Accelerated Concepts
         a.  New features in next version of code.
         b.  Tymfile parameters not commonly used, ie; xcomO3.dO2
         c.  Shared X.25

    o    International Topics
   
         a.  X.75 Gateway Basic Considerations
         b.  Modulo 128 Frames
         c.  Satellite Considerations

                                                                Page  2

    o    X.25 Interactions with ISIS

Day Two and Three -
    o    Xcom Internal Specifics

         a.  IIX Protocol
         b.  Consat Pad Interaction with X.25 (specifically IIX)
         c.  X.25 PVC
         d.  Discussion of multi-base, multi-targeted host limitations

    o    General Troubleshooting Techniques

         a.  Analyzing Dumps (i.e., what to look at)
             1.  Error Tables
             2.  Crash Tables
             3.  Reading memory locations
             4.  Debug using traces
         b.  Setting Traps
         c.  Recognition of common problems and their causes.
             1.  T-1 timer expirations
             2.  SIO related problems
             3.  Discussions of known vendor problems (i.e., NPSi, COMTEN)
             4.  Packet Level reset
         d.  Response Time Problem
             1.  Backpressure logic (i.e., recognize who is doing the
                 backpressure)
             2.  Basic fixes (i.e., TPUT class, available patches, PAD
                 forward, window size etc.)

Day Four and Five -
    o  Code Structure
       a.  High-level diagram and interactions of modules
       b.  Discuss each module individually
           1.  dispatcher
           2.  record make
           3.  record teardown
           4.  Q-bit packets
           5.  foreground
       c.  Discuss ring handling routines
       d.  Buffering logic
       e.  Hypothetical transactions (i.e., code walkthrough
           1.  Get needle -  send out call request packet
           2.  Get call request packet - process and send call accept or 
               clear
       f.  Research labs
           Instructor to hand out RFI's submitted from the field.
           Student to research code and formulate answers.  discuss
           solution provided by HQ.
       g.  Final Lab
           Students to write a simple patch followed by general
           discussion of proposed solutions.

Class size is limited to sixteen, to ensure that you enroll early
through OnTyme access   :EXEC *** TTE.ENROLL
Using "Special" selection for course registration, or by contacting 
Cheryl McGowan, TTE Registrar at (408) 432-5042

We look forward to a very beneficial and successful class.
----------------------------------------------------------------
From: Joe Smith <JMS@X930> 
Date: Mon, 27 Jul 87 17:50:57 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Re: Running D56 with 200. ports 

56XB03.SAV, 56XB04.SAV, 56XB08.SAV, 56XB10.SAV, and 56035C all have 200
ports.  56XB03.SAV is dated 6-May, we tested it, but never bothered to put
it on NEWMON.  Suggest running 56035C instead.
From: Joe Smith <JMS@X930> 
Date: Mon, 27 Jul 87 18:24:27 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: 56035C rebuilt for JOBS=160 (as well as PORTS=200). 

System 56 is currently running a monitor with 128 jobs and 128 ports.
If there are more jobs using two ports each (such as LOADII, TELECO, AUXIO, etc)
than there are jobs detached (CHKPNT, PAM, XEXEC, etc), then the system will
run out of ports before it runs out of job slots.  When this occurs, the SUP
will tell the CONSAT output the message "host out of ports" as the reason for
failure of the login request.

Back in May, we boosted PORTS to ^D200.  That by itself would allow about 3
more jobs to get logged in, and then SCNSER will have to output the message
"frame capacity exceeded" when all 127 jobs were in use.  That would not
really solve the problem.  Therefore I have boosted JOBS to ^D160.  CONF56.MAC
has been updated in (M33:930,:34,:33) and (OSP:33), and the new 56035C.SAV
copied to (M33:56).

Setting JOBS=160 and PORTS=200 should keep them happy for a while.  I would
expect the KL to get bogged down before they exceed 159 jobs.
From: Joe Smith <JMS@X930> 
Date: Mon, 27 Jul 87 22:33:54 PDT 
To: carl 
Subject: "To: Joe Smith Fr: Dan Upthegrove"... 

(begin forwarded message)

Received: from D37.Tymnet by X930.Tymnet; Mon, 27 Jul 87 20:11:38 PDT
Return-path: <UPTHEGROVE@D37.Tymnet> 
From: UPTHEGROVE@D37.Tymnet 
Date: Tue, 28 Jul 87 13:03:47 + 
To: JMS 
Subject: "To: Joe Smith Fr: Dan Upthegrove"... 

To:  Joe Smith
Fr:  Dan Upthegrove
Su:  PDP-10 Inactivity Timeout
------------------------------

Joe,

A few weeks ago, Barb V. mentioned to you that I was investigating
an inactivity timeout for PDP-10 usernames.  I'm sorry that I didn't
get back to you sooner, but I have been off chasing other monsters
the last few weeks.

Barb has mentioned that there is a 15-minute timeout available, but that
it has to be set by the user on login.  I nned to find a way to
automate this.  Is it possible to set this through an init file?

The application that we need it mostly for is to zap ELF circuits that
are still connected, but it would be useful for any user accessing
the PDP-10 host through a connection with large connect time costs.

Please let me know as many details of accessing this timeout.
I will be very grateful.

Best Regards,

Dan
PDP:	UPTHEGROVE
ONT:	ISITPR.D/UPTHEGROVE

(end forwarded message)

Do we have a program for setting the bit in the LUD?  (I'd hate to have to go
into NONAME.)  Can this function be added to (SYS)LOGON?
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Tue, 28 Jul 87 9:07:15 PDT 
To: Joe Smith <JMS@X930.Tymnet> 
Subject: Timeout for UPTHEGROVE 

It can be done by setting the bit in the lud with filddt.

Don't put it in NONAME... we can talk about this later...
It may already be in LOGON?

/Carl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Tue, 28 Jul 87 9:10:15 PDT 
To: William R Soley <WRS@B39.Tymnet>, Wayne D Bartlett <BARTLETW@B39.Tymnet> 
Subject: Re: (SYS)NAD with WF 

Does anyone know if NAD properly protects the use of WF, or who maintains
NAD so I may talk to them about this.

Otherwise, my vote is that WF be removed immediately from (SYS)NAD, which
I will undertake... not only can anyone read any file, they can also over-
write any file (if only they knew...)

The file is protected ALL RUN RUN.

/Carl
From: Joe Smith <JMS@X930> 
Date: Tue, 28 Jul 87 9:47:01 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: We need to purge the PERP examples from the AFD document. 

(DNDUTIL:*)AUTOFD.DOC and (ISISDOC:*)AUTOFD.DOC describe the 10 or files
needed to run AFD.  It also has two examples on how to run PERP to start
AFD.  We need to rip out those examples and replace them with SUBMIT
commands.  See (JMS:930)AUTOFD.WHR for the locations of the files.  /Joe
Received: from B39.Tymnet by X930.Tymnet; Tue, 28 Jul 87 10:06:36 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Tue, 28 Jul 87 9:46:17 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Cc: William R Soley <WRS@B39.Tymnet> 
Subject: Re: (SYS)NAD with WF 
In-reply-to: your message of Tue, 28 Jul 87 9:10:15 PDT

PEOPLE WHO KNOW MUCH (MAYBE ALL) ARE ROMOLORAFFO, DON MURTAUGH, AND 
DOUG E. YOU HAVE GOOD ISSUE, ONLY URGE YOU TALK TO THEM BEFORE ANY
ACTION!!!!!!
Received: from B39.Tymnet by X930.Tymnet; Tue, 28 Jul 87 16:17:12 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Tue, 28 Jul 87 16:05:47 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Cc: Wayne D Bartlett <BARTLETW@B39.Tymnet> 
Subject: Re: (SYS)NAD with WF 
In-reply-to: your message of Tue, 28 Jul 87 9:10:15 PDT

NAD is allegedly protected against abuse of the WF license.  This is,
however, hearsay.  I heard a rumor that Dennis Ernst was the last to
touch the fateful program, thus, by rule of sticky fingers... -Bill
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Tue, 28 Jul 87 21:19:53 PDT 
To: Dennis Ernst <DErnst@B39.Tymnet> 
Subject: NAD 

A little bird told me that you were the last person to do anything to the
NAD program... or at least it was rumored that you had...

Do you know who is responsible for said product, or anything about it's
internal workings.  I'm asking, since I'm concerned about how protective
NAD is about permitting read/write access to files from various user and
system directories.  NAD has WF license in certain copies.

Thank you for any assistance you can offer in this regard.

/Carl
Received: from B39.Tymnet by X930.Tymnet; Wed, 29 Jul 87 15:44:35 PDT
Return-path: <DERNST@B39.Tymnet> 
From: DERNST@B39.Tymnet 
Date: Wed, 29 Jul 87 15:37:05 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Subject: Re: NAD 
In-reply-to: your message of Tue, 28 Jul 87 21:19:53 PDT

CARL, YOU CAME TO THE RIGHT PLACE.  NAD IS A REGULAR PROGRAM, EXCEPT
THAT IS PARTICULAR WHO IT TYPES ERROR MESSAGES OUT TO.  HF AND WF APPLIED TO IT
ARE PROBABLY NOT CORRECT.  TALK TO YOU ABOUT IT LATER.
DENNIS
From: Joe Smith <JMS@X930> 
Date: Wed, 29 Jul 87 18:51:06 PDT 
To: carl 
Subject: "to: Joe Smith fr: Dan Upthegrove, "... 

(begin forwarded message)

Received: from D37.Tymnet by X930.Tymnet; Wed, 29 Jul 87 17:53:05 PDT
Return-path: <UPTHEGROVE@D37.Tymnet> 
From: UPTHEGROVE@D37.Tymnet 
Date: Thu, 30 Jul 87 10:45:56 + 
To: JMS 
Subject: "to: Joe Smith fr: Dan Upthegrove, "... 

to:  Joe Smith
fr:  Dan Upthegrove, MDIS, Australia
Re:  AUTOLOGOUT
---------------

Joe,

I'm not sure that you received my earlier message, but Barb V.
passed on your name to me in relation to a solution to one
of my problems involving PDP-10 system.

I am trying to use an inactivity timer on a username basis.  Barb
told me about SET AUTOLOGOUT, but I need to find a away to set it automatically
for certain usernames.  Maybe through an INIT file?

Anyway, in testing SET AUTOLOGOUT, I have found that this command
crashes system 37 when the 15 minute timeout expires.  A little
drastic, but very effective!  I've reported it through Dallas OPS,
and to OSMAN.

Anyway, when it's fixed, how can I set up a username to use this
feature automatically.

Best regards,

Dan

(end forwarded message)

It crashes the system?  Very serious!
From: Joe Smith <JMS@X930> 
Date: Wed, 29 Jul 87 19:27:01 PDT 
To: Wayne Bartlett <BARTLETW@B39.Tymnet>, wrs, weuske@B39, Dennis Ernst
	<DErnst@B39> 
Cc: Monitor Group <JMS>, Carl, Osman, FletcherC, DenCoff 
Subject: Removing license from NAD. 

(SYS)NAD.SAV has Write Files license.  This is a very serious security breach.
I ran a test and verified that this allows unprivileged users destroy accountingdata, the oper password file, and anything else they want to.  If no-one comes
up with a valid reason not to within 24 hours, I will remove WF from all copies
of NAD.

			Joe Smith
			Tymcom-X Support Group
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 30 Jul 87 9:16:43 PDT 
To: Wayne D Bartlett <BARTLETW@B39.Tymnet>, William R Soley <WRS@B39.Tymnet> 
Cc: Joe Smith <JMS@X930.Tymnet>, Craig Fletcher <Fletcherc@X930.Tymnet>, Dennis
	Ernst <Dernst@B39.Tymnet>, Osman Guven <Osman@X930.Tymnet> 
Subject: Ref: MSG from Joe Smith, re: NAD and WF 

Wayne,
  Since Joe (also in class) was working with NAD, I had him test the ability
of a non-privileged, non-licensed user to write a file to a directory that
he otherwise would not have access to.  He chose (UN1) for the destination
directory.
  I heard from Dennis Ernst, that HF or WF should probably NOT be set on NAD.
As such, we will be removing WF from (SYS)NAD sometime today...


  If this causes someone some inconvenience, because they were relying on
this "capability", please have them contact one of us (Joe or Carl).

Please forward a copy of this message to Doug E.  Thanks.

/Carl
Received: from F70.Tymnet by X930.Tymnet; Thu, 30 Jul 87 9:37:36 PDT
Return-path: <JMS@F70.Tymnet> 
From: JMS@F70.Tymnet 
Date: Thu, 30 Jul 87 9:36:39 PDT 
To: CARL 
Subject: "Files on F70 that differ from"... 

Files on F70 that differ from files on F33:
.RDIST (CARL)*.*/CHECK/HOST:33
Master host: 70
45 files on master system.
Slave hosts: 33
Checking host 33
(CARL        :  33) USERS.SAV     20 23-Jul-84 17:21 -- bad checksum
(CARL        :  33) XEXECX.162   215 04-Sep-86 15:57 -- bad checksum
(CARL        :  33) LOGON.SHR     13 10-May-85 19:22 -- bad protection
(CARL        :  33) 1000.SAV       4 14-May-84 16:11 -- bad checksum
(CARL        :  33) HSB.SAV       31 20-Nov-86 22:30 -- bad checksum
(CARL        :  33) SIZES.SAV     16 08-Apr-82 02:33 -- bad checksum
(CARL        :  33) MAIL.BOX     116 28-Apr-81 11:15 -- bad checksum
(CARL        :  33) DSLAVE.SAV    15 28-Oct-82 16:54 -- bad checksum

End of SAIL execution
From: Osman Guven <osman@X930.Tymnet> 
Date: Thu, 30 Jul 87 9:38:38 PDT 
To: Joe Smith <jms@X930.Tymnet>, Carl A Baltrunas <carl@X930.Tymnet> 
Subject: Next week's meeting .. 


o  Next week's weekly meeting is on 8/3 @10:00 am.

o  Carl, will you please make up the minutes of the last meeting,
   most importantly the agenda item about "What should go into
   the next monitor".

-Osman-
Received: from F29.Tymnet by X930.Tymnet; Thu, 30 Jul 87 10:20:36 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Thu, 30 Jul 87 10:20:02 PDT
Return-path: <OPERA.SUP@EMSTXS.Ontyme.Tymnet> 
From: OPERA.SUP@EMSTXS.Ontyme.Tymnet 
Date: 30 JUL 87 10:03:09 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Message-id: A87165@Ontyme.Tymnet 
Subject: "ATTENTION ALL OPERATORS; If a"... 

ATTENTION ALL OPERATORS;

If a tape taken with the ASP dump will not VERIFY, cycle in another tape
before doing the SAVE  on that tape over.

Thanks Rick
Received: from B39.Tymnet by X930.Tymnet; Thu, 30 Jul 87 10:43:22 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Thu, 30 Jul 87 10:07:21 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Cc: William R Soley <WRS@B39.Tymnet>, Joe Smith <JMS@X930.Tymnet>, Craig
	Fletcher <Fletcherc@X930.Tymnet>, Dennis Ernst <Dernst@B39.Tymnet>,
	Osman Guven <Osman@X930.Tymnet> 
Subject: Re: Ref: MSG from Joe Smith, re: NAD and WF 
In-reply-to: your message of Thu, 30 Jul 87 9:16:43 PDT

SOUNDS GOOD!!  HAVE NOTIFIED (VIA ONTYME) BOTH DON MURTAUGH AND DOUG -
SO PLEASE PROCEED AS PLANNED - 
Received: from F29.Tymnet by X930.Tymnet; Thu, 30 Jul 87 11:04:26 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Thu, 30 Jul 87 10:51:45 PDT
Return-path: <OPERA.SUP@EMSTXS.Ontyme.Tymnet> 
From: OPERA.SUP@EMSTXS.Ontyme.Tymnet 
Date: 30 JUL 87 10:32:53 
To: TXS.C/BALTRUNAS@EMSTXS.Ontyme.Tymnet 
Cc: (27 names) 
Message-id: A87186@Ontyme.Tymnet 
Subject: "M E M O R A N D U M MC DONNELL-DOUGLAS"... 

                        M E M O R A N D U M

                                                 MC DONNELL-DOUGLAS IPS




DATE>      30 JUL 87  10:31

TO>        SHIFT SUPERVISORS
            ALL OPERATORS

COPIES>    Bill Fischer
           Cheryl Eldred
           Software Support
           T. Marconi

FROM>      Rick Daniels


SUBJECT>   Rebuilding TYMCOM-10's with ASP tapes


-----------------------------------------------------------------------


Using the following documents under FREMONTDOC:74, you should have no problem
in rebuilding a TYMCOM-10 with ASP tapes.

     ASPNEW.MEM

     COPCP5.MEM

     PAKCPX.MEM

     ASPDMP.MEM


These are the same documents I would be using if I had to do it.

I suggest that you print yourselves copies for study and ready-reference.

Thanks Rick
                                                                Page  2
Received: from B39.Tymnet by X930.Tymnet; Thu, 30 Jul 87 11:07:39 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Thu, 30 Jul 87 10:37:49 PDT 
To: Joe Smith <JMS@X930> 
Cc: Wayne Bartlett <BARTLETW@B39.Tymnet>, weuske@B39, Dennis Ernst
	<DErnst@B39>, Monitor Group <JMS>, Carl, Osman, FletcherC, DenCoff 
Subject: Re: Removing license from NAD. 
In-reply-to: your message of Wed, 29 Jul 87 19:27:01 PDT

Thank you for checking with us.  It is bound to screw up
somebody, but nobody at NTD.  I think (SYS)NAD is used
mostly by Tymnet operations and private network customers.
It seems to me they need an alternative means to access
their code, but I don't understand what the procedures
are so I can't suggest such an alternative.  *SIGH*  I
think this is gross negligence on someone's part, but it
is unfortunate that our customers will be the ones to
suffer for it.  I knew about the WF on NAD, but was told
that it enforced its own security, which it at least used
to because I frequently have gotten protection failures
trying to read source code I'm assembling (being in a
different GAN than most of NTD) when I forget to set RF.

I propose more investigation before any action, even
as gross as this appearently is, it can probably be 
left alone a couple more days.  I would normally
volunteer to help investigate, but this is a very bad
time.

Thanks
-Bill
Received: from B39.Tymnet by X930.Tymnet; Thu, 30 Jul 87 11:08:17 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Thu, 30 Jul 87 10:58:22 PDT 
To: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Cc: Carl A Baltrunas <Carl@X930.Tymnet>, Joe Smith <JMS@X930.Tymnet>, Craig
	Fletcher <Fletcherc@X930.Tymnet>, Dennis Ernst <Dernst@B39.Tymnet>,
	Osman Guven <Osman@X930.Tymnet> 
Subject: Re: Ref: MSG from Joe Smith, re: NAD and WF 
In-reply-to: your message of Thu, 30 Jul 87 10:07:21 PDT

It sounds like you have done more investigation.  I did a tiny bit, too, and
I see (SOURCE)NAD with HF on 70.  Presumably that is the only way that
a customer can access the files in (SOURCE) since they are mostly ALL RD NO.
However, if NAD does not enforce security itself, this is still a problem
because we do not want customers to be able to read/write even the source
directory except to assemble (but not make listing of) the files therein.
Although this is a smaller box than (SYS)NAD with WF, it still needs to be
addressed one way or another.  -Bill
From: Joe Smith <JMS@X930> 
Date: Thu, 30 Jul 87 11:10:34 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff, WRS 
Subject: System 70 users are being moved to F33. 

I got call from Barbara V. in Validations on the 27th.  She wanted to know if
I really wanted to keep all of the 1000 page files in (JMS:70) when we get
moved to system 33.  These happened to be test files, which I deleted.
I ran SZRPT with option NUMACCOUNT to get a list of GAN 3 users on F70,
then had RDIST compare corresponding directories on F70 and F33.

The results are in (JMS:70)CHECK3.LOG.  If you want to check your own
directory, use "RDIST (yourname)*.*/HOST:33/MASTER:70/CHECK".     /JMS
From: Osman Guven <osman@X930.Tymnet> 
Date: Thu, 30 Jul 87 12:11:52 PDT 
To: Monitor Group <Osman@X930.Tymnet>, Carl A Baltrunas <carl@X930.Tymnet>, Joe
	Smith <jms@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: Autologout .. 

=======================================================================

From: UPTHEGROVE
Date: JULY 29,1987 12:13
G'day!

I'm trying to investigate using the AUTOLOGOUT feature for
some of international customers.  Twice I have entered
SET AUTOLOGOUT, and waited 15 minutes for logoff.  At exactly
15 minutes, system 37 has crashed.

On the PDP-10, I am UPTHEGROVE, and there is an init file,
(UPTHEGROVE)INIT.SAI, which may, or may not, contribute.

My ONTYME is ISITPR.D/UPTHEGROVE.  I would like to know what you find out.  

I could sure use the autologout feature, especially if possible
to use at init time.

Best regards,  Dan

=======================================================================

	I tested on X95 and X930, it work correctly w/o crashing system.
Steve Atwell said, he tried on D37 and worked correctly also.  So there
might be something unique to network node he is originated and/or pass-
through nodes he is coming to D37.  I will follow up on this and find
out under what circumtances problem could be duplicated.

-Osman-









From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 30 Jul 87 13:40:13 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: AUTOLOGOUT 

Joe,
  Asa per if this is causing a crash... what did you change in the once-a-sec
code.. I thought you fixed a bug...
/Carl
From: Joe Smith <JMS@X930> 
Date: Thu, 30 Jul 87 15:29:02 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: IME crashes on D37 caused by low core getting corrupted. 

The immediate cause of the IME (Illegal Memory reference from Exec) was
due to the byte pointer at UPYUWM got changed from 001200,,374670 to
401202,,354670.  Bits 0 and 16 got set and bit 22 got cleared.  Several other
words in the vicinity of UPYUWM also got mangled - see below.

I think it was caused by the "SET AUTOLOGOUT" inactivity timer going off
while the user's context pages were swapped out.  This would not show up on 930
or 95 unless a bunch of memory hogs were logged in to force the idle job out.

DSK:6000.MON (1447 30-JUL-87)	 DSK:6000.C05 (1447 30-JUL-87)
   the running monitor		   crash dump from IME
1)1 Input file: 		2)1 Input file: (SYS)CRA005     Bit 0 got set
1) $$C 6000<6777>0$N		2) $$C 6000<6777>0$N		Bit 16 got set
**************							Bit 22 cleared
1) UPYPSR/ 310300,,372701	2) UPYPSR/ 710302,,352701	400002,,020000
1) USYPSR/ 310300,,773701	2) USYPSR/ 710302,,753701	   "      "
1) UXYPSR/ 310300,,366701	2) UXYPSR/ 710302,,346701	(same for all)
1) UPYUWM/   1200,,374670 	2) UPYUWM/ 401202,,354670
1) USYUWM/   1200,,775670	2) USYUWM/ 401202,,755670
1) UXYUWM/   1200,,370670	2) UXYUWM/ 401202,,350670
1) USYSIN/ 241200,,775675	2) USYSIN/ 641202,,755675
1) USYLSP/   1200,,775675	2) USYLSP/ 401202,,755675
1) PBMMSK/      0,,177777	2) PBMMSK/ 400002,,157777
1) UPYPTM/   2200,,372414	2) UPYPTM/ 402202,,352414
1) UPYPXM/   2200,,372412	2) UPYPXM/ 402202,,352412
1) USYPTM/   2200,,773414	2) USYPTM/ 402202,,753414
1) USYPXM/   2200,,773412	2) USYPXM/ 402202,,753412
1) UXYPTM/   2200,,372414	2) UXYPTM/ 402202,,352414
1) LMYCUR/ 410212,,373521	2) LMYCUR/ 410212,,353521
1) LMYLMA/   2712,,373521	2) LMYLMA/ 402712,,353521
1) LMYHDA/   1212,,373521	2) LMYHDA/ 401212,,353521
1) LMYSPB/  42212,,373521	2) LMYSPB/ 442212,,353521
1) LMYSPO/    412,,373521	2) LMYSPO/ 400412,,353521
1) HNGTIM/ 12			2) HNGTIM/ 67
1) HNGMIN/ 16			2) HNGMIN/ 21
      CIPWT is the clock queue.  It is supposed to differ.
1) CIPWT+0/ 400012,,600004	2) CIPWT+0/ 400017,,145
1) CIPWT+1/ 410102,,42		2) CIPWT+1/ 410111,,200002
1) CIPWT+2/ 400003,,400112	2) CIPWT+2/ 410101,,103
1) CIPWT+3/ 400050,,200033	2) CIPWT+3/ 400025,,200027
1) CIPWT+4/ 400036,,600005	2) CIPWT+4/ 410120,,600003
From: JMS@X930.Tymnet 
Date: Thu, 30 Jul 87 15:42:15 PDT 
To: osman, carl 
Subject: "has the stopcode typeout extracted"... 

(M33:930)CRASH.D37 has the stopcode typeout extracted from the crash dumps.
Received: from D54.Tymnet by X930.Tymnet; Thu, 30 Jul 87 16:49:17 PDT
Return-path: <DOUGE@D54.Tymnet> 
From: DOUGE@D54.Tymnet 
Date: Thu, 30 Jul 87 16:47:17 PDT 
To: carl 
Subject: "Carl, I am goind to give nad read"... 

Carl, I am goind to give nad read file license on all systems.
Do you know of any problems with this?  Also, do you know of
a program called autologout?  If you could give me a call
after about 5pm I'd like to inform you of what we are goind 
to do with nad.   Forgive the d's where g's should be.

Doug
.
From: Joe Smith <JMS@X930> 
Date: Thu, 30 Jul 87 16:46:38 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: D37 crashes fixed. 

You can delete all the previous messages about the crashes on D37 from the
inactivity timer.  The real problem is that INTKIL.PAT was not applied to
any of the /B, /B-1, /B01, or /B04 monitors inDallas.  The only system that
had the patch was D55.  SYSTEM.SAV has been patched now.  /Joe
From: TXSTEXT@X930.Tymnet 
Date: Thu, 30 Jul 87 17:11:10 PDT 
To: carl 
Subject: "Why am I all of sudden getting"... 


Why am I all of a sudden getting little "advice to the lovelorn"-type cookie messages now, every time I log in? Did you do this? Is it supposed to be some kind
of hint? Maybe we should talk...(sigh). /Wad
Received: from D37.Tymnet by X930.Tymnet; Fri, 31 Jul 87 10:13:21 PDT
Return-path: <JMS@D37.Tymnet> 
From: JMS@D37.Tymnet 
Date: Fri, 31 Jul 87 12:10:14 CDT 
To: carl 
Subject: "According to 870730.JQL, the job"... 

According to 870730.JQL, the job processor hasn't done anything since 18:00
on system 37.  870731.JQL has nothing in it.   ?joe
From: JMS@X930.Tymnet 
Date: Fri, 31 Jul 87 11:00:16 PDT 
To: carl, dencoff, osman 
Subject: "3-way LINKs do not work. LINK"... 

3-way LINKs do not work.  LINK won't talk to the LINKee because the LINKee is
detached, and creating a new LINK to the LINKer cuts the old LINKee out of the
circuit.  However, a third party can join a LINK by doing an ADVISE on the job
that is running LINK.  A 4th person can join by also running ADVISE on the job
that started running LINK.   /joe
Received: from F33.Tymnet by X930.Tymnet; Fri, 31 Jul 87 12:51:12 PDT
Return-path: <CARL@F33.Tymnet> 
From: CARL@F33.Tymnet 
Date: Fri, 31 Jul 87 12:50:42 PDT 
To: carl 
Subject: "testing...."... 

testing....
Received: from F29.Tymnet by X930.Tymnet; Fri, 31 Jul 87 13:05:52 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Fri, 31 Jul 87 13:05:04 PDT
Received: from F29.Tymnet by EMSTXS.Ontyme.Tymnet; Fri, 31 Jul 87 12:57:28 PDT
Received: from F33.Tymnet by F29.Tymnet; Fri, 31 Jul 87 12:57:08 PDT
Return-path: <CARL@F33.Tymnet> 
From: CARL@F33.Tymnet 
Date: Fri, 31 Jul 87 12:56:41 PDT 
To: txs.c/baltrunas@ontyme 
Subject: "hello."... 

hello.
From: FLETCHERC@X930.Tymnet 
Date: Fri, 31 Jul 87 13:11:16 PDT 
To: osman, dencoff, carl, jms 
Subject: "Subj: Tymcom-X meeting We will"... 

Subj: Tymcom-X meeting

We will have the Tymcom-X meeting at 10:00 am Monday morning rather
than Wednesday to make best use of the entire week.  See you there.

	Craig
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Sun, 2 Aug 87 23:42:08 PDT 
To: Monitor Group <CARL@X930>, Osman Guven <Osman@X930.Tymnet>, Joe Smith
	<JMS@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: Agenda item(s) 


1. TrainNet connection
   a. refusal of F3s due to space and maintenance costs
   b. connection to TrainNet at Nicholson Lane
      1. Bob Grandey and George King are in favor of some arrangement
      2. What do we get out of this arrangement?

2. Review of Monitor /C release (current stage?)

3. Review of Monitor /D release
   a. What is going to be implemented
   b. Additional 1+s that have come up in the past 3 weeks
   c. What will be put off until /E or later?

4. Congratulations to Joe and Carl for successful completion of class
   (Both Joe and Carl finished at the top of their respective classes)

5. Review of D37 crash due to missing patch

6. Review of Ranier Bank problem with BOOTS-MT-Memory parity problems

7. Update status of the move to South Bay Center

8. Update on the progress of building our micronet for the move

9. Review of computing resources

From: FLETCHERC@X930.Tymnet 
Date: Mon, 3 Aug 87 9:32:50 PDT 
To: carl 
Subject: "Do you wnat me to enroll you in"... 


Do you wnat me to enroll you in tte.440 TYmnet Engine Programming for
October 19-23?

	Craig
P.S. ATtaboy for top standing in class.  Good work!

From: TXSTEXT@X930.Tymnet 
Date: Mon, 3 Aug 87 13:25:19 PDT 
To: carl 
Subject: "Hi! I went to 84 Lumber, and they"... 


Hi!

I went to 84 Lumber, and they don't carry any 1"x3"x any length; however, they do carry 1 x 4", and 3/4" x 3". Please send mail and let me know wether you want
me to go back and buy the 3/4 x 3" length, okay? ILY, /Waddle
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Mon, 3 Aug 87 22:04:42 PDT 
To: dencoff 
Subject: TYMNET call for (DIALNET) 

Dennis,
  I spoke with the person who called me, that Osman referred to you about
problems with SUBMIT and trying to setup something similar to what they had
with PERP and PCOM...

  Please get back with me before calling her back.  I think we can solve
most of her problems with the newest release of XEXEC.

/Carl
Received: from F74.Tymnet by X930.Tymnet; Mon, 3 Aug 87 22:11:27 PDT
Return-path: <Carl@X930.Tymnet> 
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Mon, 3 Aug 87 22:09:51 PDT 
To: Osman Guven <Osman@X930.Tymnet>, Joe Smith <JMS@X930.Tymnet> 
Subject: SAXINY on system F74 

Apparently running /B10 or /C have no difference in the prevention of
this stopcode... do we know why it is occurring?
/Carl
From: Joe Smith <JMS@X930> 
Date: Mon, 3 Aug 87 23:27:52 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Cc: Osman Guven <Osman@X930.Tymnet> 
Subject: Re: SAXINY on system F74 
In-reply-to: your message of Mon, 3 Aug 87 22:09:51 PDT

SAXINY is new in /B10.  It means that COMMOD got an interrupt from the SA10
and the unit number stored in location 301 or 305 does not match the kontroller
data blocks.  For instance, if the disk channel interrupts with unit 277 (or
unit 0), COMMOD will check if it belongs to BPA (units 300-317) or BPB (units
320-337).  Since there is no Kontroller that claims that unit, COMMOD can't
do anything with the interrupt other than dismiss it.  Prior to /B10 there
was no indications when this occurred.  I added EVENT stopcode SAXINY so that
it would show up on the CTY.  My guess is that a disk caused a transfer-done
interrupt, but the 3672 reported a bogus unit.  COMMOD complains that it got
an interrupt from an unknown unit, then FILIO says THUNG because it missed
an interrupt it was expecting.  I will see if SAXINY can be modified to output
more info to catch the bad unit.  /Joe
From: Joe Smith <JMS@X930> 
Date: Tue, 4 Aug 87 14:56:01 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: (M33)P035C.DOC has release notes for P035/C. 

The modification history (all the details of everything added since P035/P)
is in (M33)P035C.MEM, the release nodes (english translations) are in
(M33)P035C.DOC.  (M33)STOPCD.MEM has also been updated.  /Joe
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Tue, 4 Aug 87 16:20:20 PDT 
To: Craig Fletcher <fletcherc@X930.Tymnet> 
Subject: TTE.440 Engine programming 

Yes,
  Please enroll me in TTE.440 Tymnet Engine Programming for the week of
October 19-23.

  Also, the next time the MIR (Managing Interpersonal Relationships) class
is offerred, I am interested in attending.

Thank you very much.

/Carl
From: Osman Guven <osman@X930.Tymnet> 
Date: Tue, 4 Aug 87 16:40:59 PDT 
To: Monitor Group <Osman@X930.Tymnet>, Carl A Baltrunas <carl@X930.Tymnet>, Joe
	Smith <jms@X930.Tymnet> 
Cc: Craig Fletcher <fletcherc@X930.Tymnet>, Dennis Coffey <dencoff@X930.Tymnet>
	
Subject: Short meeting .. 

We schedule to have a meeting 8/5 @10:00 am to discuss the
Tymcom-X Training for the Operation and FSCO.
-Osman-
From: Joe Smith <JMS@X930> 
Date: Tue, 4 Aug 87 17:18:23 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Cause of SAXINY stopcodes. 

?INFO stopcode "SAXINY" at 02-Aug-1987 12:33:32   T4 = 400000,,421043
?INFO stopcode "SAXINY" at 02-Aug-1987 12:33:38   T4 = 400000,,421143

In the right half:
  400000 = Interrupt request from SA10
   20000 = SA10 channel 1 (disk) is enabled for interrupt
    1000 = The "GO" flag is set for SA10 channel 1 (disk)
     100 = Status available from channel 0 (tape)
      40 = Status available from channel 1 (disk)
       3 = SA10 is using PI channel 3

In the left half:
  400000 = Dummy bit set to indicate that one of bits 29-32 are set in RH
     000 = Octal unit device address (8 bits)

SAXINY means that one of the two disk controllers has told the SA10 to
interrupt the PDP-10, but the controller did not identify itself.  Controller
BPA (which is wired for 'C0' to 'CF') is supposed to report unit device
addresses in the range 300 to 317 and controller BPB (wired for 'D0' to 'DF')
is supposed to report unit device addresses in the range 320 to 337.  All the
SAXINY reports I have looked at show a unit device address of 000.  One of
the two controllers is returning bad status.

SAXINY occurs whenever the system gets an interrupt and cannot identify which
particular disk (or controller) was the cause of the interrupt.  THUNG occurs
when a disk transfer is started, but the "done" interrupt gets lost.  I would
expect each THUNG to be preceded by a SAXINY report.     /Joe
From: TXSTEXT@X930.Tymnet 
Date: Wed, 5 Aug 87 12:30:37 PDT 
To: carl 
Subject: "You've probably already seen this, "... 


You've probably already seen this, but in case you haven't, I ythought you mightlike my last cookie: "Blessed are the brief, for they shall have lower phone
bills." (Maybe you should keep copies for yourself and your Mum?) I also found a comic strip which I think suits you...I'll show it to you when you get home.
Love, /Waddle
Received: from B39.Tymnet by X930.Tymnet; Wed, 5 Aug 87 14:34:52 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Wed, 5 Aug 87 14:10:35 PDT 
To: William R. Soley <WRS@B39.Tymnet> 
Cc: CARL@X930 
Subject: Re: "ARE YOU MOVED??? WHAT IS THE NEW"... 
In-reply-to: your message of Wed, 5 Aug 87 11:01:08 PDT

THANKS - WILL VIST - BUT AFTER LEG HEALS - INFACT, WOULD LIKE TO 
REVIEW SETOP WITH YOU AND CARL - HOW IS THURS OR FRI, 8/13 - 8/14??
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 5 Aug 87 15:08:56 PDT 
To: Dennis Ernst <DErnst@B39.Tymnet> 
Subject: Moving? 

Are you finished moving yet???

How is Bldg A? ... or the commute?

Have you had any time to work on our reconfiguration of the uNet?
(we heard that we may be moving the week of Aug 24-28... so, I guess
I'm getting a little anxious...)

/Carl
Received: from B39.Tymnet by X930.Tymnet; Fri, 7 Aug 87 3:02:17 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Thu, 6 Aug 87 12:54:47 PDT 
To: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Cc: CARL@X930 
Subject: Re: Reviewing SETOP with Carl 
In-reply-to: your message of Wed, 5 Aug 87 14:10:35 PDT

Yes, either Thursday or Friday of next week are okay.  Lets meet at my office
about 1:30 instead of lunch.  I'd invite you all for lunch, but they're not
going to open the cafeteria until September.  Oh well.  Let me know which
day anyone prefers.  Thanks -Bill
Received: from B39.Tymnet by X930.Tymnet; Fri, 7 Aug 87 10:01:21 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Fri, 7 Aug 87 8:50:53 PDT 
To: William R. Soley <WRS@B39.Tymnet> 
Cc: CARL@X930 
Subject: Re: Reviewing SETOP with Carl 
In-reply-to: your message of Thu, 6 Aug 87 12:54:47 PDT

PREFER THURS, 8/13, BUT FRI. OK
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Fri, 7 Aug 87 10:26:25 PDT 
To: William R. Soley <WRS@B39.Tymnet> 
Cc: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Subject: Re: Reviewing SETOP with Carl 
In-reply-to: your message of Thu, 6 Aug 87 12:54:47 PDT

Thursday OK, but prefer Friday...
  let us know which you prefer.
Received: from B39.Tymnet by X930.Tymnet; Fri, 7 Aug 87 10:46:38 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Fri, 7 Aug 87 10:31:37 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Cc: William R. Soley <WRS@B39.Tymnet> 
Subject: Re: Reviewing SETOP with Carl 
In-reply-to: your message of Fri, 7 Aug 87 10:26:25 PDT

CAN WE SETTLE ON THURS, THEN(MY PREFERENCE - WILL THEN BE ABLE TO
ATTEND KENNA CLUB LUNCH FRI) PLEASE CONFIRM THURS.
From: TXSTEXT@X930.Tymnet 
Date: Fri, 7 Aug 87 13:57:38 PDT 
To: carl 
Subject: "I just got back from the S.J."... 


I just got back from the S.J. AND the S'vale Price Clubs. Neither of them has
your T-Gel Shampoo. I would suggest that you go to Hayward and see if they have
it. I know your card is home, but I couldn't find mine, either. I got temporary
passes at each store. Good luck. This mail message will self-destruct right after you log off. Love, Waddle
Received: from F29.Tymnet by X930.Tymnet; Mon, 27 Jul 87 11:44:30 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Mon, 27 Jul 87 11:34:31 PDT
From: TYMOPS.N/NILES@EMSTXS.Ontyme.Tymnet 
Date: 27 JUL 87 19:08:33 
To: TXS.SUP@EMSTXS.Ontyme.Tymnet 
Message-id: M08084@Ontyme.Tymnet 
Subject: Removal of Trash for MOve 
Resent-from: Tymcom-X Supervisor <TXSSUP@X930.Tymnet> 
Resent-date: Fri, 7 Aug 87 16:15:45 PDT 
Resent-to: Carl A Baltrunas <carl@X930.Tymnet>, Osman Guven
	<osman@X930.Tymnet>, Joe Smith <jms@X930.Tymnet> 
Resent-cc: Craig Fletcher <fletcherc@X930.Tymnet>, DenCoff 

     TO:       All South Bay MDC Personnel

     FROM:     Dick Denesha

     DATE:     July 27, 1987

     SUBJECT:  Removal of Trash for MOve
     =================================================================

     TRASH, TRASH and more TRASH.  Here is how we are going to get rid
     of it!!.

     Carts marked with TRASH will be placed in each building at
     various locations.  They may be used by anyone, and Facilities
     Maintenance or the janitor will empty them as needed.  If you
     need immediate service, call 446-8048 for action.  PLEASE! do not
     put any WET trash into these carts.

     Now is a good time to get rid of outdated phone books and
     directories.  There will be a limited number of new San Jose
     books available for the Fremont movees, so everyone else please
     bring your 1987 books with you.

     The ELECTRICAL POWER STRIPS, EXTENSION CORDS, HEATERS AND FANS
     will not be needed or allowed (except in special circumstances)
     in the new buildings.  Please leave them on your desk for pickup
     by Facilities Maintenance.

     If you have any questions, please contact your local maintenance
     person:

     VALLEY GREEN        IGNACIO GUERRERO              446-6008

     BUBB RD.            BILL HUNT                     446-6040

     LIBERTY             YASUO KOTAKA                  415/794-2550

     OPW                 SLIM DAVENPORT                432-5224

     EMERGENCY FROM ANY LOCATION - 408-446-8048
Received: from F29.Tymnet by X930.Tymnet; Fri, 7 Aug 87 16:44:27 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Fri, 7 Aug 87 16:38:20 PDT
Return-path: <SYSTEM.ONTYME@EMSTXS.Ontyme.Tymnet> 
From: SYSTEM.ONTYME@EMSTXS.Ontyme.Tymnet 
Date: 07 AUG 87 13:36:01 
To: CARL@F29.Tymnet 
Message-id: A86707@Ontyme.Tymnet 
Subject: UNDELIVERABLE MESSAGE - DUPLICATE MESSAGE 

Message #A89465 was not delivered to the following recipient(s):

        TYM.J/BEDOUN,
        TYM.D/STUDER.

The message is a duplicate. Please contact
your customer support representative.

(undelivered message follows)
------------------------------------------------------------------------
Received: from F29.Tymnet by EMSTXS.Ontyme.Tymnet; Wed, 5 Aug 87 16:43:09 PDT
From: CARL@F29.Tymnet 
Date: Wed, 5 Aug 87 16:40:46 PDT 
To: tym.d/studer@ontyme.tymnet, cc, tym.j/bedoun@ontyme, carl@x930 

Hi... this is a test.
This isnt really important.
/Carl Baltrunas

(CARL:930)
Tums address = "Carl A Baltrunas <CARL@X930.Tymnet>"

/Carl
Received: from F29.Tymnet by X930.Tymnet; Fri, 7 Aug 87 16:44:32 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Fri, 7 Aug 87 16:38:39 PDT
Return-path: <SYSTEM.ONTYME@EMSTXS.Ontyme.Tymnet> 
From: SYSTEM.ONTYME@EMSTXS.Ontyme.Tymnet 
Date: 07 AUG 87 13:36:07 
To: CARL@F29.Tymnet 
Message-id: A86708@Ontyme.Tymnet 
Subject: UNDELIVERABLE MESSAGE - DUPLICATE MESSAGE 

Message #A89465 was not delivered to the following recipient(s):

        TYM.J/BEDOUN,
        TYM.D/STUDER.

The message is a duplicate. Please contact
your customer support representative.

(undelivered message follows)
------------------------------------------------------------------------
Received: from F29.Tymnet by EMSTXS.Ontyme.Tymnet; Wed, 5 Aug 87 16:43:09 PDT
From: CARL@F29.Tymnet 
Date: Wed, 5 Aug 87 16:40:46 PDT 
To: tym.d/studer@ontyme.tymnet, cc, tym.j/bedoun@ontyme, carl@x930 

Hi... this is a test.
This isnt really important.
/Carl Baltrunas

(CARL:930)
Tums address = "Carl A Baltrunas <CARL@X930.Tymnet>"

/Carl
Received: from F29.Tymnet by X930.Tymnet; Fri, 7 Aug 87 16:44:37 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Fri, 7 Aug 87 16:38:57 PDT
Return-path: <SYSTEM.ONTYME@EMSTXS.Ontyme.Tymnet> 
From: SYSTEM.ONTYME@EMSTXS.Ontyme.Tymnet 
Date: 07 AUG 87 13:36:13 
To: <CARL@X930.Tymnet> 
Message-id: A86709@Ontyme.Tymnet 
Subject: UNDELIVERABLE MESSAGE - DUPLICATE MESSAGE 

Message #A89468 was not delivered to the following recipient(s):

        TYM.D/STUDER.

The message is a duplicate. Please contact
your customer support representative.

(undelivered message follows)
------------------------------------------------------------------------
Received: from F29.Tymnet by EMSTXS.Ontyme.Tymnet; Wed, 5 Aug 87 17:04:20 PDT
Received: from X930.Tymnet by F29.Tymnet; Wed, 5 Aug 87 16:45:00 PDT
Return-path: <CARL@X930.Tymnet> 
From: CARL@X930.Tymnet 
Date: Wed, 5 Aug 87 16:44:33 PDT 
To: tym.d/studer@ontyme 

Testing 1.2.3.4
Received: from B39.Tymnet by X930.Tymnet; Fri, 7 Aug 87 16:50:37 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Fri, 7 Aug 87 16:13:28 PDT 
To: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Cc: CARL@X930 
Subject: Re: Reviewing SETOP with Carl 
In-reply-to: your message of Fri, 7 Aug 87 8:50:53 PDT

OK I have it down for 1:30PM 8/13 at my office (B4-535 at N.1st St.)
-Bill
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Sun, 9 Aug 87 0:41:28 PDT 
To: Craig Fletcher <fletcherc@X930.Tymnet> 
Subject: Re: Reviewing SETOP with Carl 

(begin forwarded message)

Received: from B39.Tymnet by X930.Tymnet; Fri, 7 Aug 87 16:50:37 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Fri, 7 Aug 87 16:13:28 PDT 
To: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Cc: CARL@X930 
Subject: Re: Reviewing SETOP with Carl 
In-reply-to: your message of Fri, 7 Aug 87 8:50:53 PDT

OK I have it down for 1:30PM 8/13 at my office (B4-535 at N.1st St.)
-Bill

(end forwarded message)

...update on my schedule for the week...
(I guess this means I'll be going to the first [early] session about south
bayy center on thursday...)
/Carl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Sun, 9 Aug 87 0:43:09 PDT 
To: Wayne D Bartlett <BARTLETW@B39.Tymnet>, William R Soley <WRS@B39.Tymnet> 
Subject: SETOP Review... 

Thursday 8.13, 1:30pm... I may have to request that we not start until 2:00pm.
I have another meeting on Thursday (actually South Bay Center orientation)
and I'm not sure whether I'll have enough time to get there earlier.  I'll
let you know when i get to the Office on Monday... and re-read the memo with
the meeting time (there are 2 times).

/Carl
From: Joe Smith <JMS@X930> 
Date: Sun, 9 Aug 87 15:28:54 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: 2nd draft of P035C.DOC is ready. 

Osman, Dennis,
  Please check (M33)P035C.DOC for omissions, misspellings, etc.  It
currently includes Carl's and Craig's comments.  /Joe
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Mon, 10 Aug 87 12:50:03 PDT 
To: Wayne D Bartlett <BARTLETW@B39.Tymnet>, William R Soley <WRS@B39.Tymnet> 
Subject: Thursday meeting time ok! 

It appears that the other meeting I had on Thursday will not be taking
place as scheduled.  See you there.
/Carl
Received: from B39.Tymnet by X930.Tymnet; Mon, 10 Aug 87 13:01:58 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Mon, 10 Aug 87 12:54:49 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Cc: William R Soley <WRS@B39.Tymnet> 
Subject: Re: SETOP Review... 
In-reply-to: your message of Sun, 9 Aug 87 0:43:09 PDT

LAST MEMO STATED THURS (1:30)AND ASKED FOR CONFIRMATION. BUT 2 PM IS OK.
Received: from B39.Tymnet by X930.Tymnet; Mon, 10 Aug 87 13:15:55 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Mon, 10 Aug 87 13:12:56 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Cc: Wayne D Bartlett <BARTLETW@B39.Tymnet> 
Subject: Re: Thursday meeting time ok! 
In-reply-to: your message of Mon, 10 Aug 87 12:50:03 PDT

Ok - I'm confused.  1:30 or 2:00?
  [ ] Aug 13 1:30 PM
  [ ] Aug 13 2:00 PM
  [ ] Aug 13 2:30 AM (AM? AM!)
-Bill
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Mon, 10 Aug 87 13:25:28 PDT 
To: Wayne D Bartlett <BARTLETW@B39.Tymnet>, William R Soley <WRS@B39.Tymnet> 
Subject: Confirmation 

I figured it out!!!!!
  [X] Aug 13 1:30 PM
  [ ] Aug 13 2:00 PM
  [ ] Aug 13 2:30 AM (AM? AM!)

(actually 2:30 am is preferred, but I don't think either of
you would go for it...)
/Carl
From: TXSTEXT@X930.Tymnet 
Date: Tue, 11 Aug 87 11:43:15 PDT 
To: carl 
Subject: "Please come skating tonight...Francie"... 


Please come skating tonight...Francie and I have been planning on meeting there tonight for two weeks, so I was planning on going, but I'd much prefer to have   you there instead. It would have nothing to do with rink politics...it would be
like having a date. And we need to have a date. We need it alot more than alot 
of other married couples, because we never got a chance before we were married.

Please say you'll go; I have to go out a do a few errands, but if you send me ma  
mail saying you'd like to go, I'll even bring you dinner (KFC, TOGO's, or what-
ever you want. I do think about you. I think about you all the time...even when
I start to feel that you prefer your terminals' company to mine (like, last nigh    night; that was why I couldn't getr to sleep.) It could even be therapeutic for
us; going back to the place where we first met. Please say you'll come. I do
love you. I do want to be with you. Stop worrying about the back yard, and
about the money, and about any other reasons not to go that you can come up with...we should go for us.
IDLYVM.../Waddle
From: TXSTEXT@X930.Tymnet 
Date: Wed, 12 Aug 87 11:45:29 PDT 
To: carl 
Subject: "Hi! It's me... I have a few quesitons"... 


Hi! It's me...

I have a few quesitons for you:
1. Is it possible to print the following for my resume:
   o 12-pitch spacing
   o 10-pitch (pica) type
   o Courier or Academic Bookface typeface
I've been reading the resume book I got, and it recommends these, at the very begining. I need to know if I can get them from your computer/printer system.
Please respond asap, so I can get started with this. By the way, you left your
beeper again. ILYVMADYFI, /Waddle

P.S. - Also, when you get home will you show me how to break out part of an
existing file and make it a new file, with a new file name? My search.86 file
has gotten much too big, and I want to break out all of the 1987 info into a new file, called (are youready? This is really innovative) search.87. Thanks.
From: Joe Smith <JMS@X930> 
Date: Wed, 12 Aug 87 20:25:47 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: System DD is up as host 95. 

The 2020 with 3 RP06 disks is up an in the network as host 95.
SYSNO says X118 though, the real 95 (hardware CC) has an LP20 printer interface
on its UNIBUS but this system (118) does not.  That is the reason why hardware
DD cannot use 95's regular monitor.

Right now only the 1-tape save set has been restored.   /Joe
Received: from B39.Tymnet by X930.Tymnet; Wed, 12 Aug 87 21:56:26 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Wed, 12 Aug 87 21:50:48 PDT 
To: carl@930, jms@930 
Subject: change these passwords 

The following passwords should probably be changed since they leave
something to be desired in terms of security.  They were "guessed"
by a program which tries words from a dictionary against all users
in the mud.  Thanks -Bill

public net:
FRENCH              FRENCH         [3,232631]      30Jul80 
GO AWAY             OSNF           [3,140673]      28Jan85 
NEW USER            OSB            [3,145107]      24Aug84 
NEW USER            OSP            [3,140674]      24Aug84 
NEW USER            T10AIL         [3,326471]      24Aug84 
NEW USER            TYMAIL         [3,326742]      24Aug84 
PASCALDOC           PASCALDOC      [3,315030]      17Apr80 

bubb net:
GO AWAY             JMS            [3,431116]      14Mar86 so
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 12 Aug 87 22:03:16 PDT 
To: William R Soley <WRS@B39.Tymnet>, Joe Smith <JMS@X930.Tymnet> 
Subject: password changes 

Public net passwords have been changed for
  FRENCH & PASCALDOC  (same password)
  OSNF, OSB & OSP     (same different password)
  T10AIL & TYMAIL     (same different password)

If you need to know these for any reason, ask me soon... least I forget
what I changed them to... I NEVER write passwords down...
/Carl
Received: from B39.Tymnet by X930.Tymnet; Wed, 12 Aug 87 22:11:24 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Wed, 12 Aug 87 22:07:30 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Subject: Re: password changes 
In-reply-to: your message of Wed, 12 Aug 87 22:03:16 PDT

Thanks - see you tomorrow 1:30 at my office.  Need directions?
You'll get to see the expression on Wayne's face when I show him
a two inch thick list of passwords I guessed last night.  (20,000)
He's never seen it before since I haven't run one since before he
took this job.  He doesn't know its coming so it will be a surprise.
-Bill
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 12 Aug 87 22:13:35 PDT 
To: William R Soley <WRS@B39.Tymnet> 
Subject: Directions... 

I know where the building is..., as long as I keep the message with your
floor and cubicle number i shouldn't have too much trouble... although
I could use directions from the elevator on your floor, to your office.
I know what the layout of our floor in BLDG D looks like, so I presume the
standard elevator/facilities are similar.

I'd like to see the password list myself... you should have been able to
guess "MY" BUBBNET password.. it's an awkward (but correct) spelling of a
person's name... no spaces,numbers or special characters.

What is the top password?  "WELCOME"?

/Carl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 12 Aug 87 22:20:17 PDT 
To: William R Soley <WRS@B39.Tymnet> 
Subject: password guessing 

Have you put anything into your program to check for those people who
have taken things like "GO AWAY" or "ALICE" and changed them to "G0 AWAY"
and "AL1CE" or "A1ICE"  just to conform... still just as guessable if you
know the person/product/service only it conforms or is that c0nf0rms?

I know.... since my password is the name of a place (not in your dictionary)
that is mythical, with just such a misspelling to allow it to match the new
security spec of an imbedded non-alphabetic.

/Carl

From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 13 Aug 87 0:21:17 PDT 
To: Dennis Ernst <DErnst@B39.Tymnet> 
Subject: Dennis, 

  I have a meeting with Bill Soley at 1:30pm Thursday.  After that meeting
I will stop by your office with the diagrams and changes I've made to the
micro-net configurations.

  If you are not going to be available, please let me know, so I can try to
write up a description of what we need done, rather than having you try to
figure out my scribblings alone.

/Carl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 13 Aug 87 2:39:08 PDT 
To: William R Soley <WRS@B39.Tymnet>, Wayne D Bartlett <BARTLETW@B39.Tymnet> 
Subject: Meeting Info 

Please type (read) the file (CARL:930)SETOP.PRP prior to our meeting.  I
have updated the document to reflect the changes I've made to the design
(some of which are implemented in my test version).

Some questions I have -- open for discussion are:

1)  Who should be allowed to see what information in the oper database.
    At present, any manager may see any subordinate and any individual
    may see their own information.
    How do we allow anyone to grant license to someone NOT subordinate
    one or more levels below them? (If they cannot see them!)

2)  How do we want to make various users able to see and change everything?
    (I'm not asking for implementation details... I'm asking from a policy
     point of view... from a legality point of view [freedom of information
     and all that]).
    Obviously, WRS & CARL & a few others can change anything... but how do
    we want to officiate that capability...  especially in the case of a
    system disaster.

On a different topic... we should discuss any fallout from the NAD episode
of a week or two ago and how that changes would affect various support
and development groups.  (I haven't gotten back to Doug or Dennis on this).


...I'm fading... more questions, but I'm becomng incoherent... see you
both at 1:30pm at Bill's office.

/Carl
    From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 13 Aug 87 17:12:17 PDT 
To: William R Soley <WRS@B39.Tymnet> 
Subject: LPR from 930 

Apparently it doesn't work very well... can't even get the circuit...

   !lpr -t setop.prp
   BUBBN
   login: lost circuit
   Called from 402164  Last SAIL call at 2030
   EXIT
   !

Lookes like it starts to do gateway stuff then immediately dies...
sigh.

/carl
Received: from B39.Tymnet by X930.Tymnet; Fri, 14 Aug 87 0:16:02 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Fri, 14 Aug 87 0:13:48 PDT 
To: Carl A Baltrunas <Carl@X930.Tymnet> 
Subject: Re: LPR from 930 
In-reply-to: your message of Thu, 13 Aug 87 17:12:17 PDT

I ran it this morning from 930 to print your document and it worked fine.
I assume you're running the one in XEXEC.  Maybe there is a problem with
the gateway it was trying to use.  -Bill
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Fri, 14 Aug 87 11:02:41 PDT 
To: William R Soley <WRS@B39.Tymnet> 
Subject: LPR 

I presume I was running (XEXEC)LPR ... anyway, since it's going to be a few
weeks before I can realistically pick-up listing... I'll wait until we move.

Our plan is to de-install 930, etc on the 24th...  however, we expect to have
a KI/KL in the fremont data center to use for 3 weeks during the move host #
32 (KL) or 24 (KI, if they swap processors on us).

...more later...
/Carl
Received: from F29.Tymnet by X930.Tymnet; Tue, 11 Aug 87 14:34:03 PDT
Received: from EMSTXS.Ontyme.Tymnet by F29.Tymnet; Tue, 11 Aug 87 14:25:02 PDT
From: TYMOPS.N/NILES@EMSTXS.Ontyme.Tymnet 
Date: 11 AUG 87 21:50:27 
To: TXS.SUP@EMSTXS.Ontyme.Tymnet 
Message-id: M11586@Ontyme.Tymnet 
Subject: FURNITURE TAGGING 
Resent-from: Tymcom-X Supervisor <TXSSUP@X930.Tymnet> 
Resent-date: Fri, 14 Aug 87 12:55:09 PDT 
Resent-to: Carl A Baltrunas <carl@X930.Tymnet>, Osman Guven
	<osman@X930.Tymnet>, Joe Smith <jms@X930.Tymnet> 
Resent-cc: Craig Fletcher <fletcherc@X930.Tymnet>, DenCoff 

     TO:       SOUTH BAY CONSOLIDATION EMPLOYEES

     FROM:     GINA ZWAAGSTRA

     DATE:     AUGUST 11, 1987

     SUBJECT:  FURNITURE TAGGING
     =================================================================

     STARTING AUGUST 11, 1986 THERE WILL BE 4 TEAMS OF 2 PEOPLE COMING
     AROUND TO TAG EXISTING FURNITURE.  BEFORE EACH OF THE NEXT MOVES.

     PLEASE DO NOT REMOVE THE TAGS FROM THE FURNITURE AS THIS WILL
     CAUSE GREAT CONFUSION AND A SHORTAGE FOR THE MOVES.

     THANK YOU FOR YOUR PATIENCE AND COOPERATION!!!
From: Joe Smith <JMS@X930> 
Date: Sat, 15 Aug 87 10:40:04 PDT 
To: Monitor Group <JMS>, Carl, Osman 
Cc: FletcherC, DenCoff 
Subject: Test of Hotline 

At 10:20am Saturday my beeper went off, the number it displayed was
800 854-6000.  No system number this time.  I called it, and was given
three of the "please hold on" recordings before it was answered.  I gave
my name, stated that I was responding to TYMCOM-X Support.  She was expecting
Osman, and "DEC System Support".  She also asked for my employee number,
meaning the 4-digit FSC payroll number, not the 6-digit ISG number.  They
had Osman on call until 5:30pm Monday instead of me.  It looks like we need
to have a more formal schedule, instead of just a sheet of paper on my wall.

I called Emile at the Fremont Data Center at 10:23am.  End of call.
				/Joe

From: JMS@X930.Tymnet 
Date: Sun, 16 Aug 87 16:07:08 PDT 
To: CARL 
Subject: "In case you missed the article"... 

In case you missed the article on MAC software:
Q: I us a Macintosh system and would like to get some public domain and user-
   supported software.  Can yo suggest where I might turn?
A: One good local user group that has a selection of public domain and user-
   supported software is the Berkely Macintosh Users Groupt (BMUG) at
   1442A Walnut St. Suite 62, Berkeley, CA 94709.
   Each disk of software costs $3.
Received: from B39.Tymnet by X930.Tymnet; Mon, 17 Aug 87 8:46:24 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Mon, 17 Aug 87 8:37:07 PDT 
To: WRS@C39.Tymnet 
Cc: CARL@X930 
Subject: "Confirming thurs, 9/3 meeting"... 

Confirming thurs, 9/3 meeting with you,Carl and Doug E. However, can we
make it @ 1:30????(have Dr.'s App'mt
NOTE - just for you - no caps!!!!!!!!
???was it to be inyour bldg, in a conference room????
From: JMS@X930.Tymnet 
Date: Mon, 17 Aug 87 11:29:00 PDT 
To: carl, dencoff 
Subject: "I sent a compaint to SUBMIT. If"... 

I sent a compaint to SUBMIT.  If you read between the lines, it is asking for
timestamping in the log file.  /Joe
Received: from B39.Tymnet by X930.Tymnet; Mon, 17 Aug 87 11:37:01 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Mon, 17 Aug 87 11:14:51 PDT 
To: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Cc: CARL@X930 
Subject: Re: "Confirming thurs, 9/3 meeting"... 
In-reply-to: your message of Mon, 17 Aug 87 8:37:07 PDT

OK for 1:30 Thursday.  I'll get a conference room.  -Bill
Received: from B39.Tymnet by X930.Tymnet; Mon, 17 Aug 87 11:37:22 PDT
Return-path: <BARTLETW@C39.Tymnet> 
From: Wayne D. Bartlett <BARTLETW@C39.Tymnet> 
Date: Mon, 17 Aug 87 11:09:05 PDT 
To: CARL@X930 
Cc: WRS@C39.Tymnet 
Subject: "My edit comments on your setop"... 

My edit comments on your setop memo follow(I'll use you no. scheme for ref):
Employee record -  6th line - replace"may also be found" by "can be listed
(and thus may be found)"
Security mail address - still think it should say "Mailing address  (tums
preferred, or Ontyme, or Other)
Oper name record - as definition of "license" - "current active licenses
for this name"
Still an open action item for me - to check to see if all"isg no.s" are
infact "employee no.s" - If so, you will change appropriate text accordingly.
Another action item for me - To establish validity critiera for input items.
   Some answers to your list of questions:
1)any manager see below him(her) and any person can see one person's 
records (but by opername signon)
2)similar ans, except the "change anything part" will need much more
thought - in general NO - I envision some kind of "change privelege
table, with each opername being assiged a 'level' of privelege"
Only a very SMALL no. of people to have "all priveleges".
     ______________________________________________________________
We will still need to modify PEAK, even with the latest thoughts on
NAD,amI right??? If so, please contact KEN DAWSON.
From: JMS@X930.Tymnet 
Date: Mon, 17 Aug 87 15:23:42 PDT 
To: carl 
Subject: "is RDIST output comparing 930"... 

(CARL)CARL.RDS is RDIST output comparing 930 with 95.
From: Joe Smith <JMS@X930> 
Date: Mon, 17 Aug 87 19:37:37 PDT 
To: wrs 
Cc: Monitor Group <JMS>, Carl, Osman, FletcherC, DenCoff 
Subject: FINDIT modified to not list TMP files. 

So as to not confuse RDIST with garbage names from deleted files, FINDIT
no longer reports files with an extension of ".TMP" or files with bit 8 set in
.RBLIC (the TMP file bit).  Column 60 of the output is blank for normal files,
is a dollar sign for JIS-8 Katakana files.  (SPL)FINDIT.DOC has been updated.
		/Joe
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Mon, 17 Aug 87 21:28:39 PDT 
To: Joe Smith <JMS@X930> 
Cc: Monitor Group <JMS>, Osman, FletcherC, DenCoff 
Subject: Re: Test of Hotline 
In-reply-to: your message of Sat, 15 Aug 87 10:40:04 PDT

re: formal schedule

Obviously, our switching around seems to be the culprit, however... our
switching around didn't affect your being on-call this week.  The order of
record is "carl-osman-joe" and carl/osman swapped so they should have had
Joe on call this past week.

I believe that Craig mentioned that he thought Osman was on-call, and it
seems that is what he told dispatch?  Only guessing of course.  In any case
it shouldn't matter to dispatch, who is on-call as long as they page the
group pager number.  I am against having to notify dispatch if we change
the order amongst ourselves.... we notify Craig, and if dispatch cannot get
someone on the beeper, they will call Craig anyway.


We should bring it up as a discussion item in the meeting wednesday.

/Carl
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Mon, 17 Aug 87 21:34:25 PDT 
To: Joe Smith <JMS@X930.Tymnet> 
Subject: Busy weekend 

It appears that you've been productive over the weekend.  Can you fit the
changes to TELECO in next weekend?

/Carl
<@û