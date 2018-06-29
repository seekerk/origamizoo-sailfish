#ifndef ORIGAMIITEM_H
#define ORIGAMIITEM_H

#include <QObject>

class OrigamiItem : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(QString logo READ logo NOTIFY logoChanged)
    Q_PROPERTY(int complexity READ complexity WRITE setComplexity NOTIFY complexityChanged)

public:
    explicit OrigamiItem(QString name, QObject *parent = nullptr);

    QString name() { return _name; }
    void setName(QString name) { _name = name; emit nameChanged(); }

    QString logo() {return QString("content/figures/" + _folder + QString("/logo.png")); }

    int complexity() {return _complexity; }
    void setComplexity(int complexity) {_complexity = complexity; emit complexityChanged(); }

    void setFolder(QString folder) {_folder = folder; }

signals:
    void nameChanged();
    void logoChanged();
    void complexityChanged();

public slots:

private:
    QString _name; // origami name
    QString _folder; // path to origami images folder
    int _complexity; // origami complexity
};

#endif // ORIGAMIITEM_H
