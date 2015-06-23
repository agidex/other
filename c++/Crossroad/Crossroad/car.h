#ifndef CAR_H
#define CAR_H

#include "item.h"
#include "path.h"

class Car : public Item
{
public:
    Car();
    void setPath(const Path& path);
    void setSpeed(const pos_t speed);
    void start();
    void stop();
    void draw();
private:
    void move(posf_t position);
    pos_t carSpeed;
    Path carPath;
};

#endif // CAR_H
