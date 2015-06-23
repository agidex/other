#ifndef TABLEMODEL_H
#define TABLEMODEL_H

#include <QAbstractTableModel>
#include <vector>
#include <string>

using namespace std;

class TableModel : public QAbstractTableModel
{
    Q_OBJECT
public:
    explicit TableModel(QList<QString> *lst, QObject *parent = 0);
    void update();
    QList<QString> *list;
signals:
    
public slots:

private:
    int rowCount(const QModelIndex &parent) const;
    int columnCount(const QModelIndex &parent) const;
    QVariant data(const QModelIndex &index, int role) const;
    QVariant headerData(int section, Qt::Orientation orientation, int role) const;
};

#endif // TABLEMODEL_H
