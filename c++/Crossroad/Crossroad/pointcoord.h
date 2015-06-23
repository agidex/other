#ifndef POINTCOORD_H
#define POINTCOORD_H

#include "crossroad.h"

class PointCoord
{
public:
    PointCoord();
    ~PointCoord();
    PointCoord(const pos_t x_, const pos_t y_);
    void setCoord(const pos_t x_, const pos_t y_);

    pos_t x;
    pos_t y;
};

#endif // POINTCOORD_H
