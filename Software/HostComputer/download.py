# -*- coding:utf-8 -*-

import os
import urllib
import logging
import sys


logging.basicConfig(
    format='%(asctime)s %(levelname)s %(message)s',
    level=logging.INFO,
    stream=sys.stdout)

file_path = os.path.join(os.getcwd(),'IPMC.zip')
print 'Please input your URL:'
url = raw_input()

def down(_save_path, _url):
    try:
        urllib.urlretrieve(_url, _save_path)
    except:
        print '\nError when retrieving the URL:', _save_path

logging.info("Downloading file.")
down(file_path, url)
logging.info('file is download!')
