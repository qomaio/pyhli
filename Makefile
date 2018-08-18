all:
	python setup.py clean
	cython pyhli.pyx
	python setup.py install
