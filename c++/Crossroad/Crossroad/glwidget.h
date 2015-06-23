#ifndef GLWIDGET_H
#define GLWIDGET_H

#include <QGLWidget>
#include <GL/glu.h>

class GLWidget : public QGLWidget
{
    Q_OBJECT
public:
    explicit GLWidget(QWidget *parent = 0);
    
    void initializeGL();
    void paintGL();
    void resizeGL(int w, int h);

    void drawScene();
public:
    int sceneW;
    int sceneH;
};

#endif // GLWIDGET_H
