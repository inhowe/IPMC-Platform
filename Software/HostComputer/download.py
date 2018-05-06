# -*- coding:utf-8 -*-

import os
import urllib
import logging
import sys
import time
# https://github.com/drinow/IPMC-Platform/releases/download/0.2/IPMC.zip

logging.basicConfig(
    format='%(asctime)s %(levelname)s %(message)s',
    level=logging.INFO,
    stream=sys.stdout)

file_path = os.path.join(os.getcwd(),'IPMC.zip')

logging.info("---- Filling the URL...")
url = str(sys.argv[1])
# url = raw_input()
print "Inputed URL is : ",url

def down(_url):
    try:
        logging.info("---- Downloading update file...")
        urllib.urlretrieve(_url, file_path)
        logging.info('---- File is downloaded!')
        logging.info('---- SUCCESS')
    except:
        logging.info('---- Error when retrieving the URL!')
        logging.info('---- FAILED')


down(url)
