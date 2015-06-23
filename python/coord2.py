import math

def deg2dec(deg,minutes,sec):
    dec = deg + minutes/60 + sec / 3600
    return dec
    

def distance(llat1,llong1,llat2,llong2):
    radius = 6372795

    lat1 = llat1 * math.pi / 180
    lat2 = llat2 * math.pi / 180
    long1 = llong1 * math.pi / 180
    long2 = llong2 * math.pi / 180

    cl1 = math.cos(lat1)
    cl2 = math.cos(lat2)
    sl1 = math.sin(lat1)
    sl2 = math.sin(lat2)
    delta = long2 - long1
    cdelta = math.cos(delta)
    sdelta = math.sin(delta)
    
    y = math.sqrt(math.pow(cl2 * sdelta,2) + math.pow(cl1 * sl2 - sl1 * cl2 * cdelta,2))
    x = sl1 * sl2 + cl1 * cl2 * cdelta

    ad = math.atan2(y,x)
    dist = ad * radius

    print(dist)


point1 = {'lat':77.1539,'long':-139.398}
point2 = {'lat':-77.1804,'long':-139.55}

distance(77.1539,-120.398,77.1804,129.55)
#distance(77.1539,-139.398,-77.1804,-139.55)
#distance(77.1539,120.398,77.1804,129.55)
#distance(77.1539,-120.398,77.1804,129.55)

print(deg2dec(50,44,7964))
