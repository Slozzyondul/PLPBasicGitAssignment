#module = python source file
#import = loads and executes
#package = organized modules  / namespace for imports

#__init__.py files = stitches the modules together

#pip = Installs Packages.
#pypi = Python packages are available from the Python Package Index, or PyPI
#virtualenv = tool for isolating Python package installations from each other.
#Popular third-party libraries
'''
requests
scrapy
Twisted
Pillow
lxml
PyYAML
Django, Flask, Pyramid
SQLAlchemy
numpy, scipy, pandas
pytest, tox, coverage, mock
six
Jinija2
cryptography
pylint, flake8, pep8
pymongo, redis, MySQL-Python, psycopg2
'''
#redshift and s3 = data warehousing and storage services respectively
#bigquery = used with RESTful APIs
#pyspark = large scale data processing and distributed datasets
#kafka = publish-subscribe messaging system
#pydoop = handling hadoop distributed file systems.

#python libraries
#django, cherrypy, pyramid, grok, turbogears, web2py, flask, bottle, tornade, bluebream, quixote
#tensor flow = used for high-level computations. It is also used in machine learning and deep learning algorithms.
#matplotlib = for plotting numerical data
#pandas = machine learning library that provides flexible high-level data structures and a variety of analysis tools
#numpy = “Numerical Python
#scipy = Scientific Python
#scrapy = for extracting data from websites
#scikit learn = work with complex data
#pygame = used for developing video games using computer graphics and audio libraries along with Python programming language
#pytorch =  solve application issues related to neural networks.
#pybrain = It provides fast and easy-to-use algorithms for machine learning tasks
#module = defining the most repeated code and import the module when needed


#creating a python addition module
def add (a,b):
    result = a + b
    return result

#manipulating builtin library (math)
import math as m
y = m.sqrt(25)
print(y)

#importing a specific name from a module
from math import pi 
print(pi)
#importing all names from a module 
from math import *
print(sqrt)