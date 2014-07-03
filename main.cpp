#include "qtquick1applicationviewer.h"
#include <QApplication>
#include "canvas.h"
#include "line.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    //qml
    qmlRegisterType<Line>("CustomComponents", 1, 0, "Line");
    qmlRegisterType<Canvas>("trik", 1, 0, "Canvas");

    QDeclarativeView v;
    v.setSource(QString("qrc:///main.qml"));

    v.show();

//    QtQuick1ApplicationViewer viewer;
//    viewer.addImportPath(QLatin1String("modules"));
//    //viewer.addImportPath("../plugin1");
//    viewer.setOrientation(QtQuick1ApplicationViewer::ScreenOrientationAuto);
//    viewer.setMainQmlFile(QLatin1String("qrc:///main.qml"));
//    viewer.showExpanded();

    return app.exec();
}
