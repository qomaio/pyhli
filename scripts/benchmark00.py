''' pyhli example write series'''
from __future__ import print_function

import os
import sys
import pkg_resources
import pyhli
import time

NOBS=70000
NSERIES=20

rng = [pyhli.HCASEX,1,NOBS]
mistt = [0.0, 0.0, 0.0]
valary=[0.0 for i in range(NOBS)]

start = time.time()
# initialize FAME HLI
status = [-1]
pyhli.cfmini(status)
#print("\ncfmini() status={0}".format(status[0]))
if status[0] != pyhli.HSUCC:
    if status[0] == pyhli.HBPROD:
        print("\n\nObtain or update QOMA_PIN environment variable:\n\t{0:s}\n\n".
              format(pyhli.get_support_url()))
    sys.exit()

#print("\nPython {0}".format(sys.version))

# get FAME version
ver = [-1.0]
pyhli.cfmver(status, ver)
#print("pyhli {0} with FAME {1:.5f}\n".format(
#    pkg_resources.get_distribution("pyhli").version, ver[0]))
if status[0] != pyhli.HSUCC:
    sys.exit()

# open FAME database
dbkey = [-1]
dbname = ["py_benchmark00.db"]
pyhli.cfmopdb(status, dbkey, dbname, pyhli.HOMODE)
#print("cfmopdb() status={0}".format(status[0]))
if status[0] != pyhli.HSUCC:
    sys.exit()

for x in range(NSERIES):
    objnam = ['s{0:06d}'.format(x)]  
    # print(objnam)
    pyhli.cfmnwob(status, dbkey[0], objnam, pyhli.HSERIE, pyhli.HCASEX, pyhli.HPRECN, pyhli.HBSUND, pyhli.HOBUND)
    pyhli.cfmwrng_double(status, dbkey[0], objnam, rng, valary, pyhli.HNTMIS, mistt)


# close FAME database
pyhli.cfmcldb(status, dbkey[0])
#print("cfmcldb() status={0}".format(status[0]))
if status[0] != pyhli.HSUCC:
    sys.exit()

# finish FAME HLI
pyhli.cfmfin(status)
#print("cfmfin() status={0}\n".format(status[0]))
if status[0] != pyhli.HSUCC:
    sys.exit()
    
end = time.time()
print('{0:.3f} seconds'.format(end-start))

