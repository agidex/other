#-------------------------------------------------
#
# Project created by QtCreator 2013-06-12T22:37:43
#
#-------------------------------------------------

QT       += core gui opengl

TARGET = Crossroad
TEMPLATE = app

SOURCES += main.cpp\
        mainwindow.cpp \
    glwidget.cpp \
    path.cpp \
    item.cpp \
    car.cpp \
    trafficlight.cpp \
    pointcoord.cpp

HEADERS  += mainwindow.h \
    glwidget.h \
    path.h \
    item.h \
    car.h \
    trafficlight.h \
    crossroad.h \
    pointcoord.h

LIBS += -L/usr/local/lib -lGLU

FORMS    += mainwindow.ui
