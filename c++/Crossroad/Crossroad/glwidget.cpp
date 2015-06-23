#include "glwidget.h"

#include <iostream>

GLWidget::GLWidget(QWidget *parent) :
    QGLWidget(parent)
{
    sceneW = 300;
    sceneH = 200;
}

void GLWidget::initializeGL()
{
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
}

void GLWidget::paintGL()
{
    glLoadIdentity();

//    drawScene();
    glRectf


    swapBuffers();
}

void GLWidget::resizeGL(int w, int h)
{
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
//    gluPerspective(120.0, (GLdouble)w/(GLdouble)h, 0, 1000.0);
    glViewport(0, 0, (GLint)sceneW, (GLint)sceneH);
//    GLint vport[4];
//    glGetIntegerv(GL_VIEWPORT, vport);
}

void GLWidget::drawScene()
{
    int h = 50;
    int w = 20;

    int x = 40;
    int y = 70;

    glClear(GL_COLOR_BUFFER_BIT);

    glBegin(GL_LINE_STRIP);
        glColor3f(1, 0, 0);        
        glVertex3f(0.5, 0, 0);
        glVertex3f(0, 1, 0);
        glVertex3f(-1, -1, 0);
    glEnd();
}
