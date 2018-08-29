TARGET = lua
TEMPLATE = lib
CONFIG += staticlib

OBJECTS_DIR = $${_PRO_FILE_PWD_}/build/obj
DESTDIR = $${_PRO_FILE_PWD_}/build/bin

QT -= core gui

# DEFINES += 
QMAKE_TARGET_COMPANY = "autobio"
QMAKE_TARGET_COPYRIGHT = "autobio"
QMAKE_TARGET_DESCRIPTION = "lua"

include(lua.pri)





