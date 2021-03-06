#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "controllers/mastercontroller.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    qmlRegisterType<cm::controllers::MasterController>("CM", 1, 0, "MasterController");
    qmlRegisterType<cm::controllers::NavigationController>("CM", 1, 0, "NavigationController");
    QQmlApplicationEngine engine;
    engine.addImportPath("qrc:/");
    cm::controllers::MasterController masterController;
    engine.rootContext()->setContextProperty("masterController", &masterController);
    engine.load(QUrl(QStringLiteral("qrc:/views/MasterView.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
