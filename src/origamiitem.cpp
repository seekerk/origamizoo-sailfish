#include "origamiitem.h"

OrigamiItem::OrigamiItem(QString name, QObject *parent) : QObject(parent)
{
    this->_name = name;
}
