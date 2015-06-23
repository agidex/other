import math

def distance(point1,point2):
    radius = 6372795

    rlat1 = point1['lat'] * math.pi/180
    rlong1 = point1['long'] * math.pi/180

    rlat2 = point2['lat'] * math.pi/180
    rlong2 = point2['long'] * math.pi/180

    cl1 = math.cos(rlat1)
    cl2 = math.cos(rlat2)
    sl1 = math.cos(rlat1)
    sl2 = math.cos(rlat2)
    delta = rlong2 - rlong1
    cdelta = math.cos(delta)
    sdelta = math.sin(delta)
    
    y = math.sqrt(math.pow(cl2 * sdelta,2) + math.pow(cl1 * sl2 - sl1 * cl2 * cdelta,2))
    x = sl1 * sl2 + cl1 * cl2 * cdelta

    ad = math.atan2(y,x)
    dist = ad * radius

    print(dist)


point1 = {'lat':77.1539,'long':-139.398}
point2 = {'lat':-77.1804,'long':-139.55}

distance(point1,point2)
