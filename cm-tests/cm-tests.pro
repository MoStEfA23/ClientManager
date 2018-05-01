QT += testlib
QT -= gui
TARGET = client-tests
TEMPLATE = app

CONFIG += c++14
CONFIG += console
CONFIG -= app_bundle

INCLUDEPATH += src

include(../qmake-target-platform.pri)
include(../qmake-destination-path.pri)

SOURCES += src/models/tst_clienttests.cpp

LIBS += -L$$PWD/../binaries/$$DESTINATION_PATH -lcm-lib
