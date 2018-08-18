from libc.stdlib cimport malloc, free
from libc.stdio cimport fprintf, stderr, BUFSIZ
from libc.string cimport strdup

import struct

from chli_functions cimport FPRCNA as chli_FPRCNA
from chli_functions cimport FPRCNC as chli_FPRCNC
from chli_functions cimport FPRCND as chli_FPRCND
from chli_functions cimport FNUMNA as chli_FNUMNA
from chli_functions cimport FNUMNC as chli_FNUMNC
from chli_functions cimport FNUMND as chli_FNUMND
from chli_functions cimport FBOONA as chli_FBOONA
from chli_functions cimport FBOONC as chli_FBOONC
from chli_functions cimport FBOOND as chli_FBOOND
from chli_functions cimport FDATNA as chli_FDATNA
from chli_functions cimport FDATNC as chli_FDATNC
from chli_functions cimport FDATND as chli_FDATND
from chli_functions cimport FSTRNA as chli_FSTRNA
from chli_functions cimport FSTRNC as chli_FSTRNC
from chli_functions cimport FSTRND as chli_FSTRND
from chli_functions cimport FAME_INDEX_NA as chli_FAME_INDEX_NA
from chli_functions cimport FAME_INDEX_NC as chli_FAME_INDEX_NC
from chli_functions cimport FAME_INDEX_ND as chli_FAME_INDEX_ND

from chli_functions cimport cfmabrt as chli_cfmabrt
from chli_functions cimport cfmalob as chli_cfmalob
from chli_functions cimport cfmasrt as chli_cfmasrt
from chli_functions cimport cfmbwdy as chli_cfmbwdy
from chli_functions cimport cfmchfr as chli_cfmchfr
from chli_functions cimport cfmclcn as chli_cfmclcn
from chli_functions cimport cfmcldb as chli_cfmcldb
from chli_functions cimport cfmcmmt as chli_cfmcmmt
from chli_functions cimport cfmcpob as chli_cfmcpob
from chli_functions cimport cfmdatd as chli_cfmdatd
from chli_functions cimport cfmdatf as chli_cfmdatf
from chli_functions cimport cfmdati as chli_cfmdati
from chli_functions cimport cfmdatl as chli_cfmdatl
from chli_functions cimport cfmdatp as chli_cfmdatp
from chli_functions cimport cfmdatt as chli_cfmdatt
from chli_functions cimport cfmddat as chli_cfmddat
from chli_functions cimport cfmddes as chli_cfmddes
from chli_functions cimport cfmddoc as chli_cfmddoc
from chli_functions cimport cfmdlen as chli_cfmdlen
from chli_functions cimport cfmdlob as chli_cfmdlob
from chli_functions cimport cfmexpiration as chli_cfmexpiration
from chli_functions cimport cfmfame as chli_cfmfame
from chli_functions cimport cfmfdat as chli_cfmfdat
from chli_functions cimport cfmfdiv as chli_cfmfdiv
from chli_functions cimport cfmferr as chli_cfmferr
from qoma_functions cimport qomafin as chli_cfmfin
from chli_functions cimport cfmgcid as chli_cfmgcid
from chli_functions cimport cfmgdat as chli_cfmgdat
from chli_functions cimport cfmgdba as chli_cfmgdba
from chli_functions cimport cfmgdbd as chli_cfmgdbd
from chli_functions cimport cfmget_dimension as chli_cfmget_dimension
from chli_functions cimport cfmget_extradots as chli_cfmget_extradots
from chli_functions cimport cfmglen as chli_cfmglen
from chli_functions cimport cfmgnam as chli_cfmgnam
from chli_functions cimport cfmgsln as chli_cfmgsln
from chli_functions cimport cfmgtali as chli_cfmgtali
from chli_functions cimport cfmgtaso as chli_cfmgtaso
from chli_functions cimport cfmgtatt_f as chli_cfmgtatt_f
from chli_functions cimport cfmgtatt_f as chli_cfmgtatt_f
from chli_functions cimport cfmgtatt_f as chli_cfmgtatt_f
from chli_functions cimport cfmgtatt_f as chli_cfmgtatt_f
from chli_functions cimport cfmgtnl as chli_cfmgtnl
from chli_functions cimport cfmgtstr as chli_cfmgtstr
from chli_functions cimport cfmgtsts as chli_cfmgtsts
from chli_functions cimport cfmidat as chli_cfmidat
from qoma_functions cimport qomaini as chli_cfmini
from qoma_functions cimport get_support_URL as qoma_support_url
from chli_functions cimport cfminwc as chli_cfminwc
from chli_functions cimport cfmisbm as chli_cfmisbm
from chli_functions cimport cfmisdm as chli_cfmisdm
from chli_functions cimport cfmislp as chli_cfmislp
from chli_functions cimport cfmisnm as chli_cfmisnm
from chli_functions cimport cfmispm as chli_cfmispm
from chli_functions cimport cfmissm as chli_cfmissm
from chli_functions cimport cfmlali as chli_cfmlali
from chli_functions cimport cfmlaso as chli_cfmlaso
from chli_functions cimport cfmlatt as chli_cfmlatt
from chli_functions cimport cfmldat as chli_cfmldat
from chli_functions cimport cfmlerr as chli_cfmlerr
from chli_functions cimport cfmlsts as chli_cfmlsts
from chli_functions cimport cfmncnt as chli_cfmncnt
from chli_functions cimport cfmnlen as chli_cfmnlen
from chli_functions cimport cfmnwob as chli_cfmnwob
from chli_functions cimport cfmnxwc as chli_cfmnxwc
from chli_functions cimport cfmopcn as chli_cfmopcn
from chli_functions cimport cfmopdb as chli_cfmopdb
from chli_functions cimport cfmopdc as chli_cfmopdc
from chli_functions cimport cfmoprc as chli_cfmoprc
from chli_functions cimport cfmopre as chli_cfmopre
from chli_functions cimport cfmopwk as chli_cfmopwk
from chli_functions cimport cfmosiz as chli_cfmosiz
from chli_functions cimport cfmpack as chli_cfmpack
from chli_functions cimport cfmpdat as chli_cfmpdat
from chli_functions cimport cfmpfrq as chli_cfmpfrq
from chli_functions cimport cfmpind as chli_cfmpind
from chli_functions cimport cfmpinm as chli_cfmpinm
from chli_functions cimport cfmpiny as chli_cfmpiny
from chli_functions cimport cfmpodb as chli_cfmpodb
from chli_functions cimport cfmrdfa_f as chli_cfmrdfa_f
from chli_functions cimport cfmrdfa_f as chli_cfmrdfa_f
from chli_functions cimport cfmrdfa_f as chli_cfmrdfa_f
from chli_functions cimport cfmrdfm as chli_cfmrdfm
from chli_functions cimport cfmrmev as chli_cfmrmev
from chli_functions cimport cfmrnob as chli_cfmrnob
from chli_functions cimport cfmrrng_f as chli_cfmrrng_f
from chli_functions cimport cfmrrng_f as chli_cfmrrng_f
from chli_functions cimport cfmrrng_f as chli_cfmrrng_f
from chli_functions cimport cfmrsdb as chli_cfmrsdb
from chli_functions cimport cfmsali as chli_cfmsali
from chli_functions cimport cfmsaso as chli_cfmsaso
from chli_functions cimport cfmsatt_f as chli_cfmsatt_f
from chli_functions cimport cfmsatt_f as chli_cfmsatt_f
from chli_functions cimport cfmsatt_f as chli_cfmsatt_f
from chli_functions cimport cfmsatt_f as chli_cfmsatt_f
from chli_functions cimport cfmsbas as chli_cfmsbas
from chli_functions cimport cfmsbm as chli_cfmsbm
from chli_functions cimport cfmsdes as chli_cfmsdes
from chli_functions cimport cfmsdm as chli_cfmsdm
from chli_functions cimport cfmsdoc as chli_cfmsdoc
from chli_functions cimport cfmset_dimension as chli_cfmset_dimension
from chli_functions cimport cfmset_extradots as chli_cfmset_extradots
from chli_functions cimport cfmsfis as chli_cfmsfis
from chli_functions cimport cfmsinp as chli_cfmsinp
from chli_functions cimport cfmsnm as chli_cfmsnm
from chli_functions cimport cfmsobs as chli_cfmsobs
from chli_functions cimport cfmsopt as chli_cfmsopt
from chli_functions cimport cfmspm as chli_cfmspm
from chli_functions cimport cfmspos as chli_cfmspos
from chli_functions cimport cfmsrng as chli_cfmsrng
from chli_functions cimport cfmssln as chli_cfmssln
from chli_functions cimport cfmtdat as chli_cfmtdat
from chli_functions cimport cfmtody as chli_cfmtody
from chli_functions cimport cfmufrq as chli_cfmufrq
from chli_functions cimport cfmver as chli_cfmver
from chli_functions cimport cfmwhat as chli_cfmwhat
from chli_functions cimport cfmwkdy as chli_cfmwkdy
from chli_functions cimport cfmwrmt_f as chli_cfmwrmt_f
from chli_functions cimport cfmwrmt_f as chli_cfmwrmt_f
from chli_functions cimport cfmwrmt_f as chli_cfmwrmt_f
from chli_functions cimport cfmwrng_f as chli_cfmwrng_f
from chli_functions cimport cfmwrng_f as chli_cfmwrng_f
from chli_functions cimport cfmwrng_f as chli_cfmwrng_f
from chli_functions cimport cfmwstr as chli_cfmwstr
from chli_functions cimport cfmwsts as chli_cfmwsts
from chli_functions cimport cfmwtnl as chli_cfmwtnl
from chli_functions cimport fame_biweekday as chli_fame_biweekday
from chli_functions cimport fame_create_formula as chli_fame_create_formula
from chli_functions cimport fame_create_global_formula as chli_fame_create_global_formula
from chli_functions cimport fame_current_time as chli_fame_current_time
from chli_functions cimport fame_date_missing_type as chli_fame_date_missing_type
from chli_functions cimport fame_date_to_literal as chli_fame_date_to_literal
from chli_functions cimport fame_dateof as chli_fame_dateof
from chli_functions cimport fame_day_to_index as chli_fame_day_to_index
from chli_functions cimport fame_dimchar as chli_fame_dimchar
from chli_functions cimport fame_dimnum as chli_fame_dimnum
from chli_functions cimport fame_expiration_date as chli_fame_expiration_date
from chli_functions cimport fame_format_date as chli_fame_format_date
from chli_functions cimport fame_free_wildcard as chli_fame_free_wildcard
from chli_functions cimport fame_get_base_frequency as chli_fame_get_base_frequency
from chli_functions cimport fame_get_boolean_attribute as chli_fame_get_boolean_attribute
from chli_functions cimport fame_get_booleans as chli_fame_get_booleans
from chli_functions cimport fame_get_date_attribute as chli_fame_get_date_attribute
from chli_functions cimport fame_get_dates as chli_fame_get_dates
from chli_functions cimport fame_get_db_dates as chli_fame_get_db_dates
from chli_functions cimport fame_get_dbversion as chli_fame_get_dbversion
from chli_functions cimport fame_get_namelist_attribute as chli_fame_get_namelist_attribute
from chli_functions cimport fame_get_next_wildcard as chli_fame_get_next_wildcard
from chli_functions cimport fame_get_numeric_attribute as chli_fame_get_numeric_attribute
from chli_functions cimport fame_get_numerics as chli_fame_get_numerics
from chli_functions cimport fame_get_precision_attribute as chli_fame_get_precision_attribute
from chli_functions cimport fame_get_precisions as chli_fame_get_precisions
from chli_functions cimport fame_get_range_numobs as chli_fame_get_range_numobs
from chli_functions cimport fame_get_real_name as chli_fame_get_real_name
from chli_functions cimport fame_get_server_input as chli_fame_get_server_input
from chli_functions cimport fame_get_string_attribute as chli_fame_get_string_attribute
from chli_functions cimport fame_get_strings as chli_fame_get_strings
from chli_functions cimport fame_index_to_day as chli_fame_index_to_day
from chli_functions cimport fame_index_to_int as chli_fame_index_to_int
from chli_functions cimport fame_index_to_time as chli_fame_index_to_time
from chli_functions cimport fame_index_to_year_period as chli_fame_index_to_year_period
from chli_functions cimport fame_info as chli_fame_info
from chli_functions cimport fame_init_range_from_end_numobs as chli_fame_init_range_from_end_numobs
from chli_functions cimport fame_init_range_from_indexes as chli_fame_init_range_from_indexes
from chli_functions cimport fame_init_range_from_start_numobs as chli_fame_init_range_from_start_numobs
from chli_functions cimport fame_init_wildcard as chli_fame_init_wildcard
from chli_functions cimport fame_int_to_index as chli_fame_int_to_index
from chli_functions cimport fame_len_strings as chli_fame_len_strings
from chli_functions cimport fame_literal_to_date as chli_fame_literal_to_date
from chli_functions cimport fame_modify_formula as chli_fame_modify_formula
from chli_functions cimport fame_parse_frequency as chli_fame_parse_frequency
from chli_functions cimport fame_quick_info as chli_fame_quick_info
from chli_functions cimport fame_remexec as chli_fame_remexec
from chli_functions cimport fame_scan_date as chli_fame_scan_date
from chli_functions cimport fame_set_boolean_attribute as chli_fame_set_boolean_attribute
from chli_functions cimport fame_set_date_attribute as chli_fame_set_date_attribute
from chli_functions cimport fame_set_namelist_attribute as chli_fame_set_namelist_attribute
from chli_functions cimport fame_set_numeric_attribute as chli_fame_set_numeric_attribute
from chli_functions cimport fame_set_precision_attribute as chli_fame_set_precision_attribute
from chli_functions cimport fame_set_string_attribute as chli_fame_set_string_attribute
from chli_functions cimport fame_time_to_index as chli_fame_time_to_index
from chli_functions cimport fame_type_to_string as chli_fame_type_to_string
from chli_functions cimport fame_weekday as chli_fame_weekday
from chli_functions cimport fame_write_booleans as chli_fame_write_booleans
from chli_functions cimport fame_write_dates as chli_fame_write_dates
from chli_functions cimport fame_write_numerics as chli_fame_write_numerics
from chli_functions cimport fame_write_precisions as chli_fame_write_precisions
from chli_functions cimport fame_write_strings as chli_fame_write_strings
from chli_functions cimport fame_year_period_to_index as chli_fame_year_period_to_index

HSUCC = 0
HINITD = 1
HNINIT = 2
HFIN = 3
HBFILE = 4
HBMODE = 5
HBKEY = 6
HBSRNG = 8
HBERNG = 9
HBNRNG = 10
HNOOBJ = 13
HBRNG = 14
HDUTAR = 15
HBOBJT = 16
HBFREQ = 17
HTRUNC = 18
HNPOST = 20
HFUSE = 21
HNFMDB = 22
HRNEXI = 23
HCEXI = 24
HNRESW = 25
HBCLAS = 26
HBOBSV = 27
HBBASI = 28
HOEXI = 29
HBMONT = 30
HBFLAB = 31
HBMISS = 32
HBINDX = 33
HNWILD = 34
HBNCHR = 35
HBGROW = 36
HQUOTA = 37
HOLDDB = 38
HMPOST = 39
HSPCDB = 40
HBFLAG = 41
HPACK = 42
HNEMPT = 43
HBATTR = 44
HDUP = 45
HBYEAR = 46
HBPER = 47
HBDAY = 48
HBDATE = 49
HBSEL = 50
HBREL = 51
HBTIME = 52
HBCPU = 53
HEXPIR = 54
HBPROD = 55
HBUNIT = 56
HBCNTX = 57
HLOCKD = 58
HNETCN = 59
HNFAME = 60
HNBACK = 61
HSUSPN = 62
HBSRVR = 63
HCLNLM = 64
HBUSER = 65
HSRVST = 66
HBOPT = 67
HBOPTV = 68
HNSUPP = 69
HBLEN = 70
HNULLP = 71
HREADO = 72
HNWFEA = 73
HBGLNM = 74
HCLCHN = 75
HDPRMC = 76
HWKOPN = 77
HNUFRD = 78
HNOMEM = 79
HBFUNC = 80
HBPHAS = 81
HAPOST = 82
HUPDRD = 83
HP1REQ = 84
HP2REQ = 85
HUNEXP = 86
HBVER = 87
HNFILE = 88
HMFILE = 89
HSCLLM = 90
HDBCLM = 91
HSNFIL = 92
HSMFIL = 93
HRESFD = 94
HTMOUT = 95
HCHGAC = 96
HFMENV = 97
HLICFL = 98
HLICNS = 99
HRMTDB = 100
HBCONN = 101
HABORT = 102
HNCONN = 103
HNMCA = 104
HBATYP = 105
HBASRT = 106
HBPRSP = 107
HBGRP = 108
HNLOCL = 109
HDHOST = 110
HOPENW = 111
HOPEND = 112
HNTWIC = 113
HPWWOU = 114
HLSERV = 115
HLRESV = 116
HMAXDB = 117
HREMSUP = 119
HBADVAL = 120
HNOMAP = 121
HROSCONN = 122
HRKEYINV = 123
HRUSERINV = 124
HROSTRANS = 125
HRDISTRANS = 126
HRHANDINV = 127
HNSUPDB = 128
HCVTDB = 129
HOBSFUNC = 130
HBV3TYPE = 131
HBV3RANGE = 132
HBV3DATE = 133
HNTOOLONG = 134
HUTOOLONG = 135
HFUTURE_TYPE = 136
HBTYPE = 137
HOBJSIZE = 138
HUSRPWTOOLONG = 139
HFTOUT = 140
HTRUNCDB = 141
HUNSUPPORTED_FAME_VER = 142
HINUSE = 143
HNTSAFE = 144
HNFSRCLONG = 145
HFRMSYNTAXERR = 146
HNOFORMV3 = 147
HIFAIL = 511
HFAMER = 513
HBFMON = 30
HNAMLEN_V3 = 64
HNAMLEN_V4 = 242
HNAMLEN = 242
HNAMSIZ = 243
HRMODE = 1
HCMODE = 2
HOMODE = 3
HUMODE = 4
HSMODE = 5
HWMODE = 6
HDMODE = 7
HSERIE = 1
HSCALA = 2
HFRMLA = 3
HGLNAM = 5
HGLFOR = 6
HUNDFT = 0
HNUMRC = 1
HNAMEL = 2
HBOOLN = 3
HSTRNG = 4
HPRECN = 5
HDATE = 6
HBSUND = 0
HBSDAY = 1
HBSBUS = 2
HOBUND = 0
HOBBEG = 1
HOBEND = 2
HOBAVG = 3
HOBSUM = 4
HOBANN = 5
HOBFRM = 6
HOBHI = 7
HOBLO = 8
HUNDFX = 0
HDAILY = 8
HBUSNS = 9
HWKSUN = 16
HWKMON = 17
HWKTUE = 18
HWKWED = 19
HWKTHU = 20
HWKFRI = 21
HWKSAT = 22
HTENDA = 32
HWASUN = 64
HWAMON = 65
HWATUE = 66
HWAWED = 67
HWATHU = 68
HWAFRI = 69
HWASAT = 70
HWBSUN = 71
HWBMON = 72
HWBTUE = 73
HWBWED = 74
HWBTHU = 75
HWBFRI = 76
HWBSAT = 77
HTWICM = 128
HMONTH = 129
HBMNOV = 144
HBIMON = 145
HQTOCT = 160
HQTNOV = 161
HQTDEC = 162
HANJAN = 192
HANFEB = 193
HANMAR = 194
HANAPR = 195
HANMAY = 196
HANJUN = 197
HANJUL = 198
HANAUG = 199
HANSEP = 200
HANOCT = 201
HANNOV = 202
HANDEC = 203
HSMJUL = 204
HSMAUG = 205
HSMSEP = 206
HSMOCT = 207
HSMNOV = 208
HSMDEC = 209
HAYPP = 224
HAPPY = 225
HSEC = 226
HMIN = 227
HHOUR = 228
HMSEC = 229
HCASEX = 232
HWEEK_PATTERN = 233
HJAN = 1
HFEB = 2
HMAR = 3
HAPR = 4
HMAY = 5
HJUN = 6
HJUL = 7
HAUG = 8
HSEP = 9
HOCT = 10
HNOV = 11
HDEC = 12
HFYJAN = 1
HFYFEB = 2
HFYMAR = 3
HFYAPR = 4
HFYMAY = 5
HFYJUN = 6
HFYJUL = 7
HFYAUG = 8
HFYSEP = 9
HFYOCT = 10
HFYNOV = 11
HFYDEC = 12
HSUN = 1
HMON = 2
HTUE = 3
HWED = 4
HTHU = 5
HFRI = 6
HSAT = 7
HASUN = 1
HAMON = 2
HATUE = 3
HAWED = 4
HATHU = 5
HAFRI = 6
HASAT = 7
HBSUN = 8
HBMON = 9
HBTUE = 10
HBWED = 11
HBTHU = 12
HBFRI = 13
HBSAT = 14
HFYFST = 1
HFYLST = 2
HFYAUT = 3
HBEGIN = 1
HEND = 2
HINTVL = 3
HBEFOR = 1
HAFTER = 2
HCONT = 3
HNMVAL = 0
HNCVAL = 1
HNAVAL = 2
HNDVAL = 3
HMGVAL = 4
HUNCHG = 0
HSERVR = 0
HCLNT = 1
HCHANL = 2
HREAD = 0
HWRITE = 1
HALL = 2
HNTMIS = 0
HTMIS = 1
HSMLEN = 2
HNO = 0
HYES = 1
HNLALL = -1
HLI_MAX_STR_LEN = 65534
HMAXSCMD = 5002
HLI_MAX_FAME_INPUT = 65534
HLI_MAX_FAME_INPUT_SIZE = 65535
HLI_MAX_FAME_CMD = 1048578
HRMKEY = 0

def cfmabrt(status, connkey):
    '''MarketMap C-HLI cfmabrt'''
    cdef:
        int _status
        int _connkey

    _connkey = connkey

    chli_cfmabrt(&_status,_connkey)

    status[0] = _status


def cfmalob(status, dbkey, objnam, class_, freq, type, basis, observ, numobs, numchr, growth):
    '''MarketMap C-HLI cfmalob'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _class_
        int _freq
        int _type
        int _basis
        int _observ
        int _numobs
        int _numchr
        float _growth

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _class_ = class_
    _freq = freq
    _type = type
    _basis = basis
    _observ = observ
    _numobs = numobs
    _numchr = numchr
    _growth = growth

    chli_cfmalob(&_status,_dbkey,_objnam,_class_,_freq,_type,_basis,_observ,_numobs,_numchr,_growth)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)


def cfmasrt(status, connkey, assert_type, assertion, perspective, grouping, dblist):
    '''MarketMap C-HLI cfmasrt'''
    cdef:
        int _status
        int _connkey
        int _assert_type
        char *_assertion
        int _perspective
        int _grouping
        int _dblist

    _connkey = connkey
    _assert_type = assert_type
    _assertion = strdup(assertion[0].encode("UTF-8"))
    _perspective = perspective
    _grouping = grouping
    _dblist = dblist[0]

    chli_cfmasrt(&_status,_connkey,_assert_type,_assertion,_perspective,_grouping,&_dblist)

    status[0] = _status
    assertion[0] = _assertion.decode("UTF-8")
    free(_assertion)
    dblist[0] = _dblist


def cfmbwdy(status, freq, date, biwkdy):
    '''MarketMap C-HLI cfmbwdy'''
    cdef:
        int _status
        int _freq
        int _date
        int _biwkdy

    _freq = freq
    _date = date
    _biwkdy = biwkdy[0]

    chli_cfmbwdy(&_status,_freq,_date,&_biwkdy)

    status[0] = _status
    biwkdy[0] = _biwkdy


def cfmchfr(status, sfreq, sdate, select, tfreq, tdate, relate):
    '''MarketMap C-HLI cfmchfr'''
    cdef:
        int _status
        int _sfreq
        int _sdate
        int _select
        int _tfreq
        int _tdate
        int _relate

    _sfreq = sfreq
    _sdate = sdate
    _select = select
    _tfreq = tfreq
    _tdate = tdate[0]
    _relate = relate

    chli_cfmchfr(&_status,_sfreq,_sdate,_select,_tfreq,&_tdate,_relate)

    status[0] = _status
    tdate[0] = _tdate


def cfmclcn(status, connkey):
    '''MarketMap C-HLI cfmclcn'''
    cdef:
        int _status
        int _connkey

    _connkey = connkey

    chli_cfmclcn(&_status,_connkey)

    status[0] = _status


def cfmcldb(status, dbkey):
    '''MarketMap C-HLI cfmcldb'''
    cdef:
        int _status
        int _dbkey

    _dbkey = dbkey

    chli_cfmcldb(&_status,_dbkey)

    status[0] = _status


def cfmcmmt(status, connkey):
    '''MarketMap C-HLI cfmcmmt'''
    cdef:
        int _status
        int _connkey

    _connkey = connkey

    chli_cfmcmmt(&_status,_connkey)

    status[0] = _status


def cfmcpob(status, srckey, tarkey, srcnam, tarnam):
    '''MarketMap C-HLI cfmcpob'''
    cdef:
        int _status
        int _srckey
        int _tarkey
        char *_srcnam
        char *_tarnam

    _srckey = srckey
    _tarkey = tarkey
    _srcnam = strdup(srcnam[0].encode("UTF-8"))
    _tarnam = strdup(tarnam[0].encode("UTF-8"))

    chli_cfmcpob(&_status,_srckey,_tarkey,_srcnam,_tarnam)

    status[0] = _status
    srcnam[0] = _srcnam.decode("UTF-8")
    free(_srcnam)
    tarnam[0] = _tarnam.decode("UTF-8")
    free(_tarnam)


def cfmdatd(status, freq, date, year, month, day):
    '''MarketMap C-HLI cfmdatd'''
    cdef:
        int _status
        int _freq
        int _date
        int _year
        int _month
        int _day

    _freq = freq
    _date = date
    _year = year[0]
    _month = month[0]
    _day = day[0]

    chli_cfmdatd(&_status,_freq,_date,&_year,&_month,&_day)

    status[0] = _status
    year[0] = _year
    month[0] = _month
    day[0] = _day


def cfmdatf(status, freq, date, year, period, fmonth, flabel):
    '''MarketMap C-HLI cfmdatf'''
    cdef:
        int _status
        int _freq
        int _date
        int _year
        int _period
        int _fmonth
        int _flabel

    _freq = freq
    _date = date
    _year = year[0]
    _period = period[0]
    _fmonth = fmonth
    _flabel = flabel

    chli_cfmdatf(&_status,_freq,_date,&_year,&_period,_fmonth,_flabel)

    status[0] = _status
    year[0] = _year
    period[0] = _period


def cfmdati(status, freq, date, datstr, image, fmonth, flabel):
    '''MarketMap C-HLI cfmdati'''
    cdef:
        int _status
        int _freq
        int _date
        char *_datstr
        char *_image
        int _fmonth
        int _flabel

    _freq = freq
    _date = date
    _datstr = strdup(datstr[0].encode("UTF-8"))
    _image = strdup(image[0].encode("UTF-8"))
    _fmonth = fmonth
    _flabel = flabel

    chli_cfmdati(&_status,_freq,_date,_datstr,_image,_fmonth,_flabel)

    status[0] = _status
    datstr[0] = _datstr.decode("UTF-8")
    free(_datstr)
    image[0] = _image.decode("UTF-8")
    free(_image)


def cfmdatl(status, freq, date, datstr, fmonth, flabel):
    '''MarketMap C-HLI cfmdatl'''
    cdef:
        int _status
        int _freq
        int _date
        char *_datstr
        int _fmonth
        int _flabel

    _freq = freq
    _date = date
    _datstr = strdup(datstr[0].encode("UTF-8"))
    _fmonth = fmonth
    _flabel = flabel

    chli_cfmdatl(&_status,_freq,_date,_datstr,_fmonth,_flabel)

    status[0] = _status
    datstr[0] = _datstr.decode("UTF-8")
    free(_datstr)


def cfmdatp(status, freq, date, year, period):
    '''MarketMap C-HLI cfmdatp'''
    cdef:
        int _status
        int _freq
        int _date
        int _year
        int _period

    _freq = freq
    _date = date
    _year = year[0]
    _period = period[0]

    chli_cfmdatp(&_status,_freq,_date,&_year,&_period)

    status[0] = _status
    year[0] = _year
    period[0] = _period


def cfmdatt(status, freq, date, hour, minute, second, ddate):
    '''MarketMap C-HLI cfmdatt'''
    cdef:
        int _status
        int _freq
        int _date
        int _hour
        int _minute
        int _second
        int _ddate

    _freq = freq
    _date = date
    _hour = hour[0]
    _minute = minute[0]
    _second = second[0]
    _ddate = ddate[0]

    chli_cfmdatt(&_status,_freq,_date,&_hour,&_minute,&_second,&_ddate)

    status[0] = _status
    hour[0] = _hour
    minute[0] = _minute
    second[0] = _second
    ddate[0] = _ddate


def cfmddat(status, freq, date, year, month, day):
    '''MarketMap C-HLI cfmddat'''
    cdef:
        int _status
        int _freq
        int _date
        int _year
        int _month
        int _day

    _freq = freq
    _date = date[0]
    _year = year
    _month = month
    _day = day

    chli_cfmddat(&_status,_freq,&_date,_year,_month,_day)

    status[0] = _status
    date[0] = _date


def cfmddes(status, dbkey, des):
    '''MarketMap C-HLI cfmddes'''
    cdef:
        int _status
        int _dbkey
        char *_des

    _dbkey = dbkey
    _des = strdup(des[0].encode("UTF-8"))

    chli_cfmddes(&_status,_dbkey,_des)

    status[0] = _status
    des[0] = _des.decode("UTF-8")
    free(_des)


def cfmddoc(status, dbkey, doc):
    '''MarketMap C-HLI cfmddoc'''
    cdef:
        int _status
        int _dbkey
        char *_doc

    _dbkey = dbkey
    _doc = strdup(doc[0].encode("UTF-8"))

    chli_cfmddoc(&_status,_dbkey,_doc)

    status[0] = _status
    doc[0] = _doc.decode("UTF-8")
    free(_doc)


def cfmdlen(status, dbkey, objnam, deslen, doclen):
    '''MarketMap C-HLI cfmdlen'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _deslen
        int _doclen

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _deslen = deslen[0]
    _doclen = doclen[0]

    chli_cfmdlen(&_status,_dbkey,_objnam,&_deslen,&_doclen)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    deslen[0] = _deslen
    doclen[0] = _doclen


def cfmdlob(status, dbkey, objnam):
    '''MarketMap C-HLI cfmdlob'''
    cdef:
        int _status
        int _dbkey
        char *_objnam

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    chli_cfmdlob(&_status,_dbkey,_objnam)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)


def cfmexpiration(status, date):
    '''MarketMap C-HLI cfmexpiration'''
    cdef:
        int _status
        int _date

    _date = date[0]

    chli_cfmexpiration(&_status,&_date)

    status[0] = _status
    date[0] = _date


def cfmfame(status, cmd):
    '''MarketMap C-HLI cfmfame'''
    cdef:
        int _status
        char *_cmd

    _cmd = strdup(cmd[0].encode("UTF-8"))

    chli_cfmfame(&_status,_cmd)

    status[0] = _status
    cmd[0] = _cmd.decode("UTF-8")
    free(_cmd)


def cfmfdat(status, freq, date, year, period, fmonth, flabel):
    '''MarketMap C-HLI cfmfdat'''
    cdef:
        int _status
        int _freq
        int _date
        int _year
        int _period
        int _fmonth
        int _flabel

    _freq = freq
    _date = date[0]
    _year = year
    _period = period
    _fmonth = fmonth
    _flabel = flabel

    chli_cfmfdat(&_status,_freq,&_date,_year,_period,_fmonth,_flabel)

    status[0] = _status
    date[0] = _date


def cfmfdiv(status, freq1, freq2, flag):
    '''MarketMap C-HLI cfmfdiv'''
    cdef:
        int _status
        int _freq1
        int _freq2
        int _flag

    _freq1 = freq1
    _freq2 = freq2
    _flag = flag[0]

    chli_cfmfdiv(&_status,_freq1,_freq2,&_flag)

    status[0] = _status
    flag[0] = _flag


def cfmferr(status, errtxt):
    '''MarketMap C-HLI cfmferr'''
    cdef:
        int _status
        char *_errtxt

    _errtxt = strdup(errtxt[0].encode("UTF-8"))

    chli_cfmferr(&_status,_errtxt)

    status[0] = _status
    errtxt[0] = _errtxt.decode("UTF-8")
    free(_errtxt)


def cfmfin(status):
    '''MarketMap C-HLI cfmfin'''
    cdef:
        int _status

    chli_cfmfin(&_status)

    status[0] = _status


def cfmgcid(status, dbkey, connkey):
    '''MarketMap C-HLI cfmgcid'''
    cdef:
        int _status
        int _dbkey
        int _connkey

    _dbkey = dbkey
    _connkey = connkey[0]

    chli_cfmgcid(&_status,_dbkey,&_connkey)

    status[0] = _status
    connkey[0] = _connkey


def cfmgdat(status, dbkey, objnam, freq, cdate, mdate):
    '''MarketMap C-HLI cfmgdat'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _freq
        int _cdate
        int _mdate

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _freq = freq
    _cdate = cdate[0]
    _mdate = mdate[0]

    chli_cfmgdat(&_status,_dbkey,_objnam,_freq,&_cdate,&_mdate)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    cdate[0] = _cdate
    mdate[0] = _mdate


def cfmgdba(status, dbkey, cyear, cmonth, cday, myear, mmonth, mday, desc, doc):
    '''MarketMap C-HLI cfmgdba'''
    cdef:
        int _status
        int _dbkey
        int _cyear
        int _cmonth
        int _cday
        int _myear
        int _mmonth
        int _mday
        char *_desc
        char *_doc

    _dbkey = dbkey
    _cyear = cyear[0]
    _cmonth = cmonth[0]
    _cday = cday[0]
    _myear = myear[0]
    _mmonth = mmonth[0]
    _mday = mday[0]
    _desc = strdup(desc[0].encode("UTF-8"))
    _doc = strdup(doc[0].encode("UTF-8"))

    chli_cfmgdba(&_status,_dbkey,&_cyear,&_cmonth,&_cday,&_myear,&_mmonth,&_mday,_desc,_doc)

    status[0] = _status
    cyear[0] = _cyear
    cmonth[0] = _cmonth
    cday[0] = _cday
    myear[0] = _myear
    mmonth[0] = _mmonth
    mday[0] = _mday
    desc[0] = _desc.decode("UTF-8")
    free(_desc)
    doc[0] = _doc.decode("UTF-8")
    free(_doc)


def cfmgdbd(status, dbkey, freq, cdate, mdate):
    '''MarketMap C-HLI cfmgdbd'''
    cdef:
        int _status
        int _dbkey
        int _freq
        int _cdate
        int _mdate

    _dbkey = dbkey
    _freq = freq
    _cdate = cdate[0]
    _mdate = mdate[0]

    chli_cfmgdbd(&_status,_dbkey,_freq,&_cdate,&_mdate)

    status[0] = _status
    cdate[0] = _cdate
    mdate[0] = _mdate


def cfmget_dimension(status, dbkey, dimen):
    '''MarketMap C-HLI cfmget_dimension'''
    cdef:
        int _status
        int _dbkey
        int _dimen

    _dbkey = dbkey
    _dimen = dimen[0]

    chli_cfmget_dimension(&_status,_dbkey,&_dimen)

    status[0] = _status
    dimen[0] = _dimen


def cfmget_extradots(status, dbkey, xdots):
    '''MarketMap C-HLI cfmget_extradots'''
    cdef:
        int _status
        int _dbkey
        int _xdots

    _dbkey = dbkey
    _xdots = xdots[0]

    chli_cfmget_extradots(&_status,_dbkey,&_xdots)

    status[0] = _status
    xdots[0] = _xdots


def cfmglen(status, dbkey, deslen, doclen):
    '''MarketMap C-HLI cfmglen'''
    cdef:
        int _status
        int _dbkey
        int _deslen
        int _doclen

    _dbkey = dbkey
    _deslen = deslen[0]
    _doclen = doclen[0]

    chli_cfmglen(&_status,_dbkey,&_deslen,&_doclen)

    status[0] = _status
    deslen[0] = _deslen
    doclen[0] = _doclen


def cfmgnam(status, dbkey, objnam, basnam):
    '''MarketMap C-HLI cfmgnam'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_basnam

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _basnam = strdup(basnam[0].encode("UTF-8"))

    chli_cfmgnam(&_status,_dbkey,_objnam,_basnam)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    basnam[0] = _basnam.decode("UTF-8")
    free(_basnam)


def cfmgsln(status, dbkey, objnam, length):
    '''MarketMap C-HLI cfmgsln'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _length

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _length = length[0]

    chli_cfmgsln(&_status,_dbkey,_objnam,&_length)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    length[0] = _length


def cfmgtali(status, dbkey, objnam, aliass, inlen, outlen):
    '''MarketMap C-HLI cfmgtali'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_aliass
        int _inlen
        int _outlen

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _aliass = strdup(aliass[0].encode("UTF-8"))
    _inlen = inlen
    _outlen = outlen[0]

    chli_cfmgtali(&_status,_dbkey,_objnam,_aliass,_inlen,&_outlen)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    aliass[0] = _aliass.decode("UTF-8")
    free(_aliass)
    outlen[0] = _outlen


def cfmgtaso(status, dbkey, objnam, assoc, inlen, outlen):
    '''MarketMap C-HLI cfmgtaso'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_assoc
        int _inlen
        int _outlen

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _assoc = strdup(assoc[0].encode("UTF-8"))
    _inlen = inlen
    _outlen = outlen[0]

    chli_cfmgtaso(&_status,_dbkey,_objnam,_assoc,_inlen,&_outlen)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    assoc[0] = _assoc.decode("UTF-8")
    free(_assoc)
    outlen[0] = _outlen


def cfmgtatt_char(status, dbkey, objnam, atttyp, attnam, value, inlen, outlen):
    '''MarketMap C-HLI cfmgtatt_char'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _atttyp
        char *_attnam
        char *_value
        int _inlen
        int _outlen

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _atttyp = atttyp[0]
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = value[0]
    _inlen = inlen
    _outlen = outlen[0]

    chli_cfmgtatt_f(&_status,_dbkey,_objnam,&_atttyp,_attnam,_value,_inlen,&_outlen)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    atttyp[0] = _atttyp
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    value[0] = _value
    outlen[0] = _outlen


def cfmgtatt_double(status, dbkey, objnam, atttyp, attnam, value, inlen, outlen):
    '''MarketMap C-HLI cfmgtatt_double'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _atttyp
        char *_attnam
        double _value
        int _inlen
        int _outlen

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _atttyp = atttyp[0]
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = value[0]
    _inlen = inlen
    _outlen = outlen[0]

    chli_cfmgtatt_f(&_status,_dbkey,_objnam,&_atttyp,_attnam,&_value,_inlen,&_outlen)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    atttyp[0] = _atttyp
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    value[0] = _value
    outlen[0] = _outlen


def cfmgtatt_float(status, dbkey, objnam, atttyp, attnam, value, inlen, outlen):
    '''MarketMap C-HLI cfmgtatt_float'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _atttyp
        char *_attnam
        float _value
        int _inlen
        int _outlen

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _atttyp = atttyp[0]
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = value[0]
    _inlen = inlen
    _outlen = outlen[0]

    chli_cfmgtatt_f(&_status,_dbkey,_objnam,&_atttyp,_attnam,&_value,_inlen,&_outlen)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    atttyp[0] = _atttyp
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    value[0] = _value
    outlen[0] = _outlen


def cfmgtatt_int(status, dbkey, objnam, atttyp, attnam, value, inlen, outlen):
    '''MarketMap C-HLI cfmgtatt_int'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _atttyp
        char *_attnam
        int _value
        int _inlen
        int _outlen

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _atttyp = atttyp[0]
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = value[0]
    _inlen = inlen
    _outlen = outlen[0]

    chli_cfmgtatt_f(&_status,_dbkey,_objnam,&_atttyp,_attnam,&_value,_inlen,&_outlen)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    atttyp[0] = _atttyp
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    value[0] = _value
    outlen[0] = _outlen


def cfmgtnl(status, dbkey, objnam, index, strval, inlen, outlen):
    '''MarketMap C-HLI cfmgtnl'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _index
        char *_strval
        int _inlen
        int _outlen

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _index = index
    _strval = strdup(strval[0].encode("UTF-8"))
    _inlen = inlen
    _outlen = outlen[0]

    chli_cfmgtnl(&_status,_dbkey,_objnam,_index,_strval,_inlen,&_outlen)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    strval[0] = _strval.decode("UTF-8")
    free(_strval)
    outlen[0] = _outlen


def cfmgtstr(status, dbkey, objnam, range_, strval, ismiss, inlen, outlen):
    '''MarketMap C-HLI cfmgtstr'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int *_range_ = NULL
        char *_strval
        int _ismiss
        int _inlen
        int _outlen

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <int *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]
    _strval = strdup(strval[0].encode("UTF-8"))
    _ismiss = ismiss[0]
    _inlen = inlen
    _outlen = outlen[0]

    chli_cfmgtstr(&_status,_dbkey,_objnam,NULL if range_ is None else _range_,_strval,&_ismiss,_inlen,&_outlen)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)
    strval[0] = _strval.decode("UTF-8")
    free(_strval)
    ismiss[0] = _ismiss
    outlen[0] = _outlen


def cfmgtsts(status, dbkey, objnam, range_, strary, misary, inlenary, outlenary):
    '''MarketMap C-HLI cfmgtsts'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int *_range_ = NULL
        char **_strary = NULL
        int *_misary = NULL
        int *_inlenary = NULL
        int *_outlenary = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <int *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _strary = <char **>malloc(sizeof(_strary[0])*(1 if strary is None else len(strary)))
    for i in range(0 if strary is None else len(strary)):
      _strary[i] = strdup(strary[i].encode("UTF-8"))

    _misary = <int *>malloc(sizeof(_misary[0])*(1 if misary is None else len(misary)))
    for i in range(0 if misary is None else len(misary)):
      _misary[i] = misary[i]

    _inlenary = <int *>malloc(sizeof(_inlenary[0])*(1 if inlenary is None else len(inlenary)))
    for i in range(0 if inlenary is None else len(inlenary)):
      _inlenary[i] = inlenary[i]

    _outlenary = <int *>malloc(sizeof(_outlenary[0])*(1 if outlenary is None else len(outlenary)))
    for i in range(0 if outlenary is None else len(outlenary)):
      _outlenary[i] = outlenary[i]

    chli_cfmgtsts(&_status,_dbkey,_objnam,NULL if range_ is None else _range_,_strary,_misary,_inlenary,_outlenary)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)

    for i in range(0 if strary is None else len(strary)):
      strary[i] = _strary[i].decode("UTF-8")
      free(_strary[i])
    free(_strary)

    for i in range(0 if misary is None else len(misary)):
      misary[i] = _misary[i]
    free(_misary)
    free(_inlenary)

    for i in range(0 if outlenary is None else len(outlenary)):
      outlenary[i] = _outlenary[i]
    free(_outlenary)


def cfmidat(status, freq, date, datstr, image, fmonth, flabel, centry):
    '''MarketMap C-HLI cfmidat'''
    cdef:
        int _status
        int _freq
        int _date
        char *_datstr
        char *_image
        int _fmonth
        int _flabel
        int _centry

    _freq = freq
    _date = date[0]
    _datstr = strdup(datstr[0].encode("UTF-8"))
    _image = strdup(image[0].encode("UTF-8"))
    _fmonth = fmonth
    _flabel = flabel
    _centry = centry

    chli_cfmidat(&_status,_freq,&_date,_datstr,_image,_fmonth,_flabel,_centry)

    status[0] = _status
    date[0] = _date
    datstr[0] = _datstr.decode("UTF-8")
    free(_datstr)
    image[0] = _image.decode("UTF-8")
    free(_image)


def cfmini(status):
    '''MarketMap C-HLI cfmini'''
    cdef:
        int _status

    chli_cfmini(&_status)
    
    status[0] = _status


def cfminwc(status, dbkey, wilnam):
    '''MarketMap C-HLI cfminwc'''
    cdef:
        int _status
        int _dbkey
        char *_wilnam

    _dbkey = dbkey
    _wilnam = strdup(wilnam[0].encode("UTF-8"))

    chli_cfminwc(&_status,_dbkey,_wilnam)

    status[0] = _status
    wilnam[0] = _wilnam.decode("UTF-8")
    free(_wilnam)


def cfmisbm(status, value, ismiss):
    '''MarketMap C-HLI cfmisbm'''
    cdef:
        int _status
        int _value
        int _ismiss

    _value = value
    _ismiss = ismiss[0]

    chli_cfmisbm(&_status,_value,&_ismiss)

    status[0] = _status
    ismiss[0] = _ismiss


def cfmisdm(status, value, ismiss):
    '''MarketMap C-HLI cfmisdm'''
    cdef:
        int _status
        int _value
        int _ismiss

    _value = value
    _ismiss = ismiss[0]

    chli_cfmisdm(&_status,_value,&_ismiss)

    status[0] = _status
    ismiss[0] = _ismiss


def cfmislp(status, year, leap):
    '''MarketMap C-HLI cfmislp'''
    cdef:
        int _status
        int _year
        int _leap

    _year = year
    _leap = leap[0]

    chli_cfmislp(&_status,_year,&_leap)

    status[0] = _status
    leap[0] = _leap


def cfmisnm(status, value, ismiss):
    '''MarketMap C-HLI cfmisnm'''
    cdef:
        int _status
        float _value
        int _ismiss

    _value = value
    _ismiss = ismiss[0]

    chli_cfmisnm(&_status,_value,&_ismiss)

    status[0] = _status
    ismiss[0] = _ismiss


def cfmispm(status, value, ismiss):
    '''MarketMap C-HLI cfmispm'''
    cdef:
        int _status
        double _value
        int _ismiss

    _value = value
    _ismiss = ismiss[0]

    chli_cfmispm(&_status,_value,&_ismiss)

    status[0] = _status
    ismiss[0] = _ismiss


def cfmissm(status, value, ismiss):
    '''MarketMap C-HLI cfmissm'''
    cdef:
        int _status
        char *_value
        int _ismiss

    _value = strdup(value[0].encode("UTF-8"))
    _ismiss = ismiss[0]

    chli_cfmissm(&_status,_value,&_ismiss)

    status[0] = _status
    value[0] = _value.decode("UTF-8")
    free(_value)
    ismiss[0] = _ismiss


def cfmlali(status, dbkey, objnam, alilen):
    '''MarketMap C-HLI cfmlali'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _alilen

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _alilen = alilen[0]

    chli_cfmlali(&_status,_dbkey,_objnam,&_alilen)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    alilen[0] = _alilen


def cfmlaso(status, dbkey, objnam, asolen):
    '''MarketMap C-HLI cfmlaso'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _asolen

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _asolen = asolen[0]

    chli_cfmlaso(&_status,_dbkey,_objnam,&_asolen)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    asolen[0] = _asolen


def cfmlatt(status, dbkey, objnam, atttyp, attnam, attlen):
    '''MarketMap C-HLI cfmlatt'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _atttyp
        char *_attnam
        int _attlen

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _atttyp = atttyp
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _attlen = attlen[0]

    chli_cfmlatt(&_status,_dbkey,_objnam,_atttyp,_attnam,&_attlen)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    attlen[0] = _attlen


def cfmldat(status, freq, date, datstr, fmonth, flabel, centry):
    '''MarketMap C-HLI cfmldat'''
    cdef:
        int _status
        int _freq
        int _date
        char *_datstr
        int _fmonth
        int _flabel
        int _centry

    _freq = freq
    _date = date[0]
    _datstr = strdup(datstr[0].encode("UTF-8"))
    _fmonth = fmonth
    _flabel = flabel
    _centry = centry

    chli_cfmldat(&_status,_freq,&_date,_datstr,_fmonth,_flabel,_centry)

    status[0] = _status
    date[0] = _date
    datstr[0] = _datstr.decode("UTF-8")
    free(_datstr)


def cfmlerr(status, len):
    '''MarketMap C-HLI cfmlerr'''
    cdef:
        int _status
        int _len

    _len = len[0]

    chli_cfmlerr(&_status,&_len)

    status[0] = _status
    len[0] = _len


def cfmlsts(status, dbkey, objnam, range_, lenary):
    '''MarketMap C-HLI cfmlsts'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int *_range_ = NULL
        int *_lenary = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <int *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _lenary = <int *>malloc(sizeof(_lenary[0])*(1 if lenary is None else len(lenary)))
    for i in range(0 if lenary is None else len(lenary)):
      _lenary[i] = lenary[i]

    chli_cfmlsts(&_status,_dbkey,_objnam,NULL if range_ is None else _range_,_lenary)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)

    for i in range(0 if lenary is None else len(lenary)):
      lenary[i] = _lenary[i]
    free(_lenary)


def cfmncnt(status, dbkey, objnam, length):
    '''MarketMap C-HLI cfmncnt'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _length

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _length = length[0]

    chli_cfmncnt(&_status,_dbkey,_objnam,&_length)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    length[0] = _length


def cfmnlen(status, dbkey, objnam, index, length):
    '''MarketMap C-HLI cfmnlen'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _index
        int _length

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _index = index
    _length = length[0]

    chli_cfmnlen(&_status,_dbkey,_objnam,_index,&_length)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    length[0] = _length


def cfmnwob(status, dbkey, objnam, class_, freq, type, basis, observ):
    '''MarketMap C-HLI cfmnwob'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _class_
        int _freq
        int _type
        int _basis
        int _observ

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _class_ = class_
    _freq = freq
    _type = type
    _basis = basis
    _observ = observ

    chli_cfmnwob(&_status,_dbkey,_objnam,_class_,_freq,_type,_basis,_observ)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)


def cfmnxwc(status, dbkey, objnam, class_, type, freq):
    '''MarketMap C-HLI cfmnxwc'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _class_
        int _type
        int _freq

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _class_ = class_[0]
    _type = type[0]
    _freq = freq[0]

    chli_cfmnxwc(&_status,_dbkey,_objnam,&_class_,&_type,&_freq)

    status[0] = _status
    if(_status == HSUCC):
        objnam[0] = _objnam.decode("UTF-8")
        class_[0] = _class_
        type[0] = _type
        freq[0] = _freq
    free(_objnam)


def cfmopcn(status, connkey, service, hostname, username, password):
    '''MarketMap C-HLI cfmopcn'''
    cdef:
        int _status
        int _connkey
        char *_service
        char *_hostname
        char *_username
        char *_password

    _connkey = connkey[0]
    _service = strdup(service[0].encode("UTF-8"))
    _hostname = strdup(hostname[0].encode("UTF-8"))
    _username = strdup(username[0].encode("UTF-8"))
    _password = strdup(password[0].encode("UTF-8"))

    chli_cfmopcn(&_status,&_connkey,_service,_hostname,_username,_password)

    status[0] = _status
    connkey[0] = _connkey
    service[0] = _service.decode("UTF-8")
    free(_service)
    hostname[0] = _hostname.decode("UTF-8")
    free(_hostname)
    username[0] = _username.decode("UTF-8")
    free(_username)
    password[0] = _password.decode("UTF-8")
    free(_password)


def cfmopdb(status, dbkey, dbname, mode):
    '''MarketMap C-HLI cfmopdb'''
    cdef:
        int _status
        int _dbkey
        char *_dbname
        int _mode

    _dbkey = dbkey[0]
    _dbname = strdup(dbname[0].encode("UTF-8"))
    _mode = mode

    chli_cfmopdb(&_status,&_dbkey,_dbname,_mode)

    status[0] = _status
    dbkey[0] = _dbkey
    dbname[0] = _dbname.decode("UTF-8")
    free(_dbname)


def cfmopdc(status, dbkey, dbname, mode, connkey):
    '''MarketMap C-HLI cfmopdc'''
    cdef:
        int _status
        int _dbkey
        char *_dbname
        int _mode
        int _connkey

    _dbkey = dbkey[0]
    _dbname = strdup(dbname[0].encode("UTF-8"))
    _mode = mode
    _connkey = connkey

    chli_cfmopdc(&_status,&_dbkey,_dbname,_mode,_connkey)

    status[0] = _status
    dbkey[0] = _dbkey
    dbname[0] = _dbname.decode("UTF-8")
    free(_dbname)


def cfmoprc(status, dbkey, connkey):
    '''MarketMap C-HLI cfmoprc'''
    cdef:
        int _status
        int _dbkey
        int _connkey

    _dbkey = dbkey[0]
    _connkey = connkey

    chli_cfmoprc(&_status,&_dbkey,_connkey)

    status[0] = _status
    dbkey[0] = _dbkey


def cfmopre(status, dbkey, svname):
    '''MarketMap C-HLI cfmopre'''
    cdef:
        int _status
        int _dbkey
        char *_svname

    _dbkey = dbkey[0]
    _svname = strdup(svname[0].encode("UTF-8"))

    chli_cfmopre(&_status,&_dbkey,_svname)

    status[0] = _status
    dbkey[0] = _dbkey
    svname[0] = _svname.decode("UTF-8")
    free(_svname)


def cfmopwk(status, dbkey):
    '''MarketMap C-HLI cfmopwk'''
    cdef:
        int _status
        int _dbkey

    _dbkey = dbkey[0]

    chli_cfmopwk(&_status,&_dbkey)

    status[0] = _status
    dbkey[0] = _dbkey


def cfmosiz(status, dbkey, objnam, class_, type, freq, fyear, fprd, lyear, lprd):
    '''MarketMap C-HLI cfmosiz'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _class_
        int _type
        int _freq
        int _fyear
        int _fprd
        int _lyear
        int _lprd

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _class_ = class_[0]
    _type = type[0]
    _freq = freq[0]
    _fyear = fyear[0]
    _fprd = fprd[0]
    _lyear = lyear[0]
    _lprd = lprd[0]

    chli_cfmosiz(&_status,_dbkey,_objnam,&_class_,&_type,&_freq,&_fyear,&_fprd,&_lyear,&_lprd)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    class_[0] = _class_
    type[0] = _type
    freq[0] = _freq
    fyear[0] = _fyear
    fprd[0] = _fprd
    lyear[0] = _lyear
    lprd[0] = _lprd


def cfmpack(status, dbkey):
    '''MarketMap C-HLI cfmpack'''
    cdef:
        int _status
        int _dbkey

    _dbkey = dbkey

    chli_cfmpack(&_status,_dbkey)

    status[0] = _status


def cfmpdat(status, freq, date, year, period):
    '''MarketMap C-HLI cfmpdat'''
    cdef:
        int _status
        int _freq
        int _date
        int _year
        int _period

    _freq = freq
    _date = date[0]
    _year = year
    _period = period

    chli_cfmpdat(&_status,_freq,&_date,_year,_period)

    status[0] = _status
    date[0] = _date


def cfmpfrq(status, freq, base, nunits, year, month):
    '''MarketMap C-HLI cfmpfrq'''
    cdef:
        int _status
        int _freq
        int _base
        int _nunits
        int _year
        int _month

    _freq = freq[0]
    _base = base
    _nunits = nunits
    _year = year
    _month = month

    chli_cfmpfrq(&_status,&_freq,_base,_nunits,_year,_month)

    status[0] = _status
    freq[0] = _freq


def cfmpind(status, freq, count):
    '''MarketMap C-HLI cfmpind'''
    cdef:
        int _status
        int _freq
        int _count

    _freq = freq
    _count = count[0]

    chli_cfmpind(&_status,_freq,&_count)

    status[0] = _status
    count[0] = _count


def cfmpinm(status, freq, year, month, count):
    '''MarketMap C-HLI cfmpinm'''
    cdef:
        int _status
        int _freq
        int _year
        int _month
        int _count

    _freq = freq
    _year = year
    _month = month
    _count = count[0]

    chli_cfmpinm(&_status,_freq,_year,_month,&_count)

    status[0] = _status
    count[0] = _count


def cfmpiny(status, freq, year, count):
    '''MarketMap C-HLI cfmpiny'''
    cdef:
        int _status
        int _freq
        int _year
        int _count

    _freq = freq
    _year = year
    _count = count[0]

    chli_cfmpiny(&_status,_freq,_year,&_count)

    status[0] = _status
    count[0] = _count


def cfmpodb(status, dbkey):
    '''MarketMap C-HLI cfmpodb'''
    cdef:
        int _status
        int _dbkey

    _dbkey = dbkey

    chli_cfmpodb(&_status,_dbkey)

    status[0] = _status


def cfmrdfa_double(status, dbkey, objnam, wntobs, syear, sprd, gotobs, valary, tmiss, mistt):
    '''MarketMap C-HLI cfmrdfa_double'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _wntobs
        int _syear
        int _sprd
        int _gotobs
        double *_valary = NULL
        int _tmiss
        double *_mistt = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _wntobs = wntobs
    _syear = syear[0]
    _sprd = sprd[0]
    _gotobs = gotobs[0]

    _valary = <double *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]
    _tmiss = tmiss

    _mistt = <double *>malloc(sizeof(_mistt[0])*(1 if mistt is None else len(mistt)))
    for i in range(0 if mistt is None else len(mistt)):
      _mistt[i] = mistt[i]

    chli_cfmrdfa_f(&_status,_dbkey,_objnam,_wntobs,&_syear,&_sprd,&_gotobs,_valary,_tmiss,_mistt)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    syear[0] = _syear
    sprd[0] = _sprd
    gotobs[0] = _gotobs

    for i in range(0 if valary is None else len(valary)):
      valary[i] = _valary[i]
    free(_valary)

    for i in range(0 if mistt is None else len(mistt)):
      mistt[i] = _mistt[i]
    free(_mistt)


def cfmrdfa_float(status, dbkey, objnam, wntobs, syear, sprd, gotobs, valary, tmiss, mistt):
    '''MarketMap C-HLI cfmrdfa_float'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _wntobs
        int _syear
        int _sprd
        int _gotobs
        float *_valary = NULL
        int _tmiss
        float *_mistt = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _wntobs = wntobs
    _syear = syear[0]
    _sprd = sprd[0]
    _gotobs = gotobs[0]

    _valary = <float *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]
    _tmiss = tmiss

    _mistt = <float *>malloc(sizeof(_mistt[0])*(1 if mistt is None else len(mistt)))
    for i in range(0 if mistt is None else len(mistt)):
      _mistt[i] = mistt[i]

    chli_cfmrdfa_f(&_status,_dbkey,_objnam,_wntobs,&_syear,&_sprd,&_gotobs,_valary,_tmiss,_mistt)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    syear[0] = _syear
    sprd[0] = _sprd
    gotobs[0] = _gotobs

    for i in range(0 if valary is None else len(valary)):
      valary[i] = _valary[i]
    free(_valary)

    for i in range(0 if mistt is None else len(mistt)):
      mistt[i] = _mistt[i]
    free(_mistt)


def cfmrdfa_int(status, dbkey, objnam, wntobs, syear, sprd, gotobs, valary, tmiss, mistt):
    '''MarketMap C-HLI cfmrdfa_int'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _wntobs
        int _syear
        int _sprd
        int _gotobs
        int *_valary = NULL
        int _tmiss
        int *_mistt = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _wntobs = wntobs
    _syear = syear[0]
    _sprd = sprd[0]
    _gotobs = gotobs[0]

    _valary = <int *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]
    _tmiss = tmiss

    _mistt = <int *>malloc(sizeof(_mistt[0])*(1 if mistt is None else len(mistt)))
    for i in range(0 if mistt is None else len(mistt)):
      _mistt[i] = mistt[i]

    chli_cfmrdfa_f(&_status,_dbkey,_objnam,_wntobs,&_syear,&_sprd,&_gotobs,_valary,_tmiss,_mistt)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    syear[0] = _syear
    sprd[0] = _sprd
    gotobs[0] = _gotobs

    for i in range(0 if valary is None else len(valary)):
      valary[i] = _valary[i]
    free(_valary)

    for i in range(0 if mistt is None else len(mistt)):
      mistt[i] = _mistt[i]
    free(_mistt)


def cfmrdfm(status, dbkey, objnam, source, ilen, olen):
    '''MarketMap C-HLI cfmrdfm'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_source
        int _ilen
        int _olen

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _source = strdup(source[0].encode("UTF-8"))
    _ilen = ilen
    _olen = olen[0]

    chli_cfmrdfm(&_status,_dbkey,_objnam,_source,_ilen,&_olen)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    source[0] = _source.decode("UTF-8")
    free(_source)
    olen[0] = _olen


def cfmrmev(status, dbkey, expr, optns, wdbkey, objnam):
    '''MarketMap C-HLI cfmrmev'''
    cdef:
        int _status
        int _dbkey
        char *_expr
        char *_optns
        int _wdbkey
        char *_objnam

    _dbkey = dbkey
    _expr = strdup(expr[0].encode("UTF-8"))
    _optns = strdup(optns[0].encode("UTF-8"))
    _wdbkey = wdbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    chli_cfmrmev(&_status,_dbkey,_expr,_optns,_wdbkey,_objnam)

    status[0] = _status
    expr[0] = _expr.decode("UTF-8")
    free(_expr)
    optns[0] = _optns.decode("UTF-8")
    free(_optns)
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)


def cfmrnob(status, dbkey, srcnam, tarnam):
    '''MarketMap C-HLI cfmrnob'''
    cdef:
        int _status
        int _dbkey
        char *_srcnam
        char *_tarnam

    _dbkey = dbkey
    _srcnam = strdup(srcnam[0].encode("UTF-8"))
    _tarnam = strdup(tarnam[0].encode("UTF-8"))

    chli_cfmrnob(&_status,_dbkey,_srcnam,_tarnam)

    status[0] = _status
    srcnam[0] = _srcnam.decode("UTF-8")
    free(_srcnam)
    tarnam[0] = _tarnam.decode("UTF-8")
    free(_tarnam)


def cfmrrng_double(status, dbkey, objnam, range_, valary, tmiss, mistt):
    '''MarketMap C-HLI cfmrrng_double'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int *_range_ = NULL
        double *_valary = NULL
        int _tmiss
        double *_mistt = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <int *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _valary = <double *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]
    _tmiss = tmiss

    _mistt = <double *>malloc(sizeof(_mistt[0])*(1 if mistt is None else len(mistt)))
    for i in range(0 if mistt is None else len(mistt)):
      _mistt[i] = mistt[i]

    chli_cfmrrng_f(&_status,_dbkey,_objnam,NULL if range_ is None else _range_,_valary,_tmiss,_mistt)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)

    for i in range(0 if valary is None else len(valary)):
      valary[i] = _valary[i]
    free(_valary)

    for i in range(0 if mistt is None else len(mistt)):
      mistt[i] = _mistt[i]
    free(_mistt)


def cfmrrng_float(status, dbkey, objnam, range_, valary, tmiss, mistt):
    '''MarketMap C-HLI cfmrrng_float'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int *_range_ = NULL
        float *_valary = NULL
        int _tmiss
        float *_mistt = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <int *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _valary = <float *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]
    _tmiss = tmiss

    _mistt = <float *>malloc(sizeof(_mistt[0])*(1 if mistt is None else len(mistt)))
    for i in range(0 if mistt is None else len(mistt)):
      _mistt[i] = mistt[i]

    chli_cfmrrng_f(&_status,_dbkey,_objnam,NULL if range_ is None else _range_,_valary,_tmiss,_mistt)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)

    for i in range(0 if valary is None else len(valary)):
      valary[i] = _valary[i]
    free(_valary)

    for i in range(0 if mistt is None else len(mistt)):
      mistt[i] = _mistt[i]
    free(_mistt)


def cfmrrng_int(status, dbkey, objnam, range_, valary, tmiss, mistt):
    '''MarketMap C-HLI cfmrrng_int'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int *_range_ = NULL
        int *_valary = NULL
        int _tmiss
        int *_mistt = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <int *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _valary = <int *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]
    _tmiss = tmiss

    _mistt = <int *>malloc(sizeof(_mistt[0])*(1 if mistt is None else len(mistt)))
    for i in range(0 if mistt is None else len(mistt)):
      _mistt[i] = mistt[i]

    chli_cfmrrng_f(&_status,_dbkey,_objnam,NULL if range_ is None else _range_,_valary,_tmiss,_mistt)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)

    for i in range(0 if valary is None else len(valary)):
      valary[i] = _valary[i]
    free(_valary)

    for i in range(0 if mistt is None else len(mistt)):
      mistt[i] = _mistt[i]
    free(_mistt)


def cfmrsdb(status, dbkey):
    '''MarketMap C-HLI cfmrsdb'''
    cdef:
        int _status
        int _dbkey

    _dbkey = dbkey

    chli_cfmrsdb(&_status,_dbkey)

    status[0] = _status


def cfmsali(status, dbkey, objnam, aliass):
    '''MarketMap C-HLI cfmsali'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_aliass

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _aliass = strdup(aliass[0].encode("UTF-8"))

    chli_cfmsali(&_status,_dbkey,_objnam,_aliass)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    aliass[0] = _aliass.decode("UTF-8")
    free(_aliass)


def cfmsaso(status, dbkey, objnam, assoc):
    '''MarketMap C-HLI cfmsaso'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_assoc

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _assoc = strdup(assoc[0].encode("UTF-8"))

    chli_cfmsaso(&_status,_dbkey,_objnam,_assoc)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    assoc[0] = _assoc.decode("UTF-8")
    free(_assoc)


def cfmsatt_char(status, dbkey, objnam, atttyp, attnam, value):
    '''MarketMap C-HLI cfmsatt_char'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _atttyp
        char *_attnam
        char *_value

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _atttyp = atttyp
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = value[0]

    chli_cfmsatt_f(&_status,_dbkey,_objnam,_atttyp,_attnam,_value)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    value[0] = _value


def cfmsatt_double(status, dbkey, objnam, atttyp, attnam, value):
    '''MarketMap C-HLI cfmsatt_double'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _atttyp
        char *_attnam
        double _value

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _atttyp = atttyp
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = value[0]

    chli_cfmsatt_f(&_status,_dbkey,_objnam,_atttyp,_attnam,&_value)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    value[0] = _value


def cfmsatt_float(status, dbkey, objnam, atttyp, attnam, value):
    '''MarketMap C-HLI cfmsatt_float'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _atttyp
        char *_attnam
        float _value

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _atttyp = atttyp
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = value[0]

    chli_cfmsatt_f(&_status,_dbkey,_objnam,_atttyp,_attnam,&_value)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    value[0] = _value


def cfmsatt_int(status, dbkey, objnam, atttyp, attnam, value):
    '''MarketMap C-HLI cfmsatt_int'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _atttyp
        char *_attnam
        int _value

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _atttyp = atttyp
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = value[0]

    chli_cfmsatt_f(&_status,_dbkey,_objnam,_atttyp,_attnam,&_value)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    value[0] = _value


def cfmsbas(status, dbkey, objnam, basis):
    '''MarketMap C-HLI cfmsbas'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _basis

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _basis = basis

    chli_cfmsbas(&_status,_dbkey,_objnam,_basis)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)


def cfmsbm(status, nctran, ndtran, natran, bmistt):
    '''MarketMap C-HLI cfmsbm'''
    cdef:
        int _status
        int _nctran
        int _ndtran
        int _natran
        int *_bmistt = NULL

    _nctran = nctran
    _ndtran = ndtran
    _natran = natran

    _bmistt = <int *>malloc(sizeof(_bmistt[0])*(1 if bmistt is None else len(bmistt)))
    for i in range(0 if bmistt is None else len(bmistt)):
      _bmistt[i] = bmistt[i]

    chli_cfmsbm(&_status,_nctran,_ndtran,_natran,_bmistt)

    status[0] = _status

    for i in range(0 if bmistt is None else len(bmistt)):
      bmistt[i] = _bmistt[i]
    free(_bmistt)


def cfmsdes(status, dbkey, objnam, desc):
    '''MarketMap C-HLI cfmsdes'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_desc

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _desc = strdup(desc[0].encode("UTF-8"))

    chli_cfmsdes(&_status,_dbkey,_objnam,_desc)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    desc[0] = _desc.decode("UTF-8")
    free(_desc)


def cfmsdm(status, nctran, ndtran, natran, dmistt):
    '''MarketMap C-HLI cfmsdm'''
    cdef:
        int _status
        int _nctran
        int _ndtran
        int _natran
        int *_dmistt = NULL

    _nctran = nctran
    _ndtran = ndtran
    _natran = natran

    _dmistt = <int *>malloc(sizeof(_dmistt[0])*(1 if dmistt is None else len(dmistt)))
    for i in range(0 if dmistt is None else len(dmistt)):
      _dmistt[i] = dmistt[i]

    chli_cfmsdm(&_status,_nctran,_ndtran,_natran,_dmistt)

    status[0] = _status

    for i in range(0 if dmistt is None else len(dmistt)):
      dmistt[i] = _dmistt[i]
    free(_dmistt)


def cfmsdoc(status, dbkey, objnam, doc):
    '''MarketMap C-HLI cfmsdoc'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_doc

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _doc = strdup(doc[0].encode("UTF-8"))

    chli_cfmsdoc(&_status,_dbkey,_objnam,_doc)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    doc[0] = _doc.decode("UTF-8")
    free(_doc)


def cfmset_dimension(status, dbkey, dimen):
    '''MarketMap C-HLI cfmset_dimension'''
    cdef:
        int _status
        int _dbkey
        int _dimen

    _dbkey = dbkey
    _dimen = dimen

    chli_cfmset_dimension(&_status,_dbkey,_dimen)

    status[0] = _status


def cfmset_extradots(status, dbkey, xdots):
    '''MarketMap C-HLI cfmset_extradots'''
    cdef:
        int _status
        int _dbkey
        int _xdots

    _dbkey = dbkey
    _xdots = xdots

    chli_cfmset_extradots(&_status,_dbkey,_xdots)

    status[0] = _status


def cfmsfis(status, freq, syear, sprd, eyear, eprd, range_, numobs, fmonth, flabel):
    '''MarketMap C-HLI cfmsfis'''
    cdef:
        int _status
        int _freq
        int _syear
        int _sprd
        int _eyear
        int _eprd
        int *_range_ = NULL
        int _numobs
        int _fmonth
        int _flabel

    _freq = freq
    _syear = syear[0]
    _sprd = sprd[0]
    _eyear = eyear[0]
    _eprd = eprd[0]

    _range_ = <int *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]
    _numobs = numobs[0]
    _fmonth = fmonth
    _flabel = flabel

    chli_cfmsfis(&_status,_freq,&_syear,&_sprd,&_eyear,&_eprd,NULL if range_ is None else _range_,&_numobs,_fmonth,_flabel)

    status[0] = _status
    syear[0] = _syear
    sprd[0] = _sprd
    eyear[0] = _eyear
    eprd[0] = _eprd

    for i in range(0 if range_ is None else len(range_)):
      range_[i] = _range_[i]
    free(_range_)
    numobs[0] = _numobs


def cfmsinp(status, cmd):
    '''MarketMap C-HLI cfmsinp'''
    cdef:
        int _status
        char *_cmd

    _cmd = strdup(cmd[0].encode("UTF-8"))

    chli_cfmsinp(&_status,_cmd)

    status[0] = _status
    cmd[0] = _cmd.decode("UTF-8")
    free(_cmd)


def cfmsnm(status, nctran, ndtran, natran, nmistt):
    '''MarketMap C-HLI cfmsnm'''
    cdef:
        int _status
        float _nctran
        float _ndtran
        float _natran
        float *_nmistt = NULL

    _nctran = nctran
    _ndtran = ndtran
    _natran = natran

    _nmistt = <float *>malloc(sizeof(_nmistt[0])*(1 if nmistt is None else len(nmistt)))
    for i in range(0 if nmistt is None else len(nmistt)):
      _nmistt[i] = nmistt[i]

    chli_cfmsnm(&_status,_nctran,_ndtran,_natran,_nmistt)

    status[0] = _status

    for i in range(0 if nmistt is None else len(nmistt)):
      nmistt[i] = _nmistt[i]
    free(_nmistt)


def cfmsobs(status, dbkey, objnam, observ):
    '''MarketMap C-HLI cfmsobs'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _observ

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _observ = observ

    chli_cfmsobs(&_status,_dbkey,_objnam,_observ)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)


def cfmsopt(status, optnam, optval):
    '''MarketMap C-HLI cfmsopt'''
    cdef:
        int _status
        char *_optnam
        char *_optval

    _optnam = strdup(optnam[0].encode("UTF-8"))
    _optval = strdup(optval[0].encode("UTF-8"))

    chli_cfmsopt(&_status,_optnam,_optval)

    status[0] = _status
    optnam[0] = _optnam.decode("UTF-8")
    free(_optnam)
    optval[0] = _optval.decode("UTF-8")
    free(_optval)


def cfmspm(status, nctran, ndtran, natran, pmistt):
    '''MarketMap C-HLI cfmspm'''
    cdef:
        int _status
        double _nctran
        double _ndtran
        double _natran
        double *_pmistt = NULL

    _nctran = nctran
    _ndtran = ndtran
    _natran = natran

    _pmistt = <double *>malloc(sizeof(_pmistt[0])*(1 if pmistt is None else len(pmistt)))
    for i in range(0 if pmistt is None else len(pmistt)):
      _pmistt[i] = pmistt[i]

    chli_cfmspm(&_status,_nctran,_ndtran,_natran,_pmistt)

    status[0] = _status

    for i in range(0 if pmistt is None else len(pmistt)):
      pmistt[i] = _pmistt[i]
    free(_pmistt)


def cfmspos(status, flag):
    '''MarketMap C-HLI cfmspos'''
    cdef:
        int _status
        int _flag

    _flag = flag

    chli_cfmspos(&_status,_flag)

    status[0] = _status


def cfmsrng(status, freq, syear, sprd, eyear, eprd, range_, numobs):
    '''MarketMap C-HLI cfmsrng'''
    cdef:
        int _status
        int _freq
        int _syear
        int _sprd
        int _eyear
        int _eprd
        int *_range_ = NULL
        int _numobs

    _freq = freq
    _syear = syear[0]
    _sprd = sprd[0]
    _eyear = eyear[0]
    _eprd = eprd[0]

    _range_ = <int *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]
    _numobs = numobs[0]

    chli_cfmsrng(&_status,_freq,&_syear,&_sprd,&_eyear,&_eprd,NULL if range_ is None else _range_,&_numobs)

    status[0] = _status
    syear[0] = _syear
    sprd[0] = _sprd
    eyear[0] = _eyear
    eprd[0] = _eprd

    for i in range(0 if range_ is None else len(range_)):
      range_[i] = _range_[i]
    free(_range_)
    numobs[0] = _numobs


def cfmssln(status, dbkey, objnam, length):
    '''MarketMap C-HLI cfmssln'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _length

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _length = length

    chli_cfmssln(&_status,_dbkey,_objnam,_length)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)


def cfmtdat(status, freq, date, hour, minute, second, ddate):
    '''MarketMap C-HLI cfmtdat'''
    cdef:
        int _status
        int _freq
        int _date
        int _hour
        int _minute
        int _second
        int _ddate

    _freq = freq
    _date = date[0]
    _hour = hour
    _minute = minute
    _second = second
    _ddate = ddate

    chli_cfmtdat(&_status,_freq,&_date,_hour,_minute,_second,_ddate)

    status[0] = _status
    date[0] = _date


def cfmtody(status, freq, date):
    '''MarketMap C-HLI cfmtody'''
    cdef:
        int _status
        int _freq
        int _date

    _freq = freq
    _date = date[0]

    chli_cfmtody(&_status,_freq,&_date)

    status[0] = _status
    date[0] = _date


def cfmufrq(status, freq, base, nunits, year, month):
    '''MarketMap C-HLI cfmufrq'''
    cdef:
        int _status
        int _freq
        int _base
        int _nunits
        int _year
        int _month

    _freq = freq
    _base = base[0]
    _nunits = nunits[0]
    _year = year[0]
    _month = month[0]

    chli_cfmufrq(&_status,_freq,&_base,&_nunits,&_year,&_month)

    status[0] = _status
    base[0] = _base
    nunits[0] = _nunits
    year[0] = _year
    month[0] = _month


def cfmver(status, ver):
    '''MarketMap C-HLI cfmver'''
    cdef:
        int _status
        float _ver

    _ver = ver[0]

    chli_cfmver(&_status,&_ver)

    status[0] = _status
    ver[0] = _ver


def cfmwhat(status, dbkey, objnam, class_, type, freq, basis, observ, fyear, fprd, lyear, lprd, cyear, cmonth, cday, myear, mmonth, mday, desc, doc):
    '''MarketMap C-HLI cfmwhat'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _class_
        int _type
        int _freq
        int _basis
        int _observ
        int _fyear
        int _fprd
        int _lyear
        int _lprd
        int _cyear
        int _cmonth
        int _cday
        int _myear
        int _mmonth
        int _mday
        char *_desc
        char *_doc

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _class_ = class_[0]
    _type = type[0]
    _freq = freq[0]
    _basis = basis[0]
    _observ = observ[0]
    _fyear = fyear[0]
    _fprd = fprd[0]
    _lyear = lyear[0]
    _lprd = lprd[0]
    _cyear = cyear[0]
    _cmonth = cmonth[0]
    _cday = cday[0]
    _myear = myear[0]
    _mmonth = mmonth[0]
    _mday = mday[0]
    _desc = strdup(desc[0].encode("UTF-8"))
    _doc = strdup(doc[0].encode("UTF-8"))

    chli_cfmwhat(&_status,_dbkey,_objnam,&_class_,&_type,&_freq,&_basis,&_observ,&_fyear,&_fprd,&_lyear,&_lprd,&_cyear,&_cmonth,&_cday,&_myear,&_mmonth,&_mday,_desc,_doc)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    class_[0] = _class_
    type[0] = _type
    freq[0] = _freq
    basis[0] = _basis
    observ[0] = _observ
    fyear[0] = _fyear
    fprd[0] = _fprd
    lyear[0] = _lyear
    lprd[0] = _lprd
    cyear[0] = _cyear
    cmonth[0] = _cmonth
    cday[0] = _cday
    myear[0] = _myear
    mmonth[0] = _mmonth
    mday[0] = _mday
    desc[0] = _desc.decode("UTF-8")
    free(_desc)
    doc[0] = _doc.decode("UTF-8")
    free(_doc)


def cfmwkdy(status, freq, date, wkdy):
    '''MarketMap C-HLI cfmwkdy'''
    cdef:
        int _status
        int _freq
        int _date
        int _wkdy

    _freq = freq
    _date = date
    _wkdy = wkdy[0]

    chli_cfmwkdy(&_status,_freq,_date,&_wkdy)

    status[0] = _status
    wkdy[0] = _wkdy


def cfmwrmt_double(status, dbkey, objnam, objtyp, range_, valary, tmiss, mistt):
    '''MarketMap C-HLI cfmwrmt_double'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _objtyp
        int *_range_ = NULL
        double *_valary = NULL
        int _tmiss
        double *_mistt = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _objtyp = objtyp

    _range_ = <int *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _valary = <double *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]
    _tmiss = tmiss

    _mistt = <double *>malloc(sizeof(_mistt[0])*(1 if mistt is None else len(mistt)))
    for i in range(0 if mistt is None else len(mistt)):
      _mistt[i] = mistt[i]

    chli_cfmwrmt_f(&_status,_dbkey,_objnam,_objtyp,NULL if range_ is None else _range_,_valary,_tmiss,_mistt)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)

    for i in range(0 if valary is None else len(valary)):
      valary[i] = _valary[i]
    free(_valary)

    for i in range(0 if mistt is None else len(mistt)):
      mistt[i] = _mistt[i]
    free(_mistt)


def cfmwrmt_float(status, dbkey, objnam, objtyp, range_, valary, tmiss, mistt):
    '''MarketMap C-HLI cfmwrmt_float'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _objtyp
        int *_range_ = NULL
        float *_valary = NULL
        int _tmiss
        float *_mistt = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _objtyp = objtyp

    _range_ = <int *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _valary = <float *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]
    _tmiss = tmiss

    _mistt = <float *>malloc(sizeof(_mistt[0])*(1 if mistt is None else len(mistt)))
    for i in range(0 if mistt is None else len(mistt)):
      _mistt[i] = mistt[i]

    chli_cfmwrmt_f(&_status,_dbkey,_objnam,_objtyp,NULL if range_ is None else _range_,_valary,_tmiss,_mistt)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)

    for i in range(0 if valary is None else len(valary)):
      valary[i] = _valary[i]
    free(_valary)

    for i in range(0 if mistt is None else len(mistt)):
      mistt[i] = _mistt[i]
    free(_mistt)


def cfmwrmt_int(status, dbkey, objnam, objtyp, range_, valary, tmiss, mistt):
    '''MarketMap C-HLI cfmwrmt_int'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _objtyp
        int *_range_ = NULL
        int *_valary = NULL
        int _tmiss
        int *_mistt = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _objtyp = objtyp

    _range_ = <int *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _valary = <int *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]
    _tmiss = tmiss

    _mistt = <int *>malloc(sizeof(_mistt[0])*(1 if mistt is None else len(mistt)))
    for i in range(0 if mistt is None else len(mistt)):
      _mistt[i] = mistt[i]

    chli_cfmwrmt_f(&_status,_dbkey,_objnam,_objtyp,NULL if range_ is None else _range_,_valary,_tmiss,_mistt)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)

    for i in range(0 if valary is None else len(valary)):
      valary[i] = _valary[i]
    free(_valary)

    for i in range(0 if mistt is None else len(mistt)):
      mistt[i] = _mistt[i]
    free(_mistt)


def cfmwrng_double(status, dbkey, objnam, range_, valary, tmiss, mistt):
    '''MarketMap C-HLI cfmwrng_double'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int *_range_ = NULL
        double *_valary = NULL
        int _tmiss
        double *_mistt = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <int *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _valary = <double *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]
    _tmiss = tmiss

    _mistt = <double *>malloc(sizeof(_mistt[0])*(1 if mistt is None else len(mistt)))
    for i in range(0 if mistt is None else len(mistt)):
      _mistt[i] = mistt[i]

    chli_cfmwrng_f(&_status,_dbkey,_objnam,NULL if range_ is None else _range_,_valary,_tmiss,_mistt)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)

    for i in range(0 if valary is None else len(valary)):
      valary[i] = _valary[i]
    free(_valary)

    for i in range(0 if mistt is None else len(mistt)):
      mistt[i] = _mistt[i]
    free(_mistt)


def cfmwrng_float(status, dbkey, objnam, range_, valary, tmiss, mistt):
    '''MarketMap C-HLI cfmwrng_float'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int *_range_ = NULL
        float *_valary = NULL
        int _tmiss
        float *_mistt = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <int *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _valary = <float *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]
    _tmiss = tmiss

    _mistt = <float *>malloc(sizeof(_mistt[0])*(1 if mistt is None else len(mistt)))
    for i in range(0 if mistt is None else len(mistt)):
      _mistt[i] = mistt[i]

    chli_cfmwrng_f(&_status,_dbkey,_objnam,NULL if range_ is None else _range_,_valary,_tmiss,_mistt)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)

    for i in range(0 if valary is None else len(valary)):
      valary[i] = _valary[i]
    free(_valary)

    for i in range(0 if mistt is None else len(mistt)):
      mistt[i] = _mistt[i]
    free(_mistt)


def cfmwrng_int(status, dbkey, objnam, range_, valary, tmiss, mistt):
    '''MarketMap C-HLI cfmwrng_int'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int *_range_ = NULL
        int *_valary = NULL
        int _tmiss
        int *_mistt = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <int *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _valary = <int *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]
    _tmiss = tmiss

    _mistt = <int *>malloc(sizeof(_mistt[0])*(1 if mistt is None else len(mistt)))
    for i in range(0 if mistt is None else len(mistt)):
      _mistt[i] = mistt[i]

    chli_cfmwrng_f(&_status,_dbkey,_objnam,NULL if range_ is None else _range_,_valary,_tmiss,_mistt)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)

    for i in range(0 if valary is None else len(valary)):
      valary[i] = _valary[i]
    free(_valary)

    for i in range(0 if mistt is None else len(mistt)):
      mistt[i] = _mistt[i]
    free(_mistt)


def cfmwstr(status, dbkey, objnam, range_, strval, ismiss, length):
    '''MarketMap C-HLI cfmwstr'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int *_range_ = NULL
        char *_strval
        int _ismiss
        int _length

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <int *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]
    _strval = strdup(strval[0].encode("UTF-8"))
    _ismiss = ismiss
    _length = length

    chli_cfmwstr(&_status,_dbkey,_objnam,NULL if range_ is None else _range_,_strval,_ismiss,_length)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)
    strval[0] = _strval.decode("UTF-8")
    free(_strval)


def cfmwsts(status, dbkey, objnam, range_, strary, misary, lenary):
    '''MarketMap C-HLI cfmwsts'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int *_range_ = NULL
        char **_strary = NULL
        int *_misary = NULL
        int *_lenary = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <int *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _strary = <char **>malloc(sizeof(_strary[0])*(1 if strary is None else len(strary)))
    for i in range(0 if strary is None else len(strary)):
      _strary[i] = strdup(strary[i].encode("UTF-8"))

    _misary = <int *>malloc(sizeof(_misary[0])*(1 if misary is None else len(misary)))
    for i in range(0 if misary is None else len(misary)):
      _misary[i] = misary[i]

    _lenary = <int *>malloc(sizeof(_lenary[0])*(1 if lenary is None else len(lenary)))
    for i in range(0 if lenary is None else len(lenary)):
      _lenary[i] = lenary[i]

    chli_cfmwsts(&_status,_dbkey,_objnam,NULL if range_ is None else _range_,_strary,_misary,_lenary)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)

    for i in range(0 if strary is None else len(strary)):
      strary[i] = _strary[i].decode("UTF-8")
      free(_strary[i])
    free(_strary)

    for i in range(0 if misary is None else len(misary)):
      misary[i] = _misary[i]
    free(_misary)

    for i in range(0 if lenary is None else len(lenary)):
      lenary[i] = _lenary[i]
    free(_lenary)


def cfmwtnl(status, dbkey, objnam, index, strval):
    '''MarketMap C-HLI cfmwtnl'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        int _index
        char *_strval

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _index = index
    _strval = strdup(strval[0].encode("UTF-8"))

    chli_cfmwtnl(&_status,_dbkey,_objnam,_index,_strval)

    status[0] = _status
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    strval[0] = _strval.decode("UTF-8")
    free(_strval)

def get_support_url():
    '''Qoma support URL'''
    cdef:
        char *str 

    str = strdup(qoma_support_url())
    return str.decode("UTF-8")
    


def fame_biweekday(freq, date, biweekday):
    '''MarketMap C-HLI fame_biweekday'''
    cdef:
        int _status
        int _freq
        long _date
        int _biweekday

    _freq = freq
    _date = date
    _biweekday = biweekday[0]

    _status = chli_fame_biweekday(_freq,_date,&_biweekday)

    biweekday[0] = _biweekday
    return _status


def fame_create_formula(dbkey, oname, value):
    '''MarketMap C-HLI fame_create_formula'''
    cdef:
        int _status
        int _dbkey
        char *_oname
        char *_value

    _dbkey = dbkey
    _oname = strdup(oname[0].encode("UTF-8"))
    _value = strdup(value[0].encode("UTF-8"))

    _status = chli_fame_create_formula(_dbkey,_oname,_value)

    oname[0] = _oname.decode("UTF-8")
    free(_oname)
    value[0] = _value.decode("UTF-8")
    free(_value)
    return _status


def fame_create_global_formula(dbkey, oname, value):
    '''MarketMap C-HLI fame_create_global_formula'''
    cdef:
        int _status
        int _dbkey
        char *_oname
        char *_value

    _dbkey = dbkey
    _oname = strdup(oname[0].encode("UTF-8"))
    _value = strdup(value[0].encode("UTF-8"))

    _status = chli_fame_create_global_formula(_dbkey,_oname,_value)

    oname[0] = _oname.decode("UTF-8")
    free(_oname)
    value[0] = _value.decode("UTF-8")
    free(_value)
    return _status


def fame_current_time(freq, date):
    '''MarketMap C-HLI fame_current_time'''
    cdef:
        int _status
        int _freq
        long _date

    _freq = freq
    _date = date[0]

    _status = chli_fame_current_time(_freq,&_date)

    date[0] = <long>_date
    return _status


def fame_date_missing_type(date, missing_type):
    '''MarketMap C-HLI fame_date_missing_type'''
    cdef:
        int _status
        long _date
        int _missing_type

    _date = date
    _missing_type = missing_type[0]

    _status = chli_fame_date_missing_type(_date,&_missing_type)

    missing_type[0] = _missing_type
    return _status


def fame_date_to_literal(freq, date, literal, end_month, label_year, inlen, outlen):
    '''MarketMap C-HLI fame_date_to_literal'''
    cdef:
        int _status
        int _freq
        long _date
        char *_literal
        int _end_month
        int _label_year
        int _inlen
        int _outlen

    _freq = freq
    _date = date
    _literal = strdup(literal[0].encode("UTF-8"))
    _end_month = end_month
    _label_year = label_year
    _inlen = inlen
    _outlen = outlen[0]

    _status = chli_fame_date_to_literal(_freq,_date,_literal,_end_month,_label_year,_inlen,&_outlen)

    literal[0] = _literal.decode("UTF-8")
    free(_literal)
    outlen[0] = _outlen
    return _status


def fame_dateof(from_freq, from_date, select, to_freq, to_date, relate):
    '''MarketMap C-HLI fame_dateof'''
    cdef:
        int _status
        int _from_freq
        long _from_date
        int _select
        int _to_freq
        long _to_date
        int _relate

    _from_freq = from_freq
    _from_date = from_date
    _select = select
    _to_freq = to_freq
    _to_date = to_date[0]
    _relate = relate

    _status = chli_fame_dateof(_from_freq,_from_date,_select,_to_freq,&_to_date,_relate)

    to_date[0] = <long>_to_date
    return _status


def fame_day_to_index(freq, date, year, month, day, relate):
    '''MarketMap C-HLI fame_day_to_index'''
    cdef:
        int _status
        int _freq
        long _date
        int _year
        int _month
        int _day
        int _relate

    _freq = freq
    _date = date[0]
    _year = year
    _month = month
    _day = day
    _relate = relate

    _status = chli_fame_day_to_index(_freq,&_date,_year,_month,_day,_relate)

    date[0] = <long>_date
    return _status


def fame_dimchar(dimchar, dimnum):
    '''MarketMap C-HLI fame_dimchar'''
    cdef:
        int _status
        char *_dimchar
        int _dimnum

    _dimchar = strdup(dimchar[0].encode("UTF-8"))
    _dimnum = dimnum

    _status = chli_fame_dimchar(_dimchar,_dimnum)

    dimchar[0] = _dimchar.decode("UTF-8")
    free(_dimchar)
    return _status


def fame_dimnum(dimnum, dimchar):
    '''MarketMap C-HLI fame_dimnum'''
    cdef:
        int _status
        int _dimnum
        char _dimchar

    _dimnum = dimnum[0]
    _dimchar = dimchar.encode("UTF-8")

    _status = chli_fame_dimnum(&_dimnum,_dimchar)

    dimnum[0] = _dimnum
    dimchar = _dimchar.decode("UTF-8")
    return _status


def fame_expiration_date(date):
    '''MarketMap C-HLI fame_expiration_date'''
    cdef:
        int _status
        long _date

    _date = date[0]

    _status = chli_fame_expiration_date(&_date)

    date[0] = <long>_date
    return _status


def fame_format_date(freq, date, string, image, end_month, label_year, inlen, outlen):
    '''MarketMap C-HLI fame_format_date'''
    cdef:
        int _status
        int _freq
        long _date
        char *_string
        char *_image
        int _end_month
        int _label_year
        int _inlen
        int _outlen

    _freq = freq
    _date = date
    _string = strdup(string[0].encode("UTF-8"))
    _image = strdup(image[0].encode("UTF-8"))
    _end_month = end_month
    _label_year = label_year
    _inlen = inlen
    _outlen = outlen[0]

    _status = chli_fame_format_date(_freq,_date,_string,_image,_end_month,_label_year,_inlen,&_outlen)

    string[0] = _string.decode("UTF-8")
    free(_string)
    image[0] = _image.decode("UTF-8")
    free(_image)
    outlen[0] = _outlen
    return _status


def fame_free_wildcard(wildkey):
    '''MarketMap C-HLI fame_free_wildcard'''
    cdef:
        int _status
        int _wildkey

    _wildkey = wildkey

    _status = chli_fame_free_wildcard(_wildkey)

    return _status


def fame_get_base_frequency(base_freq, freq):
    '''MarketMap C-HLI fame_get_base_frequency'''
    cdef:
        int _status
        int _base_freq
        int _freq

    _base_freq = base_freq[0]
    _freq = freq

    _status = chli_fame_get_base_frequency(&_base_freq,_freq)

    base_freq[0] = _base_freq
    return _status


def fame_get_boolean_attribute(dbkey, objnam, attnam, value):
    '''MarketMap C-HLI fame_get_boolean_attribute'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_attnam
        int _value

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = value[0]

    _status = chli_fame_get_boolean_attribute(_dbkey,_objnam,_attnam,&_value)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    value[0] = _value
    return _status


def fame_get_booleans(dbkey, objnam, range_, valary):
    '''MarketMap C-HLI fame_get_booleans'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        long *_range_ = NULL
        int *_valary = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <long *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _valary = <int *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]

    _status = chli_fame_get_booleans(_dbkey,_objnam,NULL if range_ is None else _range_,_valary)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)

    for i in range(0 if valary is None else len(valary)):
      valary[i] = _valary[i]
    free(_valary)
    return _status


def fame_get_date_attribute(dbkey, objnam, attnam, value, freq):
    '''MarketMap C-HLI fame_get_date_attribute'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_attnam
        long _value
        int _freq

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = value[0]
    _freq = freq[0]

    _status = chli_fame_get_date_attribute(_dbkey,_objnam,_attnam,&_value,&_freq)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    value[0] = <long>_value
    freq[0] = _freq
    return _status


def fame_get_dates(dbkey, objnam, range_, valary):
    '''MarketMap C-HLI fame_get_dates'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        long *_range_ = NULL
        long *_valary = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <long *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _valary = <long *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]

    _status = chli_fame_get_dates(_dbkey,_objnam,NULL if range_ is None else _range_,_valary)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)

    for i in range(0 if valary is None else len(valary)):
      valary[i] = <long>_valary[i]
    free(_valary)
    return _status


def fame_get_db_dates(dbkey, cdate, mdate):
    '''MarketMap C-HLI fame_get_db_dates'''
    cdef:
        int _status
        int _dbkey
        long _cdate
        long _mdate

    _dbkey = dbkey
    _cdate = cdate[0]
    _mdate = mdate[0]

    _status = chli_fame_get_db_dates(_dbkey,&_cdate,&_mdate)

    cdate[0] = <long>_cdate
    mdate[0] = <long>_mdate
    return _status


def fame_get_dbversion(dbkey, dbversion):
    '''MarketMap C-HLI fame_get_dbversion'''
    cdef:
        int _status
        int _dbkey
        int _dbversion

    _dbkey = dbkey
    _dbversion = dbversion[0]

    _status = chli_fame_get_dbversion(_dbkey,&_dbversion)

    dbversion[0] = _dbversion
    return _status


def fame_get_namelist_attribute(dbkey, objnam, attnam, value, inlen, outlen):
    '''MarketMap C-HLI fame_get_namelist_attribute'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_attnam
        char *_value
        int _inlen
        int _outlen

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = strdup(value[0].encode("UTF-8"))
    _inlen = inlen
    _outlen = outlen[0]

    _status = chli_fame_get_namelist_attribute(_dbkey,_objnam,_attnam,_value,_inlen,&_outlen)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    value[0] = _value.decode("UTF-8")
    free(_value)
    outlen[0] = _outlen
    return _status


def fame_get_next_wildcard(wildkey, objname, obj_class, type, freq, start, end, inlen, outlen):
    '''MarketMap C-HLI fame_get_next_wildcard'''
    cdef:
        int _status
        int _wildkey
        char *_objname
        int _obj_class
        int _type
        int _freq
        long _start
        long _end
        int _inlen
        int _outlen

    _wildkey = wildkey
    _objname = strdup(objname[0].encode("UTF-8"))
    _obj_class = obj_class[0]
    _type = type[0]
    _freq = freq[0]
    _start = start[0]
    _end = end[0]
    _inlen = inlen
    _outlen = outlen[0]

    _status = chli_fame_get_next_wildcard(_wildkey,_objname,&_obj_class,&_type,&_freq,&_start,&_end,_inlen,&_outlen)

    objname[0] = _objname.decode("UTF-8")
    free(_objname)
    obj_class[0] = _obj_class
    type[0] = _type
    freq[0] = _freq
    start[0] = <long>_start
    end[0] = <long>_end
    outlen[0] = _outlen
    return _status


def fame_get_numeric_attribute(dbkey, objnam, attnam, value):
    '''MarketMap C-HLI fame_get_numeric_attribute'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_attnam
        float _value

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = value[0]

    _status = chli_fame_get_numeric_attribute(_dbkey,_objnam,_attnam,&_value)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    value[0] = _value
    return _status


def fame_get_numerics(dbkey, objnam, range_, valary):
    '''MarketMap C-HLI fame_get_numerics'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        long *_range_ = NULL
        float *_valary = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <long *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _valary = <float *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]

    _status = chli_fame_get_numerics(_dbkey,_objnam,NULL if range_ is None else _range_,_valary)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)

    for i in range(0 if valary is None else len(valary)):
      valary[i] = _valary[i]
    free(_valary)
    return _status


def fame_get_precision_attribute(dbkey, objnam, attnam, value):
    '''MarketMap C-HLI fame_get_precision_attribute'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_attnam
        double _value

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = value[0]

    _status = chli_fame_get_precision_attribute(_dbkey,_objnam,_attnam,&_value)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    value[0] = _value
    return _status


def fame_get_precisions(dbkey, objnam, range_, valary):
    '''MarketMap C-HLI fame_get_precisions'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        long *_range_ = NULL
        double *_valary = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <long *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _valary = <double *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]

    _status = chli_fame_get_precisions(_dbkey,_objnam,NULL if range_ is None else _range_,_valary)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)

    for i in range(0 if valary is None else len(valary)):
      valary[i] = _valary[i]
    free(_valary)
    return _status


def fame_get_range_numobs(range_, numobs):
    '''MarketMap C-HLI fame_get_range_numobs'''
    cdef:
        int _status
        long *_range_ = NULL
        int _numobs


    _range_ = <long *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]
    _numobs = numobs[0]

    _status = chli_fame_get_range_numobs(NULL if range_ is None else _range_,&_numobs)

    free(_range_)
    numobs[0] = _numobs
    return _status


def fame_get_real_name(dbkey, objname, basename, inlen, outlen):
    '''MarketMap C-HLI fame_get_real_name'''
    cdef:
        int _status
        int _dbkey
        char *_objname
        char *_basename
        int _inlen
        int _outlen

    _dbkey = dbkey
    _objname = strdup(objname[0].encode("UTF-8"))
    _basename = strdup(basename[0].encode("UTF-8"))
    _inlen = inlen
    _outlen = outlen[0]

    _status = chli_fame_get_real_name(_dbkey,_objname,_basename,_inlen,&_outlen)

    objname[0] = _objname.decode("UTF-8")
    free(_objname)
    basename[0] = _basename.decode("UTF-8")
    free(_basename)
    outlen[0] = _outlen
    return _status


def fame_get_server_input(buffer, buffer_size, input_size):
    '''MarketMap C-HLI fame_get_server_input'''
    cdef:
        int _status
        char *_buffer
        int _buffer_size
        int _input_size

    _buffer = strdup(buffer[0].encode("UTF-8"))
    _buffer_size = buffer_size
    _input_size = input_size[0]

    _status = chli_fame_get_server_input(_buffer,_buffer_size,&_input_size)

    buffer[0] = _buffer.decode("UTF-8")
    free(_buffer)
    input_size[0] = _input_size
    return _status


def fame_get_string_attribute(dbkey, objnam, attnam, value, inlen, outlen):
    '''MarketMap C-HLI fame_get_string_attribute'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_attnam
        char *_value
        int _inlen
        int _outlen

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = strdup(value[0].encode("UTF-8"))
    _inlen = inlen
    _outlen = outlen[0]

    _status = chli_fame_get_string_attribute(_dbkey,_objnam,_attnam,_value,_inlen,&_outlen)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    value[0] = _value.decode("UTF-8")
    free(_value)
    outlen[0] = _outlen
    return _status


def fame_get_strings(dbkey, objnam, range_, strary, inlenary, outlenary):
    '''MarketMap C-HLI fame_get_strings'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        long *_range_ = NULL
        char **_strary = NULL
        int *_inlenary = NULL
        int *_outlenary = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <long *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _strary = <char **>malloc(sizeof(_strary[0])*(1 if strary is None else len(strary)))
    for i in range(0 if strary is None else len(strary)):
      _strary[i] = strdup(strary[i].encode("UTF-8"))

    _inlenary = <int *>malloc(sizeof(_inlenary[0])*(1 if inlenary is None else len(inlenary)))
    for i in range(0 if inlenary is None else len(inlenary)):
      _inlenary[i] = inlenary[i]

    _outlenary = <int *>malloc(sizeof(_outlenary[0])*(1 if outlenary is None else len(outlenary)))
    for i in range(0 if outlenary is None else len(outlenary)):
      _outlenary[i] = outlenary[i]

    _status = chli_fame_get_strings(_dbkey,_objnam,NULL if range_ is None else _range_,_strary,_inlenary,_outlenary)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)

    for i in range(0 if strary is None else len(strary)):
      strary[i] = _strary[i].decode("UTF-8")
      free(_strary[i])
    free(_strary)
    free(_inlenary)

    for i in range(0 if outlenary is None else len(outlenary)):
      outlenary[i] = _outlenary[i]
    free(_outlenary)
    return _status


def fame_index_to_day(freq, date, year, month, day):
    '''MarketMap C-HLI fame_index_to_day'''
    cdef:
        int _status
        int _freq
        long _date
        int _year
        int _month
        int _day

    _freq = freq
    _date = date
    _year = year[0]
    _month = month[0]
    _day = day[0]

    _status = chli_fame_index_to_day(_freq,_date,&_year,&_month,&_day)

    year[0] = _year
    month[0] = _month
    day[0] = _day
    return _status


def fame_index_to_int(indexes64ary, indexes32ary, numobs):
    '''MarketMap C-HLI fame_index_to_int'''
    cdef:
        int _status
        long *_indexes64ary = NULL
        int *_indexes32ary = NULL
        int _numobs


    _indexes64ary = <long *>malloc(sizeof(_indexes64ary[0])*(1 if indexes64ary is None else len(indexes64ary)))
    for i in range(0 if indexes64ary is None else len(indexes64ary)):
      _indexes64ary[i] = indexes64ary[i]

    _indexes32ary = <int *>malloc(sizeof(_indexes32ary[0])*(1 if indexes32ary is None else len(indexes32ary)))
    for i in range(0 if indexes32ary is None else len(indexes32ary)):
      _indexes32ary[i] = indexes32ary[i]
    _numobs = numobs

    _status = chli_fame_index_to_int(_indexes64ary,_indexes32ary,_numobs)

    free(_indexes64ary)

    for i in range(0 if indexes32ary is None else len(indexes32ary)):
      indexes32ary[i] = _indexes32ary[i]
    free(_indexes32ary)
    return _status


def fame_index_to_time(freq, date, year, month, day, hour, minute, second, millisecond):
    '''MarketMap C-HLI fame_index_to_time'''
    cdef:
        int _status
        int _freq
        long _date
        int _year
        int _month
        int _day
        int _hour
        int _minute
        int _second
        int _millisecond

    _freq = freq
    _date = date
    _year = year[0]
    _month = month[0]
    _day = day[0]
    _hour = hour[0]
    _minute = minute[0]
    _second = second[0]
    _millisecond = millisecond[0]

    _status = chli_fame_index_to_time(_freq,_date,&_year,&_month,&_day,&_hour,&_minute,&_second,&_millisecond)

    year[0] = _year
    month[0] = _month
    day[0] = _day
    hour[0] = _hour
    minute[0] = _minute
    second[0] = _second
    millisecond[0] = _millisecond
    return _status


def fame_index_to_year_period(freq, date, year, period):
    '''MarketMap C-HLI fame_index_to_year_period'''
    cdef:
        int _status
        int _freq
        long _date
        int _year
        int _period

    _freq = freq
    _date = date
    _year = year[0]
    _period = period[0]

    _status = chli_fame_index_to_year_period(_freq,_date,&_year,&_period)

    year[0] = _year
    period[0] = _period
    return _status


def fame_info(dbkey, oname, oclass, type, freq, findex, lindex, basis, observ, cdate, mdate, desc, indesclen, outdesclen, doc, indoclen, outdoclen):
    '''MarketMap C-HLI fame_info'''
    cdef:
        int _status
        int _dbkey
        char *_oname
        int _oclass
        int _type
        int _freq
        long _findex
        long _lindex
        int _basis
        int _observ
        long _cdate
        long _mdate
        char *_desc
        int _indesclen
        int _outdesclen
        char *_doc
        int _indoclen
        int _outdoclen

    _dbkey = dbkey
    _oname = strdup(oname[0].encode("UTF-8"))
    _oclass = oclass[0]
    _type = type[0]
    _freq = freq[0]
    _findex = findex[0]
    _lindex = lindex[0]
    _basis = basis[0]
    _observ = observ[0]
    _cdate = cdate[0]
    _mdate = mdate[0]
    _desc = strdup(desc[0].encode("UTF-8"))
    _indesclen = indesclen
    _outdesclen = outdesclen[0]
    _doc = strdup(doc[0].encode("UTF-8"))
    _indoclen = indoclen
    _outdoclen = outdoclen[0]

    _status = chli_fame_info(_dbkey,_oname,&_oclass,&_type,&_freq,&_findex,&_lindex,&_basis,&_observ,
                             &_cdate,&_mdate,
                             _desc,_indesclen,&_outdesclen,
                             _doc,_indoclen,&_outdoclen)

    oname[0] = _oname.decode("UTF-8")
    free(_oname)
    oclass[0] = _oclass
    type[0] = _type
    freq[0] = _freq
    findex[0] = <long>_findex
    lindex[0] = <long>_lindex
    basis[0] = _basis
    observ[0] = _observ
    cdate[0] = <long>_cdate
    mdate[0] = <long>_mdate
    outdesclen[0] = _outdesclen
    if outdesclen[0] > 0:
        desc[0] = _desc.decode("UTF-8")
    free(_desc)
    outdoclen[0] = _outdoclen
    if outdoclen[0] > 0:
        doc[0] = _doc.decode("UTF-8")
    free(_doc)
    return _status


def fame_init_range_from_end_numobs(range_, freq, end, numobs):
    '''MarketMap C-HLI fame_init_range_from_end_numobs'''
    cdef:
        int _status
        long *_range_ = NULL
        int _freq
        long _end
        int _numobs


    _range_ = <long *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]
    _freq = freq
    _end = end
    _numobs = numobs

    _status = chli_fame_init_range_from_end_numobs(NULL if range_ is None else _range_,_freq,_end,_numobs)


    for i in range(0 if range_ is None else len(range_)):
      range_[i] = <long>_range_[i]
    free(_range_)
    return _status


def fame_init_range_from_indexes(range_, freq, start, end):
    '''MarketMap C-HLI fame_init_range_from_indexes'''
    cdef:
        int _status
        long *_range_ = NULL
        int _freq
        long _start
        long _end


    _range_ = <long *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]
    _freq = freq
    _start = start
    _end = end

    _status = chli_fame_init_range_from_indexes(NULL if range_ is None else _range_,_freq,_start,_end)


    for i in range(0 if range_ is None else len(range_)):
      range_[i] = <long>_range_[i]
    free(_range_)
    return _status


def fame_init_range_from_start_numobs(range_, freq, start, numobs):
    '''MarketMap C-HLI fame_init_range_from_start_numobs'''
    cdef:
        int _status
        long *_range_ = NULL
        int _freq
        long _start
        int _numobs


    _range_ = <long *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]
    _freq = freq
    _start = start
    _numobs = numobs

    _status = chli_fame_init_range_from_start_numobs(NULL if range_ is None else _range_,_freq,_start,_numobs)


    for i in range(0 if range_ is None else len(range_)):
      range_[i] = <long>_range_[i]
    free(_range_)
    return _status


def fame_init_wildcard(dbkey, wildkey, wildname, wildonly, wildstart):
    '''MarketMap C-HLI fame_init_wildcard'''
    cdef:
        int _status
        int _dbkey
        int _wildkey
        char *_wildname
        int _wildonly
        char *_wildstart

    _dbkey = dbkey
    _wildkey = wildkey[0]
    _wildname = strdup(wildname[0].encode("UTF-8"))
    _wildonly = wildonly
    _wildstart = strdup(wildstart[0].encode("UTF-8"))

    _status = chli_fame_init_wildcard(_dbkey,&_wildkey,_wildname,_wildonly,_wildstart)

    wildkey[0] = _wildkey
    wildname[0] = _wildname.decode("UTF-8")
    free(_wildname)
    wildstart[0] = _wildstart.decode("UTF-8")
    free(_wildstart)
    return _status


def fame_int_to_index(indexes32, indexes64, numobs):
    '''MarketMap C-HLI fame_int_to_index'''
    cdef:
        int _status
        int _indexes32
        long _indexes64
        int _numobs

    _indexes32 = indexes32[0]
    _indexes64 = indexes64[0]
    _numobs = numobs

    _status = chli_fame_int_to_index(&_indexes32,&_indexes64,_numobs)

    indexes64[0] = <long>_indexes64
    return _status


def fame_len_strings(dbkey, objnam, range_, lenary):
    '''MarketMap C-HLI fame_len_strings'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        long *_range_ = NULL
        int *_lenary = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <long *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _lenary = <int *>malloc(sizeof(_lenary[0])*(1 if lenary is None else len(lenary)))
    for i in range(0 if lenary is None else len(lenary)):
      _lenary[i] = lenary[i]

    _status = chli_fame_len_strings(_dbkey,_objnam,NULL if range_ is None else _range_,_lenary)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)

    for i in range(0 if lenary is None else len(lenary)):
      lenary[i] = _lenary[i]
    free(_lenary)
    return _status


def fame_literal_to_date(freq, date, literal, end_month, label_year, century):
    '''MarketMap C-HLI fame_literal_to_date'''
    cdef:
        int _status
        int _freq
        long _date
        char *_literal
        int _end_month
        int _label_year
        int _century

    _freq = freq
    _date = date[0]
    _literal = strdup(literal[0].encode("UTF-8"))
    _end_month = end_month
    _label_year = label_year
    _century = century

    _status = chli_fame_literal_to_date(_freq,&_date,_literal,_end_month,_label_year,_century)

    date[0] = <long>_date
    literal[0] = _literal.decode("UTF-8")
    free(_literal)
    return _status


def fame_modify_formula(dbkey, oname, value):
    '''MarketMap C-HLI fame_modify_formula'''
    cdef:
        int _status
        int _dbkey
        char *_oname
        char *_value

    _dbkey = dbkey
    _oname = strdup(oname[0].encode("UTF-8"))
    _value = strdup(value[0].encode("UTF-8"))

    _status = chli_fame_modify_formula(_dbkey,_oname,_value)

    oname[0] = _oname.decode("UTF-8")
    free(_oname)
    value[0] = _value.decode("UTF-8")
    free(_value)
    return _status


def fame_parse_frequency(freq, frequency_spec):
    '''MarketMap C-HLI fame_parse_frequency'''
    cdef:
        int _status
        int _freq
        char *_frequency_spec

    _freq = freq[0]
    _frequency_spec = strdup(frequency_spec[0].encode("UTF-8"))

    _status = chli_fame_parse_frequency(&_freq,_frequency_spec)

    freq[0] = _freq
    frequency_spec[0] = _frequency_spec.decode("UTF-8")
    free(_frequency_spec)
    return _status


def fame_quick_info(dbkey, oname, oclass, type, freq, findex, lindex):
    '''MarketMap C-HLI fame_quick_info'''
    cdef:
        int _status
        int _dbkey
        char *_oname
        int _oclass
        int _type
        int _freq
        long _findex
        long _lindex

    _dbkey = dbkey
    _oname = strdup(oname[0].encode("UTF-8"))
    _oclass = oclass[0]
    _type = type[0]
    _freq = freq[0]
    _findex = findex[0]
    _lindex = lindex[0]

    _status = chli_fame_quick_info(_dbkey,_oname,&_oclass,&_type,&_freq,&_findex,&_lindex)

    oname[0] = _oname.decode("UTF-8")
    free(_oname)
    oclass[0] = _oclass
    type[0] = _type
    freq[0] = _freq
    findex[0] = <long>_findex
    lindex[0] = <long>_lindex
    return _status


def fame_remexec(dbkey, command, wdbkey, objnam):
    '''MarketMap C-HLI fame_remexec'''
    cdef:
        int _status
        int _dbkey
        char *_command
        int _wdbkey
        char *_objnam

    _dbkey = dbkey
    _command = strdup(command[0].encode("UTF-8"))
    _wdbkey = wdbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _status = chli_fame_remexec(_dbkey,_command,_wdbkey,_objnam)

    command[0] = _command.decode("UTF-8")
    free(_command)
    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    return _status


def fame_scan_date(freq, date, string, image, end_month, label_year, century):
    '''MarketMap C-HLI fame_scan_date'''
    cdef:
        int _status
        int _freq
        long _date
        char *_string
        char *_image
        int _end_month
        int _label_year
        int _century

    _freq = freq
    _date = date[0]
    _string = strdup(string[0].encode("UTF-8"))
    _image = strdup(image[0].encode("UTF-8"))
    _end_month = end_month
    _label_year = label_year
    _century = century

    _status = chli_fame_scan_date(_freq,&_date,_string,_image,_end_month,_label_year,_century)

    date[0] = <long>_date
    string[0] = _string.decode("UTF-8")
    free(_string)
    image[0] = _image.decode("UTF-8")
    free(_image)
    return _status


def fame_set_boolean_attribute(dbkey, objnam, attnam, value):
    '''MarketMap C-HLI fame_set_boolean_attribute'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_attnam
        int _value

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = value

    _status = chli_fame_set_boolean_attribute(_dbkey,_objnam,_attnam,_value)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    return _status


def fame_set_date_attribute(dbkey, objnam, attnam, value, freq):
    '''MarketMap C-HLI fame_set_date_attribute'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_attnam
        long _value
        int _freq

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = value
    _freq = freq

    _status = chli_fame_set_date_attribute(_dbkey,_objnam,_attnam,_value,_freq)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    return _status


def fame_set_namelist_attribute(dbkey, objnam, attnam, value):
    '''MarketMap C-HLI fame_set_namelist_attribute'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_attnam
        char *_value

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = strdup(value[0].encode("UTF-8"))

    _status = chli_fame_set_namelist_attribute(_dbkey,_objnam,_attnam,_value)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    value[0] = _value.decode("UTF-8")
    free(_value)
    return _status


def fame_set_numeric_attribute(dbkey, objnam, attnam, value):
    '''MarketMap C-HLI fame_set_numeric_attribute'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_attnam
        float _value

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = value

    _status = chli_fame_set_numeric_attribute(_dbkey,_objnam,_attnam,_value)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    return _status


def fame_set_precision_attribute(dbkey, objnam, attnam, value):
    '''MarketMap C-HLI fame_set_precision_attribute'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_attnam
        double _value

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = value

    _status = chli_fame_set_precision_attribute(_dbkey,_objnam,_attnam,_value)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    return _status


def fame_set_string_attribute(dbkey, objnam, attnam, value):
    '''MarketMap C-HLI fame_set_string_attribute'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        char *_attnam
        char *_value

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))
    _attnam = strdup(attnam[0].encode("UTF-8"))
    _value = strdup(value[0].encode("UTF-8"))

    _status = chli_fame_set_string_attribute(_dbkey,_objnam,_attnam,_value)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    attnam[0] = _attnam.decode("UTF-8")
    free(_attnam)
    value[0] = _value.decode("UTF-8")
    free(_value)
    return _status


def fame_time_to_index(freq, date, year, month, day, hour, minute, second, millisecond, relate):
    '''MarketMap C-HLI fame_time_to_index'''
    cdef:
        int _status
        int _freq
        long _date
        int _year
        int _month
        int _day
        int _hour
        int _minute
        int _second
        int _millisecond
        int _relate

    _freq = freq
    _date = date[0]
    _year = year
    _month = month
    _day = day
    _hour = hour
    _minute = minute
    _second = second
    _millisecond = millisecond
    _relate = relate

    _status = chli_fame_time_to_index(_freq,&_date,_year,_month,_day,_hour,_minute,_second,_millisecond,_relate)

    date[0] = <long>_date
    return _status


def fame_type_to_string(type, type_spec, inlen, outlen):
    '''MarketMap C-HLI fame_type_to_string'''
    cdef:
        int _status
        int _type
        char *_type_spec
        int _inlen
        int _outlen

    _type = type
    _type_spec = strdup(type_spec[0].encode("UTF-8"))
    _inlen = inlen
    _outlen = outlen[0]

    _status = chli_fame_type_to_string(_type,_type_spec,_inlen,&_outlen)

    type_spec[0] = _type_spec.decode("UTF-8")
    free(_type_spec)
    outlen[0] = _outlen
    return _status


def fame_weekday(freq, date, weekday):
    '''MarketMap C-HLI fame_weekday'''
    cdef:
        int _status
        int _freq
        long _date
        int _weekday

    _freq = freq
    _date = date
    _weekday = weekday[0]

    _status = chli_fame_weekday(_freq,_date,&_weekday)

    weekday[0] = _weekday
    return _status


def fame_write_booleans(dbkey, objnam, range_, valary):
    '''MarketMap C-HLI fame_write_booleans'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        long *_range_ = NULL
        int *_valary = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <long *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _valary = <int *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]

    _status = chli_fame_write_booleans(_dbkey,_objnam,NULL if range_ is None else _range_,_valary)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)
    free(_valary)
    return _status


def fame_write_dates(dbkey, objnam, range_, value_type, valary):
    '''MarketMap C-HLI fame_write_dates'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        long *_range_ = NULL
        int _value_type
        long *_valary = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <long *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]
    _value_type = value_type

    _valary = <long *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]

    _status = chli_fame_write_dates(_dbkey,_objnam,NULL if range_ is None else _range_,_value_type,_valary)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)
    free(_valary)
    return _status


def fame_write_numerics(dbkey, objnam, range_, valary):
    '''MarketMap C-HLI fame_write_numerics'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        long *_range_ = NULL
        float *_valary = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <long *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _valary = <float *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]

    _status = chli_fame_write_numerics(_dbkey,_objnam,NULL if range_ is None else _range_,_valary)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)
    free(_valary)
    return _status


def fame_write_precisions(dbkey, objnam, range_, valary):
    '''MarketMap C-HLI fame_write_precisions'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        long *_range_ = NULL
        double *_valary = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <long *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _valary = <double *>malloc(sizeof(_valary[0])*(1 if valary is None else len(valary)))
    for i in range(0 if valary is None else len(valary)):
      _valary[i] = valary[i]

    _status = chli_fame_write_precisions(_dbkey,_objnam,NULL if range_ is None else _range_,_valary)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)
    free(_valary)
    return _status


def fame_write_strings(dbkey, objnam, range_, strary):
    '''MarketMap C-HLI fame_write_strings'''
    cdef:
        int _status
        int _dbkey
        char *_objnam
        long *_range_ = NULL
        char **_strary = NULL

    _dbkey = dbkey
    _objnam = strdup(objnam[0].encode("UTF-8"))

    _range_ = <long *>malloc(sizeof(_range_[0])*(1 if range_ is None else len(range_)))
    for i in range(0 if range_ is None else len(range_)):
      _range_[i] = range_[i]

    _strary = <char **>malloc(sizeof(_strary[0])*(1 if strary is None else len(strary)))
    for i in range(0 if strary is None else len(strary)):
      _strary[i] = strdup(strary[i].encode("UTF-8"))

    _status = chli_fame_write_strings(_dbkey,_objnam,NULL if range_ is None else _range_,_strary)

    objnam[0] = _objnam.decode("UTF-8")
    free(_objnam)
    free(_range_)

    for i in range(0 if strary is None else len(strary)):
      strary[i] = _strary[i].decode("UTF-8")
      free(_strary[i])
    free(_strary)
    return _status


def fame_year_period_to_index(freq, date, year, period):
    '''MarketMap C-HLI fame_year_period_to_index'''
    cdef:
        int _status
        int _freq
        long _date
        int _year
        int _period

    _freq = freq
    _date = date[0]
    _year = year
    _period = period

    _status = chli_fame_year_period_to_index(_freq,&_date,_year,_period)

    date[0] = <long>_date
    return _status


def FPRCNA():
    return chli_FPRCNA

def FPRCNC():
    return chli_FPRCNC

def FPRCND():
    return chli_FPRCND

def FNUMNA():
    return chli_FNUMNA

def FNUMNC():
    return chli_FNUMNC

def FNUMND():
    return chli_FNUMND

def FBOONA():
    return chli_FBOONA

def FBOONC():
    return chli_FBOONC

def FBOOND():
    return chli_FBOOND

def FDATNA():
    return chli_FDATNA

def FDATNC():
    return chli_FDATNC

def FDATND():
    return chli_FDATND

def FSTRNA():
    return chli_FSTRNA

def FSTRNC():
    return chli_FSTRNC

def FSTRND():
    return chli_FSTRND

def FAME_INDEX_NA():
    return chli_FAME_INDEX_NA

def FAME_INDEX_NC():
    return chli_FAME_INDEX_NC

def FAME_INDEX_ND():
    return chli_FAME_INDEX_ND

