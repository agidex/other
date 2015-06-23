#include "path.h"

#include <cmath>

#include <iostream>

Path::Path()
{
    length = 0;
}

void Path::addPoint(const PointCoord pointToAdd)
{
    if (pathPoints.size() != 0) {
        PointCoord lastPoint = *(pathPoints.end() - 1);
        posf_t betweenDistance = distance(lastPoint, pointToAdd);

        pathSegments.push_back(betweenDistance);
        length += betweenDistance;
    }

    pathPoints.push_back(pointToAdd);
}

void Path::printPoints()
{
    std::vector<PointCoord>::iterator it;
    for(it = pathPoints.begin(); it != pathPoints.end();it++) {
        std::cout << (*it).x << "\t" << (*it).y << std::endl;
    }
}

float Path::getLength()
{
    return length;
}

PointCoord Path::normalize(const posf_t ratio)
{
    PointCoord point;
    if (ratio == 0.0) {
        point = *(pathPoints.begin());
        return point;
    }
    else if (ratio == 1.0) {
        point = *(pathPoints.end() - 1);
        return point;
    }
    else {
        posf_t dist = ratio * getLength();

        std::vector<posf_t>::iterator it;
        for(it = pathSegments.begin();it != pathSegments.end();it++) {
            posf_t currSegment = *(it);
            if (currSegment > dist) {
                posf_t lambda = dist / (currSegment - dist);

                PointCoord pointA, pointB;
                pointA = pathPoints.at(it - pathSegments.begin());
                pointB = pathPoints.at(it - pathSegments.begin() + 1);

                pos_t x = (pos_t)((pointA.x + lambda * pointB.x)/(1 + lambda));
                pos_t y = (pos_t)((pointA.y + lambda * pointB.y)/(1 + lambda));

                point.x = x;
                point.y = y;
                return point;
            }
            else if (currSegment == dist) {
                point = pathPoints.at(it - pathSegments.begin() + 1);
                return point;
            }
            else {
                dist -= currSegment;
            }
        }
    }
}

posf_t Path::distance(const PointCoord pointA, const PointCoord pointB)
{
    return sqrt(pow(pointB.x - pointA.x, 2) + pow(pointB.y - pointA.y, 2));
}
