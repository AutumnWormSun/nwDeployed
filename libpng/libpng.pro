CONFIG -= qt

TEMPLATE = lib

TARGET = libpng

CONFIG += shared
win32:DEF_FILE = symbols.def

include($${PWD}/../nwDeployed.pri)


HEADERS +=  \
    png.h \
    pngconf.h \
    pngdebug.h \
    pnginfo.h \
    pnglibconf.h \
    pngpriv.h \
    pngstruct.h


SOURCES += \
     png.c \
     pngerror.c \
     pngget.c \
     pngmem.c \
     pngpread.c \
     pngread.c \
     pngrio.c \
     pngrtran.c \
     pngrutil.c \
     pngset.c \
     pngtrans.c \
     pngwio.c \
     pngwrite.c \
     pngwtran.c \
     pngwutil.c \


INCLUDEPATH += ../zlib/include

#win32:msvc* {
#   LIBS += -lzlib
#} else {
   LIBS += -lz
#}
