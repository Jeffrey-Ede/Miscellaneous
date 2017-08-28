# -*- coding: utf-8 -*-
"""
Created on Mon Aug 28 19:41:10 2017

@author: Jeffrey Ede
"""

import os
import shutil

def cython_renamer(name):
    name = name.replace(".pyx", "")
    for filename in os.listdir():
        if(filename.find('.pyd') != -1 and filename.find(name) != -1):
            shutil.move(filename, name+".pyd")
            break
