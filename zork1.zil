"ZORK1 for
	        Zork I: The Great Underground Empire
	(c) Copyright 1983 Infocom, Inc.  All Rights Reserved."

<SETG ZORK-NUMBER 1>

<GC 0 T 5>

<BLOAT 70000 0 0 2700 0 0 0 0 0 256>

<SET REDEFINE T>

<GLOBAL BIGFIX 10000>

<OR <GASSIGNED? ZILCH>
    <SETG WBREAKS <STRING !\" !,WBREAKS>>>

<DEFINE IFILE (STR "OPTIONAL" (FLOAD? <>) "AUX" (TIM <TIME>))
	<INSERT-FILE .STR .FLOAD?>>

<PRINC "Renovated ZORK I: The Great Underground Empire
">

<OR <GASSIGNED? INSERT-CRUFTY>
    <DEFINE INSERT-CRUFTY (STR) <INSERT-FILE .STR T>>>

<COND (<GASSIGNED? PREDGEN>
       <ID 0>)>

<IFILE "gmacros" T>

<IFILE "gsyntax" T>
<IFILE "1dungeon" T>
<IFILE "gglobals" T>

<PROPDEF SIZE 5>
<PROPDEF CAPACITY 0>
<PROPDEF VALUE 0>
<PROPDEF TVALUE 0>

<IFILE "gclock" T>
<IFILE "gmain" T>
<IFILE "gparser" T>
<IFILE "gverbs" T>
<IFILE "1actions" T>

<GC 0 T>

<DEFINE CNT (STR OBL)
	<PRINC .STR>
	<PRIN1 <MAPF ,+ ,LENGTH .OBL>>
	<CRLF>>

<COND (<NOT <GASSIGNED? PREDGEN>>
       <GC-MON T>)>

