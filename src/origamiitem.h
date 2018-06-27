#ifndef ORIGAMIITEM_H
#define ORIGAMIITEM_H

#include <QObject>

class OrigamiItem : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)

public:
    explicit OrigamiItem(QString name, QObject *parent = nullptr);

    QString name() { return _name; }
    void setName(QString name) { _name = name; emit nameChanged(); }

signals:
    void nameChanged();

public slots:

private:
    QString _name;
};

#endif // ORIGAMIITEM_H
