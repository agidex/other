#include "mainview.h"
#include "ui_mainview.h"

MainView::MainView(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainView)
{
    ui->setupUi(this);
    connect(ui->pushButton1, SIGNAL(clicked()), this, SLOT(buton1handler()));
    connect(ui->pushButton2, SIGNAL(clicked()), this, SLOT(buton2handler()));

}

MainView::~MainView()
{
    delete ui;
}

void MainView::setProgress(int progress)
{
    ui->progressBar->setValue(progress);
}

void MainView::setMin(int value)
{
    ui->progressBar->setMinimum(value);
}

void MainView::setMax(int value)
{
    ui->progressBar->setMaximum(value);
}
