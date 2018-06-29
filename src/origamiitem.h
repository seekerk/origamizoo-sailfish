#ifndef ORIGAMIITEM_H
#define ORIGAMIITEM_H

#include <QObject>
#include <sailfishapp.h>

class OrigamiItem : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(QString logo READ logo NOTIFY logoChanged)
    Q_PROPERTY(int complexity READ complexity WRITE setComplexity NOTIFY complexityChanged)
    Q_PROPERTY(int steps READ steps WRITE setSteps NOTIFY stepsChanged)
    Q_PROPERTY(QString folder READ folder WRITE setFolder NOTIFY folderChanged)

public:
    explicit OrigamiItem(QString name, QObject *parent = nullptr);

    QString name() { return _name; }
    void setName(QString name) { _name = name; emit nameChanged(); }

    QString logo() {return SailfishApp::pathTo(QString("content/figures/") + _folder + QString("/logo.png")).toLocalFile(); }

    int complexity() {return _complexity; }
    void setComplexity(int complexity) {_complexity = complexity; emit complexityChanged(); }

    int steps() {return _steps; }
    void setSteps(int steps) {_steps = steps; emit stepsChanged(); }

    QString folder() {return _folder; }
    void setFolder(QString folder) {_folder = folder; }

signals:
    void nameChanged();
    void logoChanged();
    void complexityChanged();
    void stepsChanged();
    void folderChanged();

public slots:

private:
    QString _name; // origami name
    QString _folder; // path to origami images folder
    int _complexity; // origami complexity
    int _steps; // origami steps count
};

#endif // ORIGAMIITEM_H
