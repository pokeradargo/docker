import os
import sys

if 'SPARK_HOME' not in os.environ:
    os.environ['SPARK_HOME'] = '/opt/spark'

if '/opt/spark/python' not in sys.path:
    sys.path.insert(0, '/opt/spark/python')