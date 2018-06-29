#ifdef QT_QML_DEBUG
#include <QtQuick>
#endif

#include <sailfishapp.h>

#include "loadorigamies.h"
#include "origamiitem.h"

QList<QObject*> loadOrigamies() {
    // create origami list
    // TODO: change to loading from source
    QList<QObject*> origamiList;
    //origamiList.append(new OrigamiItem("Bird"));
    //origamiList.append(new OrigamiItem("Cat"));
    QFile file(":/content/figures.json");
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        throw std::runtime_error(file.errorString().toStdString());
    }
    QJsonDocument doc = QJsonDocument::fromJson(file.readAll());
    if (doc.isNull() || doc.isEmpty()) {
        throw std::runtime_error("Can't read figuries.json");
    }

    foreach (const QJsonValue & value, doc.array()) {
        QJsonObject obj = value.toObject();
        OrigamiItem *item = new OrigamiItem(obj["name"].toString());
        item->setComplexity(obj["level"].toString().toInt());
        item->setFolder(obj["folder"].toString());
        item->setSteps(obj["steps"].toString().toInt());
        origamiList.append(item);
    }
    return origamiList;
}
