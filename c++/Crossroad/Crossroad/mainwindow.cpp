#include "mainwindow.h"
#include "ui_mainwindow.h"

#include <iostream>

#include "path.h"
#include "pointcoord.h"

using namespace std;

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    connect(ui->startButton, SIGNAL(clicked()), this, SLOT(startButtonHandler()));
    connect(ui->stopButton, SIGNAL(clicked()), this, SLOT(stopButtonHandler()));
    connect(ui->loadMapButton, SIGNAL(clicked()), this, SLOT(loadMapButtonHandler()));
    connect(ui->mapEditorButton, SIGNAL(clicked()), this, SLOT(mapEditorButtonHandler()));
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::startButtonHandler()
{
    cout << "LOLCODE" << endl;

    Path path;
    PointCoord point(0, 0);
    path.addPoint(point);
    point.setCoord(14, 14);
    path.addPoint(point);
    point.setCoord(28, 0);
    path.addPoint(point);
    path.printPoints();

    cout << path.getLength() << endl;
    cout << sizeof(PointCoord) << endl;

//    int c[2];
    point = path.normalize(0.25);
    cout << point.x << "\t" << point.y << endl;
}

void MainWindow::stopButtonHandler()
{
    //    lol
}

void MainWindow::loadMapButtonHandler()
{
}

void MainWindow::mapEditorButtonHandler()
{
}



















