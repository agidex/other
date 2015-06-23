#!/usr/bin/env python3

import time
import datetime

while(True):
	print(str(datetime.datetime(2011,8,13,0,0)-datetime.datetime.now()).split(' ')[2].split('.')[0])
	time.sleep(1)