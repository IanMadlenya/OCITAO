# Microsoft Developer Studio Project File - Name="Quoter_LifeCycle_Service" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 5.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=Quoter_LifeCycle_Service - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Quoter_LifeCycle_Service.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Quoter_LifeCycle_Service.mak"\
 CFG="Quoter_LifeCycle_Service - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Quoter_LifeCycle_Service - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "Quoter_LifeCycle_Service - Win32 Debug" (based on\
 "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Quoter_LifeCycle_Service - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386

!ELSEIF  "$(CFG)" == "Quoter_LifeCycle_Service - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Quoter_L"
# PROP BASE Intermediate_Dir "Quoter_L"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Quoter_L"
# PROP Intermediate_Dir "Quoter_L"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /W3 /Gm /GX /Zi /Od /I "..\..\..\\" /I "..\..\\" /I "..\..\orbsvcs" /I "..\..\orbsvcs\orbsvcs" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 aced.lib tao.lib orbsvcs.lib /nologo /subsystem:console /debug /machine:I386 /out:"Quoter_LifeCycle_Service.exe" /pdbtype:sept /libpath:"..\..\..\ace" /libpath:"..\..\tao" /libpath:"..\..\orbsvcs\orbsvcs"

!ENDIF 

# Begin Target

# Name "Quoter_LifeCycle_Service - Win32 Release"
# Name "Quoter_LifeCycle_Service - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Criteria_Evaluator.cpp
# End Source File
# Begin Source File

SOURCE=.\Factory_Trader.cpp
# End Source File
# Begin Source File

SOURCE=.\Life_Cycle_Service.cpp
# End Source File
# Begin Source File

SOURCE=.\Life_Cycle_Service_Impl.cpp
# End Source File
# Begin Source File

SOURCE=.\QuoterC.cpp
# End Source File
# Begin Source File

SOURCE=.\QuoterS.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Criteria_Evaluator.h
# End Source File
# Begin Source File

SOURCE=.\Factory_Trader.h
# End Source File
# Begin Source File

SOURCE=.\Life_Cycle_Service.h
# End Source File
# Begin Source File

SOURCE=.\Life_Cycle_Service_Impl.h
# End Source File
# Begin Source File

SOURCE=.\Quoter_Impl.h
# End Source File
# Begin Source File

SOURCE=.\QuoterC.h
# End Source File
# Begin Source File

SOURCE=.\QuoterS.h
# End Source File
# Begin Source File

SOURCE=.\server.h
# End Source File
# End Group
# Begin Group "Inline Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\QuoterC.i
# End Source File
# Begin Source File

SOURCE=.\QuoterS.i
# End Source File
# End Group
# Begin Group "IDL Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Quoter.idl

!IF  "$(CFG)" == "Quoter_LifeCycle_Service - Win32 Release"

!ELSEIF  "$(CFG)" == "Quoter_LifeCycle_Service - Win32 Debug"

# Begin Custom Build - Invoking TAO_IDL compiler
InputPath=.\Quoter.idl
InputName=Quoter

BuildCmds= \
	..\..\tao_idl\tao_idl $(InputName).idl -I../../orbsvcs/orbsvcs

"$(InputName)C.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(InputName)C.i" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(InputName)C.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(InputName)S.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(InputName)S.i" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(InputName)S.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# End Group
# End Target
# End Project
