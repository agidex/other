#include "pointcoord.h"

PointCoord::PointCoord()
{
}

PointCoord::PointCoord(const pos_t x_, const pos_t y_)
{
    setCoord(x_, y_);
}

void PointCoord::setCoord(const pos_t x_, const pos_t y_)
{
    this->x = x_;
    this->y = y_;
}

PointCoord::~PointCoord()
{
}
