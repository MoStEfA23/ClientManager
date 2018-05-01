QT += qml quick

TEMPLATE = app

CONFIG += c++14

INCLUDEPATH += src \
    ../cm-lib/src

include(../qmake-target-platform.pri)
include(../qmake-destination-path.pri)

SOURCES += src/main.cpp

RESOURCES += views.qrc \
    assets.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH = $$PWD


LIBS += -L$$PWD/../binaries/$$DESTINATION_PATH -lcm-lib
