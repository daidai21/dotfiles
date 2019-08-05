#!/usr/bin/env python3
# -*- coding:utf-8 -*-


# =============================================================================
# File Name: jupyter_notebook_config.py
# Author: DaiDai
# Mail: daidai4269@aliyun.com
# Created Time: Mon 05 Aug 2019 03:32:14 PM CST
# =============================================================================


"""
exec:
>> python -c "import IPython;print(IPython.lib.passwd())"
generate c.NotebookApp.password
"""


c.NotebookApp.ip = '0.0.0.0'
c.NotebookApp.allow_root = True
c.NotebookApp.open_browser = False
c.NotebookApp.port = 8080
c.NotebookApp.password = u''  # this is gererated.
c.ContentsManager.root_dir = '/home/fwh/'
