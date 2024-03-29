# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH = ../plugin1

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp \
    canvas.cpp

RESOURCES += qml.qrc

# Installation path
# target.path =

# Please do not modify the following two lines. Required for deployment.
include(qtquick1applicationviewer/qtquick1applicationviewer.pri)

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    canvas.h \
    line.h
