#include "mainmodel.h"

#include <iostream>

using namespace std;

MainModel::MainModel()
{
    i = 0;
    setMin(0);
    setMax(15);
}

void MainModel::buton1()
{
    setProgress(i++);
    cout << i << endl;
}

void MainModel::buton2()
{
    setProgress(i--);
    cout << i << endl;
}
