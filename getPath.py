#!/usr/bin/python
# coding:utf-8
import os

import sys

DIRNAME = os.path.dirname('__file__')  # 获取当前路径
OPSTools = os.path.abspath(os.path.join(DIRNAME, '..'))  # 把上级目录加入到环境变量中
sys.path.append(OPSTools)
print(sys.path)
