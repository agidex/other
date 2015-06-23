#include "tablemodel.h"

TableModel::TableModel(QList<QString> *lst, QObject *parent) :
    QAbstractTableModel(parent)
{
    this->list = lst;
}

void TableModel::update()
{
    this->reset();
}

int TableModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent)
    return list->size();
}

int TableModel::columnCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent)
    return 1;
}

QVariant TableModel::data(const QModelIndex &index, int role) const
{
    if (role == Qt::DisplayRole) {
        QString str = list->at(index.row());
        return QVariant(str);
    }
    return QVariant();
}

QVariant TableModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    QList<QString> header_data;
    header_data << QString::fromUtf8("Заголовок");
    if (role != Qt::DisplayRole) {
        return QVariant();
    }
    if (orientation == Qt::Horizontal && role == Qt::DisplayRole) {
        return header_data.at(section);
    }
    else {
        return QString("%1").arg(section + 1);
    }
}
