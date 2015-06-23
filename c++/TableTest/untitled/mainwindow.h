#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <vector>
#include <string>
#include <iostream>

#include "tablemodel.h"

using namespace std;

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT
    
public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
    
public slots:
    void addButtonHandler();
    void delButtonHandler();
    void clearButtonHandler();

private:
    TableModel* model;
    Ui::MainWindow *ui;
    QList<QString> list;
};

#endif // MAINWINDOW_H
