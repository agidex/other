#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    model = new TableModel(&this->list);
    ui->tableView->setModel(model);

    connect(ui->addButton, SIGNAL(clicked(bool)), this, SLOT(addButtonHandler()));
    connect(ui->delButton, SIGNAL(clicked(bool)), this, SLOT(delButtonHandler()));
    connect(ui->clearButton, SIGNAL(clicked(bool)), this, SLOT(clearButtonHandler()));
}

MainWindow::~MainWindow()
{
    delete model;
    delete ui;
}

void MainWindow::addButtonHandler()
{
    list << "fuck it";
    cout << list.size() << endl;
    model->update();
}

void MainWindow::delButtonHandler()
{
    if (list.size() > 0) {
        list.erase(list.end()-1, list.end());
    }
    cout << list.size() << endl;
    model->update();
}

void MainWindow::clearButtonHandler()
{
    list.clear();
    cout << list.size() << endl;
    model->update();
}
