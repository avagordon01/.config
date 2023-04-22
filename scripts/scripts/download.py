#!/usr/bin/env python

import feedparser
from pprint import pprint as print

feed = feedparser.parse('https://showrss.info/user/236333.rss?magnets=true&namespaces=true&name=null&quality=null&re=null')

entries = feed['entries']

links = [x['link'] for x in entries]

import subprocess
import os.path
subprocess.run(['aria2c', '--seed-time=0'] + links, cwd=os.path.expanduser('~/download'))
