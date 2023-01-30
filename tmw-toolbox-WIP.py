# Work in progress, don't use for now.

import os
import sys
import time
from datetime import timedelta, datetime

path = input("Enter the path to replace XVAR: ")
days = int(input("Enter the number of days for YVAR: "))

now = time.time()
cutoff = now - (days * 24 * 60 * 60)

separator = os.path.sep

for root, dirs, files in os.walk(path):
    for f in files:
        full_path = root + separator + f
        if os.path.getmtime(full_path) < cutoff:
            os.remove(full_path)
