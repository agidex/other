def bin2grey(binary):
    return binary ^ (binary >> 1)


def grey2bin(grey):
    binary = 0
    while(grey):
        binary = binary ^ grey
        grey = grey >> 1
    return binary

print bin2grey(298)
print bin(bin2grey(298))[2:]
print grey2bin(447)
print bin(grey2bin(447))[2:]
