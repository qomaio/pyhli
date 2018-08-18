''' pyhli Hello World demonstration '''
from __future__ import print_function

import sys
import platform
import pkg_resources
import pyhli

# initialize the C HLI
status = [-1]
pyhli.cfmini(status)
print("\ncfmini(status) status = {}".format(status[0]))
if status[0] != pyhli.HSUCC:
    if status[0] == pyhli.HBPROD:
        print("\n\nObtain or update QOMA_PIN" +
              " environment variable:\n\t{0:s}\n\n".
              format(pyhli.get_support_url()))
    sys.exit()

# Get the C HLI version number
ver = [0.0]
pyhli.cfmver(status, ver)
if status[0] != pyhli.HSUCC:
    sys.exit()
print("cfmver(status,ver)", "status = {0} ver = {1:.5f}\n".format(
    status[0], ver[0]))

# say HELLO !
print(
    "FIS MarketMap Analytic Platform\nHello World from Python!\nFAME HLI {0:.5f} pyhli {1:s}\n".
    format(ver[0],
           pkg_resources.get_distribution("pyhli").version))
print("Python {0}".format(sys.version))

print("{0} {1} ({2}) {3}\n".format(platform.system(), platform.release(),
                                   platform.version(), platform.machine()))

# Finish the C HLI
pyhli.cfmfin(status)
if status[0] != pyhli.HSUCC:
    sys.exit()
print("cfmfin(status) status = {}\n".format(status[0]))
