#include <QtGui/QApplication>
//#include "mainview.h"
#include "maincontroller.h"

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainController w;
    w.show();
    
    return a.exec();
}
