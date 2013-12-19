SHELL = cmd.exe

#
# ZDS II Make File - ltx-rapidfire project, Debug configuration
#
# Generated by: ZDS II - Z8 Encore! Family 5.0.0 (Build 11011703)
#   IDE component: d:5.0:11011302
#   Install Path: C:\Program Files (x86)\ZiLOG\ZDSII_Z8Encore!_5.0.0\
#

RM = del

ZDS = C:\PROGRA~2\ZiLOG\ZDSII_~1.0
BIN = $(ZDS)\bin
# ZDS include base directory
INCLUDE = C:\PROGRA~2\ZiLOG\ZDSII_~1.0\include
# intermediate files directory
WORKDIR = C:\Users\Izzy\Desktop\git\ltx-rapidfire\Debug

CC = @$(BIN)\eZ8cc
AS = @$(BIN)\eZ8asm
LD = @$(BIN)\eZ8link
AR = @$(BIN)\eZ8lib

CFLAGS =  \
-bfpack:tight -fastcall -const:RAM -define:_Z8F0423XB  \
-define:_Z8ENCORE_XP_F0823_8PIN_SERIES -genprintf -NOkeepasm  \
-keeplst -NOlist -NOlistinc -model:L -NOoptlink -promote  \
-regvar:8 -reduceopt  \
-stdinc:"..;C:\PROGRA~2\ZiLOG\ZDSII_~1.0\include\std;C:\PROGRA~2\ZiLOG\ZDSII_~1.0\include\zilog"  \
-usrinc:"..;" -debug -NOrevaa -cpu:Z8F0423XB  \
-asmsw:"   \
	-define:_Z8F0423XB=1 -define:_Z8ENCORE_XP_F0823_8PIN_SERIES=1  \
	-include:"..;C:\PROGRA~2\ZiLOG\ZDSII_~1.0\include\std;C:\PROGRA~2\ZiLOG\ZDSII_~1.0\include\zilog"  \
	-list -NOlistmac -pagelen:56 -pagewidth:80 -quiet -sdiopt -warn  \
	-debug -NOigcase -NOrevaa -cpu:Z8F0423XB"

ASFLAGS =  \
-define:_Z8F0423XB=1 -define:_Z8ENCORE_XP_F0823_8PIN_SERIES=1  \
-include:"..;C:\PROGRA~2\ZiLOG\ZDSII_~1.0\include\std;C:\PROGRA~2\ZiLOG\ZDSII_~1.0\include\zilog"  \
-list -NOlistmac -name -pagelen:56 -pagewidth:80 -quiet -sdiopt  \
-warn -debug -NOigcase -NOrevaa -cpu:Z8F0423XB

LDFLAGS = @.\ltx-rapidfire_Debug.linkcmd
OUTDIR = C:\Users\Izzy\Desktop\git\ltx-rapidfire\Debug

build: ltx-rapidfire

buildall: clean ltx-rapidfire

relink: deltarget ltx-rapidfire

deltarget: 
	@if exist $(WORKDIR)\ltx-rapidfire.lod  \
            $(RM) $(WORKDIR)\ltx-rapidfire.lod
	@if exist $(WORKDIR)\ltx-rapidfire.hex  \
            $(RM) $(WORKDIR)\ltx-rapidfire.hex
	@if exist $(WORKDIR)\ltx-rapidfire.map  \
            $(RM) $(WORKDIR)\ltx-rapidfire.map

clean: 
	@if exist $(WORKDIR)\ltx-rapidfire.lod  \
            $(RM) $(WORKDIR)\ltx-rapidfire.lod
	@if exist $(WORKDIR)\ltx-rapidfire.hex  \
            $(RM) $(WORKDIR)\ltx-rapidfire.hex
	@if exist $(WORKDIR)\ltx-rapidfire.map  \
            $(RM) $(WORKDIR)\ltx-rapidfire.map
	@if exist $(WORKDIR)\main.obj  \
            $(RM) $(WORKDIR)\main.obj

# pre-4.11.0 compatibility
rebuildall: buildall 

LIBS = 

OBJS =  \
            $(WORKDIR)\main.obj

ltx-rapidfire: $(OBJS)
	 $(LD) $(LDFLAGS)

$(WORKDIR)\main.obj :  \
            C:\Users\Izzy\Desktop\git\LTX-RA~1\main.c  \
            $(INCLUDE)\zilog\defines.h  \
            $(INCLUDE)\zilog\dmadefs.h  \
            $(INCLUDE)\zilog\gpio.h  \
            $(INCLUDE)\zilog\uart.h  \
            $(INCLUDE)\zilog\uartdefs.h  \
            $(INCLUDE)\zilog\ez8.h  \
            C:\Users\Izzy\Desktop\git\ltx-rapidfire\config.h  \
            C:\Users\Izzy\Desktop\git\ltx-rapidfire\main.h
	 $(CC) $(CFLAGS) C:\Users\Izzy\Desktop\git\LTX-RA~1\main.c

