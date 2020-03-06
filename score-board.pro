## QT += quick
## CONFIG += c++11
## CONFIG += debug
##
## # Add more folders to ship with the application, here
## folder_01.source = qml/
## folder_01.target = qml
##
## DEPLOYMENTFOLDERS = folder_01
##
## # The following define makes your compiler emit warnings if you use
## # any feature of Qt which as been marked deprecated (the exact warnings
## # depend on your compiler). Please consult the documentation of the
## # deprecated API in order to know how to port your code away from it.
## DEFINES += QT_DEPRECATED_WARNINGS
##
## # You can also make your code fail to compile if you use deprecated APIs.
## # In order to do so, uncomment the following line.
## # You can also select to disable deprecated APIs only up to a certain version of Qt.
## #DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
##
## SOURCES += src/main.cpp \
##     src/qtquick2applicationviewer/qtquick2applicationviewer.cpp
##
## RESOURCES += qml/qml.qrc
##
## # Additional import path used to resolve QML modules in Qt Creator's code model
## QML_IMPORT_PATH =
##
## # Additional import path used to resolve QML modules just for Qt Quick Designer
## QML_DESIGNER_IMPORT_PATH =
##
## # Default rules for deployment.
## qnx: target.path = /tmp/$${TARGET}/bin
## else: unix:!android: target.path = /opt/$${TARGET}/bin
## !isEmpty(target.path): INSTALLS += target
##
## HEADERS += \
##     src/qtquick2applicationviewer/qtquick2applicationviewer.h
##
## DISTFILES += \
##     qml/main.qml


#CONFIG -= debug_and_release debug
#CONFIG += debug
CONFIG += debug

# Add more folders to ship with the application, here
folder_01.source = qml/
folder_01.target =


DEPLOYMENTFOLDERS = folder_01

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH =

QT += widgets

# If your application uses the Qt Mobility libraries, uncomment the following
# lines and add the respective components to the MOBILITY variable.
# CONFIG += mobility
# MOBILITY +=
win32-msvc*{
    LIBS += advapi32.lib
}

unix:!mac{
    # Hint: For the -std=c++11 flag we need gcc-4.7 or higher!
    QMAKE_CXXFLAGS += -std=c++11
LIBS += -lX11 -lXtst
}

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += src/main.cpp

HEADERS +=

# Installation path
# target.path =

# Please do not modify the following two lines. Required for deployment.
include(src/qtquick2applicationviewer/qtquick2applicationviewer.pri)
qtcAddDeployment()

DISTFILES += \
    qml/Runtime/Runtime.qml \
    qml/Runtime/GameConfig.qml \
    qml/Screens/StandbyScreen.qml \
    qml/Screens/GameScreen.qml \
    qml/Styles/Styles.qml \
    qml/Styles/Colors.qml \
    qml/Styles/Sizes.qml \
    qml/Styles/Fonts.qml \
    qml/Components/RegionBlock.qml \
    qml/Components/Button.qml \
    qml/Components/XRect.qml \
    qml/Types/RCSettings.qml 


