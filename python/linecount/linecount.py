#!/usr/bin/env python3

import os


class LinesCount(object):
    total_count = 0

    COMMENT = (
        '#',
        )

    EXT = (
        '.py',
        )

    IGNORE = (
        'linecount.py',
        )

    def __init__(self):
        pass

    def count_file(self, fname):
        file_lines_count = 0
        with open(fname) as f:
            for line in f.readlines():
                line = line.strip()
                if len(line) > 0:
                    if line[0] not in self.COMMENT:
                        file_lines_count += 1
                        
        return file_lines_count

    def count_dir(self, dir_):
        for item in os.listdir(dir_):
            item_fullpath = os.path.join(dir_, item)
            if os.path.isdir(item_fullpath):
                self.count_dir(item_fullpath)
            if os.path.isfile:
                filename = os.path.basename(item_fullpath)
                if filename not in self.IGNORE:
                    for ext in self.EXT:
                        if filename.endswith(ext):
                            lines = self.count_file(item_fullpath)
                            print('%s : %s'%(filename, lines))
                            self.total_count += lines


    def count(self, start_dir):
        self.count_dir(start_dir)
        print('='*25)
        print('TOTAL COUNT: %s'%(self.total_count))        

if __name__ == '__main__':
    curr_dir = os.path.abspath(os.curdir)
    print(curr_dir)
    
    linesCount = LinesCount()
    linesCount.count(curr_dir)
    print('press enter to exit')
    input()
