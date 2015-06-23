#!/usr/bin/python
# -*- coding: utf-8 -*-

from PIL import Image
import os
import sys

OUT_DIR = 'out/'
PICNAME = 'picture'
PIC_EXT = '.png'

def start():
    split('crasy_rabbit.jpg', 3, 2)

def split(fname, W_count, H_count):
    # absolute file name
    fname = os.path.abspath(fname)
    try:
        img = Image.open(fname)
    except IOError:
        print 'File %s not exists' % fname
        sys.exit(-1)
    # get the file name
    fname = os.path.basename(fname)

    out_dir = os.path.abspath(OUT_DIR)
    if (os.path.exists(os.path.join(out_dir, fname))):
    # directory EXIST, clean it
        pass
    else:
    # directory NOT EXIST, so make it
        os.mkdir(os.path.join(out_dir, fname))

    # width and height of input image
    (width, heigth) = img.size
    print(width, heigth)
    # width and height of pic
    W_pic = width/W_count
    H_pic = heigth/H_count
    region = []
    number = 0
    
    for i in range(H_count):
        for j in range(W_count):
            region = [W_pic*j, H_pic*i, W_pic*(j+1), H_pic*(i+1)]
            number += 1
            print region
            pic = img.crop(region)
            pic_name = PICNAME + '%03d'%number + PIC_EXT
            pic_path = os.path.join(OUT_DIR, fname, pic_name)
            pic.save(pic_path)
            print pic_path

def print_help():
    print('Usage: python crazy_rabbit.py image.jpg, 3, 2')
    print('It split image.jpg into 6 pictures, 3 in width and 2 in heigth')
    
if __name__ == '__main__':
    if (len(sys.argv[1:]) == 3):
        filename = sys.argv[1]
        w_count = int(sys.argv[2])
        h_count = int(sys.argv[3])
        split(filename, w_count, h_count)
    else:
        print_help()
        ##initial1()






























def initial1():
    from PIL import Image, ImageDraw
    size = (9, 8)
    color = (120, 0, 0)
    img = Image.new('RGB', size, color)
    img.save('test.png')

def initial():
    from PIL import Image, ImageDraw
    text = "greengreen"
    size = (100, 50)
    color = (0, 120, 0)
    pos = (10, 20)
    img = Image.new('RGB', size, color)
    imgDrawer = ImageDraw.Draw(img)
    imgDrawer.text(pos, text)
    img.save('00ff0000ff00.png')
