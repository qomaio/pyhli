''' display verion information '''
import sys
import pkg_resources
import pyhli


def hlierr(desc, status):
    ''' report FAME HLI errors '''
    if status != pyhli.HSUCC:
        print("{0} status={1}".format(desc, status))


def print_versions():
    ''' print version info '''
    status = [-1]
    pyhli.cfmini(status)
    if status[0] != pyhli.HSUCC:
        if status[0] == pyhli.HBPROD:
            print("\n\nObtain or update QOMA_PIN" +
                  " environment variable:\n\t{0:s}\n\n".format(
                      pyhli.get_support_url()))
            sys.exit()
    hlierr("cfmini()", status[0])

    # get FAME version
    ver = [-1.0]
    pyhli.cfmver(status, ver)

    # get FAME expiration date
    date = [-1]
    pyhli.cfmexpiration(status, date)
    hlierr("cfmexpiration()", status[0])

    # pyhli converged to C-HLI call patterns
    # https://github.com/qomaio/pyhli/blob/master/include/chli_functions.h

    # convert a date to a date literal string
    # void cfmdatl(int *status, int freq, int date, char *datstr, int fmonth, int flabel);
    datestr = ["                        "]
    pyhli.cfmdatl(status, pyhli.HDAILY, date[0], datestr, pyhli.HDEC,
                  pyhli.HFYAUT)
    hlierr("cfmdatl()", status[0])

    # convert a date to a year, month, and day
    # void cfmdatd(int *status, int freq, int date, int *year, int *month, int *day);
    year = [-1]
    month = [-1]
    day = [-1]
    pyhli.cfmdatd(status, pyhli.HDAILY, date[0], year, month, day)
    hlierr("cfmdatd()", status[0])

    pyhli.cfmfin(status)
    hlierr("cfmfin", status[0])

    print("\nPython {0}".format(sys.version))
    print("pyhli Version\t  %8s" %
          pkg_resources.get_distribution("pyhli").version)
    print("Fame Version\t  %.5f" % ver[0])
    print("Expiration\t   {0:8s} ({1:02d}/{2:02d}/{3:4d})\n".format(
        datestr[0], month[0], day[0], year[0]))


if __name__ == "__main__":
    print_versions()
