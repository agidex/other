#ifndef PATH_H
#define PATH_H

#include <vector>
#include "pointcoord.h"

class Path
{
public:
    Path();
    void addPoint(const PointCoord pointToAdd);
    void printPoints();

    float getLength();
    PointCoord normalize(const posf_t ratio);
private:
    std::vector<PointCoord> pathPoints;
    std::vector<float> pathSegments;
    posf_t length;
    posf_t distance(const PointCoord pointA, const PointCoord pointB);
};

#endif // PATH_H
