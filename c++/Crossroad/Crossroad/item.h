#ifndef ITEM_H
#define ITEM_H

#include "pointcoord.h"

class Item
{
private:
    bool visible;
    PointCoord coordinates;

public:
    Item();
    ~Item();

    PointCoord getPosition();
    void setPosition(const PointCoord coord);
    void setPosition(const pos_t x, const pos_t y);

    bool isVisible();
    void setVisible(const bool status);
protected:
//    virtual void draw();
};

#endif // ITEM_H
