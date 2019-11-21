#include <QtGui/QGuiApplication>

#include <QQmlContext>
#include <QScreen>
#include <QDebug>
#include <QCommandLineParser>
#include <QTranslator>
#include <QTextCodec>
#include <QFontDatabase>

// our own includes
#include "qtquick2applicationviewer/qtquick2applicationviewer.h"

static const QString AppDesc = "Snooker Scoreboard";

int
main(int argc,
     char *argv[])
{
    // setup the command line parser
    QCommandLineParser parser;

    QGuiApplication::setApplicationName("Scoreboard");
    QGuiApplication::setApplicationVersion("1.0");

    parser.setApplicationDescription(AppDesc);
    parser.addHelpOption();
    parser.addVersionOption();

    QCommandLineOption showFullscreenOption("full", QCoreApplication::translate("main",
                                                                                "Show simulation in full screen."));
    parser.addOption(showFullscreenOption);


    QGuiApplication app(argc, argv);
    parser.process(app);


    const bool full_screen(parser.isSet(showFullscreenOption));

    // perform enumeration
    QFontDatabase qfd;

    if (qfd.hasFamily("ArialUniSC.ttf"))
    {
        qDebug() << "there";
    }
    else
    {
        qDebug() << "not there";
    }

    QScreen *screen(app.primaryScreen());

    QtQuick2ApplicationViewer viewer;


    /*************************************************/

    viewer.setMainQmlFile(QStringLiteral("qml/main.qml"));

    if (true == full_screen)
    {
        viewer.showFullScreen();
    }
    else
    {
        viewer.showNormal();
    }

    return app.exec();
}
