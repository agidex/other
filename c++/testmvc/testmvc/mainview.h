#ifndef MAINVIEW_H
#define MAINVIEW_H

#include <QMainWindow>

namespace Ui {
class MainView;
}

class MainView : public QMainWindow
{
    Q_OBJECT
    
public:
    explicit MainView(QWidget *parent = 0);
    ~MainView();

public slots:
    virtual void buton1handler() {};
    virtual void buton2handler() {};
    
private:
    Ui::MainView *ui;

protected:
    void setProgress(int progress);
    void setMin(int value);
    void setMax(int value);
};

#endif // MAINVIEW_H
