#ifdef QT_QML_DEBUG
#include <QtQuick>
#endif

#include <sailfishapp.h>
#include "origamiitem.h"
#include "loadorigamies.h"

int main(int argc, char *argv[])
{
    // Создание объекта приложения
    QScopedPointer<QGuiApplication> application(SailfishApp::application(argc, argv));
    // Создание объекта для отображения интерфейса
    QScopedPointer<QQuickView> view(SailfishApp::createView());
    QQmlContext *ctxt = view->rootContext();

    QList<QObject*> origamiList = loadOrigamies();
    // load origami list to view
    ctxt->setContextProperty("origamiListModel", QVariant::fromValue(origamiList));

    // start UI
    view->setSource(SailfishApp::pathTo("qml/origamizoo.qml"));
    view->show();

    return application->exec();
}
