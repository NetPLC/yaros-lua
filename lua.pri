INCLUDEPATH += $$PWD
DEPENDPATH += $$PWD

win32 {
    QMAKE_TARGET_PRODUCT = Lua
    QMAKE_TARGET_COMPANY = Lua.org
    QMAKE_TARGET_DESCRIPTION = Lua 5.3.4
    QMAKE_TARGET_COPYRIGHT = Copyright © 1994–2017 Lua.org, PUC-Rio.
}

unix {
    LIBS += -ldl -lreadline
}

INCLUDEPATH += \
    $$PWD/src

HEADERS += \ 
    $$PWD/src/lua.h \
    $$PWD/src/luaconf.h

# core lua
SOURCES += \
	$$PWD/src/lapi.c \ 
	$$PWD/src/lcode.c \ 
	$$PWD/src/lctype.c \ 
	$$PWD/src/ldebug.c \ 
	$$PWD/src/ldo.c \ 
	$$PWD/src/ldump.c \ 
	$$PWD/src/lfunc.c \ 
	$$PWD/src/lgc.c \ 
	$$PWD/src/llex.c \ 
	$$PWD/src/lmem.c \ 
	$$PWD/src/lobject.c \ 
	$$PWD/src/lopcodes.c \ 
	$$PWD/src/lparser.c \ 
	$$PWD/src/lstate.c \ 
	$$PWD/src/lstring.c \ 
	$$PWD/src/ltable.c \ 
	$$PWD/src/ltm.c \ 
	$$PWD/src/lundump.c \ 
	$$PWD/src/lvm.c \ 
	$$PWD/src/lzio.c \

# lib lua
SOURCES += \
	$$PWD/src/lauxlib.c \
	$$PWD/src/lbaselib.c \
	$$PWD/src/lbitlib.c \
	$$PWD/src/lcorolib.c \
	$$PWD/src/ldblib.c \
	$$PWD/src/liolib.c \
	$$PWD/src/lmathlib.c \
	$$PWD/src/loslib.c \
	$$PWD/src/lstrlib.c \
	$$PWD/src/ltablib.c \
	$$PWD/src/lutf8lib.c \
	$$PWD/src/loadlib.c \
	$$PWD/src/linit.c \
