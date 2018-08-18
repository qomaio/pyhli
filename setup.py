from setuptools import setup
from setuptools import Extension
from os import environ
import platform

if platform.system()=='Linux':
    fame_dir = environ['FAME']+"/hli"
    comp_args = "-v"
else:
    fame_dir = environ['FAME']+"\\64"
    comp_args = "/DWIN32"

exts = [ 
    Extension("pyhli", 
        sources=['pyhli.c','qoma_functions.c'],
        include_dirs=["include"],
        extra_compile_args=[comp_args],
        library_dirs=[ fame_dir ],
        libraries=["chli"]) 
    ]

setup(name='pyhli',
        scripts=['scripts/pyhli_hello_world.py','scripts/pyhli_retrieve_series.py','scripts/pyhli_versions.py'],
        version='0.0.12',
        description='Python Host Language Interface for FAME',
        long_description='Complete access from Python to the FIS MarketMap '+
        'C-Toolkit (FAME C-HLI). FAME is a fully integrated software and database '+
        'management system from FIS that provides the following capabilities: '+
        'Time series and cross-sectional data management; '+
        'Financial calculation, data analysis, econometrics, and forecasting; '+
        'Table generation and detailed multicolor, presentation-quality report writing; '+
        'Multicolor, presentation-quality graphics; '
        'What-if analysis; Application development and structured programming; '+
        'Data transfer to and from other applications; '+
        'Tools for building customized graphical user interfaces.',
        author='Qoma LLC',
        author_email='info@qoma.io',
        url='http://github.com/qomaio/pyhli',
        license='AGPLv3',
        platforms=['any'],
        ext_modules = exts
)
