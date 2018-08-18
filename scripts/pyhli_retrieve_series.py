''' pyhli example retrieve series: run 4GL, read FAME db'''
from __future__ import print_function

import os
import sys
import pkg_resources
import pyhli

# initialize FAME HLI
status = [-1]
pyhli.cfmini(status)
print("\ncfmini() status={0}".format(status[0]))
if status[0] != pyhli.HSUCC:
    if status[0] == pyhli.HBPROD:
        print("\n\nObtain or update QOMA_PIN environment variable:\n\t{0:s}\n\n".
              format(pyhli.get_support_url()))
    sys.exit()

print("\nPython {0}".format(sys.version))

# get FAME version
ver = [-1.0]
pyhli.cfmver(status, ver)
print("pyhli {0} with FAME {1:.5f}\n".format(
    pkg_resources.get_distribution("pyhli").version, ver[0]))
if status[0] != pyhli.HSUCC:
    sys.exit()

# create a fame db
cmd = [
    '\
  freq b; \
  date thisday(b)-10 to thisday(b)-1; \
  open<acc over>tmp; \
  series x : precision by date; \
  desc(x) = "U[0,1]"; \
  docu(x) = "Uniformly distributed U[0,1] time-series."; \
  set x = uniform(date); \
  close tmp\
  '
]
pyhli.cfmfame(status, cmd)
print("cfmfame() status={0}".format(status[0]))
if status[0] != pyhli.HSUCC:
    sys.exit()

# open FAME database
dbkey = [-1]
dbname = ["tmp"]
pyhli.cfmopdb(status, dbkey, dbname, pyhli.HRMODE)
print("cfmopdb() status={0}".format(status[0]))
if status[0] != pyhli.HSUCC:
    sys.exit()

# get FAME object information
objnam = ["x"]
_class = [0]
_type = [0]
freq = [0]
basis = [0]
observ = [0]
fyear = [0]
fprd = [0]
lyear = [0]
lprd = [0]
cyear = [0]
cmonth = [0]
cday = [0]
myear = [0]
mmonth = [0]
mday = [0]

# strings will be replace on return; truncated if needed to fit
desc = ["?? desc ??                                        "]
doc = ["?? doc  ??                                        "]

# cfmosiz() - basic information about an object
pyhli.cfmosiz(status, dbkey[0], objnam, _class,
              _type, freq, fyear, fprd, lyear, lprd)
print("\ncfmosiz() {0} {1} {2} {3} {4} {5}         {6} {7} {8} {9}".format(
    status, dbkey[0], objnam, _class, _type, freq, fyear, fprd, lyear, lprd))
if status[0] != pyhli.HSUCC:
    sys.exit()

# cfmwhat() - information about an object
pyhli.cfmwhat(status, dbkey[0], objnam, _class, _type, freq, basis, observ, fyear,
              fprd, lyear, lprd, cyear, cmonth, cday, myear, mmonth, mday, desc, doc)

print(
    "cfmwhat() {0} {1} {2} {3} {4} {5} {6} {7} {8} {9} {10} {11} {12} {13} {14} {15} {16} {17}\
    \n          desc=\"{18}\"\n          doc=\"{19}\"\n".format(
        status, dbkey[0], objnam, _class, _type, freq, basis, observ, fyear,
        fprd, lyear, lprd, cyear, cmonth, cday, myear, mmonth, mday,
        desc[0].strip(), doc[0].strip()))
if status[0] != pyhli.HSUCC:
    sys.exit()

# set range
frange = [0, 0, 0]
numobs = [-1]
pyhli.cfmsrng(status, freq[0], fyear, fprd, lyear, lprd, frange, numobs)
print("cfmsrng() status = {0} numobs = {1}".format(status[0], numobs[0]))
if status[0] != pyhli.HSUCC:
    sys.exit()

# read a range of data
valary = [0.0] * numobs[0]
pyhli.cfmrrng_double(status, dbkey[0], objnam, frange, valary, pyhli.HNTMIS, None)
print("cfmrrng() status = {0}".format(status[0]))
if status[0] != pyhli.HSUCC:
    sys.exit()
print("          {0:.5f} {1:.5f} ... {2:.5f} {3:.5f} \n".format(
    valary[0], valary[1], valary[numobs[0] - 2], valary[numobs[0] - 1]))

# close FAME database
pyhli.cfmcldb(status, dbkey[0])
print("cfmcldb() status={0}".format(status[0]))
if status[0] != pyhli.HSUCC:
    sys.exit()

# finish FAME HLI
pyhli.cfmfin(status)
print("cfmfin() status={0}\n".format(status[0]))
if status[0] != pyhli.HSUCC:
    sys.exit()

# clean up
os.remove("tmp.db")
