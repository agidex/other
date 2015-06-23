
##makes "1-3,5,7-9" from "1235789"
def fix_row2(old_str):
    old = [int(i) for i in old_str]

    new = [old[0]]

    count = 0
    space_added = 0
    
    i = 1
    for item in old[1:-1]:
        prv = old[i-1]
        nxt = old[i+1]

        if ((item == prv + 1) and (item == nxt - 1)):
            if (count == 0):
                count = count + 1
                new.append('-')
                space_added = 1
        else:
            count = 0
            
            if (space_added == 1):
                new.append(item)
                space_added = 0
            else:
                new.append(',')
                new.append(item)
            
        i = i + 1

    if (space_added == 1):
        new.append(old[-1])
        space_added = 0
    else:
        new.append(',')
        new.append(old[-1])
    
    

    new_str = ''.join(map(str,new))
        
    return new_str

def fix_row(old_str):
    old = [int(i) for i in old_str]
    new = []
    new.append(old[0])

    count = 0

    for i in (1,len(old)-2):
        item = old[i]
        prv = old[i-1]
        nxt = old[i+1]

        if ((item == prv + 1) and (item == nxt - 1)):
            if (count == 0):
                count = count + 1
                new.append('-')
        else:
            if (count > 0):
                new.append(item)
                count = 0
            else:
                new.append(',')
                new.append(item)

    if (count > 0):
        new.append(old[-1])
    else:
        new.append(',')
        new.append(old[-1])
    
    new_str = ''.join(map(str,new))
        
    return new_str

#old_str = '123457';
old_str = '123789';
print(old_str)
new_str = fix_row2(old_str)
print(new_str)

