QT -= gui
TARGET = cm-lib
TEMPLATE = lib
CONFIG += c++14
DEFINES += CMLIB_LIBRARY
INCLUDEPATH += src

include(../qmake-target-platform.pri)
include(../qmake-destination-path.pri)

SOURCES += src/models/client.cpp \
    src/controllers/mastercontroller.cpp

HEADERS += src/cm-lib_global.h \
    src/models/client.h \
    src/controllers/mastercontroller.h \
    src/controllers/navigationcontroller.h


DESTDIR = $$PWD/../binaries/$$DESTINATION_PATH
OBJECTS_DIR = $$PWD/build/$$DESTINATION_PATH/.obj
MOC_DIR = $$PWD/build/$$DESTINATION_PATH/.moc
RCC_DIR = $$PWD/build/$$DESTINATION_PATH/.qrc
UI_DIR = $$PWD/build/$$DESTINATION_PATH/.ui
