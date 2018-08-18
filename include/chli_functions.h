#ifndef __CHLI_FUNCTIONS_H__
#define __CHLI_FUNCTIONS_H__

#ifdef WIN32
  #define DLL_IMPORT __declspec(dllimport)
  #define DLL_EXPORT __declspec(dllexport)
  #ifdef DLL_IMPLEMENTATION
    #define DLLENTRY DLL_EXPORT
  #else
    #define DLLENTRY DLL_IMPORT
  #endif
#else
  #define DLL_IMPORT
  #define DLL_EXPORT
  #define DLLENTRY
#endif

extern DLLENTRY float FNUMNA;
extern DLLENTRY float FNUMNC;
extern DLLENTRY float FNUMND;

extern DLLENTRY double FPRCNA;
extern DLLENTRY double FPRCNC;
extern DLLENTRY double FPRCND;

extern DLLENTRY int FBOONA;
extern DLLENTRY int FBOONC;
extern DLLENTRY int FBOOND;

extern DLLENTRY int FDATNA;
extern DLLENTRY int FDATNC;
extern DLLENTRY int FDATND;

extern DLLENTRY long FAME_INDEX_NA;
extern DLLENTRY long FAME_INDEX_NC;
extern DLLENTRY long FAME_INDEX_ND;

extern DLLENTRY char FSTRNA[3];
extern DLLENTRY char FSTRNC[3];
extern DLLENTRY char FSTRND[3];

void cfmabrt(int *status, int connkey);
void cfmalob(int *status, int dbkey, char *objnam, int class_, int freq, int type, int basis, int observ, int numobs, int numchr, float growth);
void cfmasrt(int *status, int connkey, int assert_type, char *assertion, int perspective, int grouping, int *dblist);
void cfmbwdy(int *status, int freq, int date, int *biwkdy);
void cfmchfr(int *status, int sfreq, int sdate, int select, int tfreq, int *tdate, int relate);
void cfmclcn(int *status, int connkey);
void cfmcldb(int *status, int dbkey);
void cfmcmmt(int *status, int connkey);
void cfmcpob(int *status, int srckey, int tarkey, char *srcnam, char *tarnam);
void cfmdatd(int *status, int freq, int date, int *year, int *month, int *day);
void cfmdatf(int *status, int freq, int date, int *year, int *period, int fmonth, int flabel);
void cfmdati(int *status, int freq, int date, char *datstr, char *image, int fmonth, int flabel);
void cfmdatl(int *status, int freq, int date, char *datstr, int fmonth, int flabel);
void cfmdatp(int *status, int freq, int date, int *year, int *period);
void cfmdatt(int *status, int freq, int date, int *hour, int *minute, int *second, int *ddate);
void cfmddat(int *status, int freq, int *date, int year, int month, int day);
void cfmddes(int *status, int dbkey, char *des);
void cfmddoc(int *status, int dbkey, char *doc);
void cfmdlen(int *status, int dbkey, char *objnam, int *deslen, int *doclen);
void cfmdlob(int *status, int dbkey, char *objnam);
void cfmexpiration(int *status, int *date);
void cfmfame(int *status, char *cmd);
void cfmfdat(int *status, int freq, int *date, int year, int period, int fmonth, int flabel);
void cfmfdiv(int *status, int freq1, int freq2, int *flag);
void cfmferr(int *status, char *errtxt);
void cfmfin(int *status);
void cfmgcid(int *status, int dbkey, int *connkey);
void cfmgdat(int *status, int dbkey, char *objnam, int freq, int *cdate, int *mdate);
void cfmgdba(int *status, int dbkey, int *cyear, int *cmonth, int *cday, int *myear, int *mmonth, int *mday, char *desc, char *doc);
void cfmgdbd(int *status, int dbkey, int freq, int *cdate, int *mdate);
void cfmget_dimension(int *status, int dbkey, int *dimen);
void cfmget_extradots(int *status, int dbkey, int *xdots);
void cfmglen(int *status, int dbkey, int *deslen, int *doclen);
void cfmgnam(int *status, int dbkey, char *objnam, char *basnam);
void cfmgsln(int *status, int dbkey, char *objnam, int *length);
void cfmgtali(int *status, int dbkey, char *objnam, char *aliass, int inlen, int *outlen);
void cfmgtaso(int *status, int dbkey, char *objnam, char *assoc, int inlen, int *outlen);
void cfmgtatt_f(int *status, int dbkey, char *objnam, int *atttyp, char *attnam, void *value, int inlen, int *outlen);
void cfmgtatt_f(int *status, int dbkey, char *objnam, int *atttyp, char *attnam, void *value, int inlen, int *outlen);
void cfmgtatt_f(int *status, int dbkey, char *objnam, int *atttyp, char *attnam, void *value, int inlen, int *outlen);
void cfmgtatt_f(int *status, int dbkey, char *objnam, int *atttyp, char *attnam, void *value, int inlen, int *outlen);
void cfmgtnl(int *status, int dbkey, char *objnam, int index, char *strval, int inlen, int *outlen);
void cfmgtstr(int *status, int dbkey, char *objnam, int *range_, char *strval, int *ismiss, int inlen, int *outlen);
void cfmgtsts(int *status, int dbkey, char *objnam, int *range_, char **strary, int *misary, int *inlenary, int *outlenary);
void cfmidat(int *status, int freq, int *date, char *datstr, char *image, int fmonth, int flabel, int centry);
void cfminwc(int *status, int dbkey, char *wilnam);
void cfmisbm(int *status, int value, int *ismiss);
void cfmisdm(int *status, int value, int *ismiss);
void cfmislp(int *status, int year, int *leap);
void cfmisnm(int *status, float value, int *ismiss);
void cfmispm(int *status, double value, int *ismiss);
void cfmissm(int *status, char *value, int *ismiss);
void cfmlali(int *status, int dbkey, char *objnam, int *alilen);
void cfmlaso(int *status, int dbkey, char *objnam, int *asolen);
void cfmlatt(int *status, int dbkey, char *objnam, int atttyp, char *attnam, int *attlen);
void cfmldat(int *status, int freq, int *date, char *datstr, int fmonth, int flabel, int centry);
void cfmlerr(int *status, int *len);
void cfmlsts(int *status, int dbkey, char *objnam, int *range_, int *lenary);
void cfmncnt(int *status, int dbkey, char *objnam, int *length);
void cfmnlen(int *status, int dbkey, char *objnam, int index, int *length);
void cfmnwob(int *status, int dbkey, char *objnam, int class_, int freq, int type, int basis, int observ);
void cfmnxwc(int *status, int dbkey, char *objnam, int *class_, int *type, int *freq);
void cfmopcn(int *status, int *connkey, char *service, char *hostname, char *username, char *password);
void cfmopdb(int *status, int *dbkey, char *dbname, int mode);
void cfmopdc(int *status, int *dbkey, char *dbname, int mode, int connkey);
void cfmoprc(int *status, int *dbkey, int connkey);
void cfmopre(int *status, int *dbkey, char *svname);
void cfmopwk(int *status, int *dbkey);
void cfmosiz(int *status, int dbkey, char *objnam, int *class_, int *type, int *freq, int *fyear, int *fprd, int *lyear, int *lprd);
void cfmpack(int *status, int dbkey);
void cfmpdat(int *status, int freq, int *date, int year, int period);
void cfmpfrq(int *status, int *freq, int base, int nunits, int year, int month);
void cfmpind(int *status, int freq, int *count);
void cfmpinm(int *status, int freq, int year, int month, int *count);
void cfmpiny(int *status, int freq, int year, int *count);
void cfmpodb(int *status, int dbkey);
void cfmrdfa_f(int *status, int dbkey, char *objnam, int wntobs, int *syear, int *sprd, int *gotobs, void *valary, int tmiss, void *mistt);
void cfmrdfa_f(int *status, int dbkey, char *objnam, int wntobs, int *syear, int *sprd, int *gotobs, void *valary, int tmiss, void *mistt);
void cfmrdfa_f(int *status, int dbkey, char *objnam, int wntobs, int *syear, int *sprd, int *gotobs, void *valary, int tmiss, void *mistt);
void cfmrdfm(int *status, int dbkey, char *objnam, char *source, int ilen, int *olen);
void cfmrmev(int *status, int dbkey, char *expr, char *optns, int wdbkey, char *objnam);
void cfmrnob(int *status, int dbkey, char *srcnam, char *tarnam);
void cfmrrng_f(int *status, int dbkey, char *objnam, int *range_, void *valary, int tmiss, void *mistt);
void cfmrrng_f(int *status, int dbkey, char *objnam, int *range_, void *valary, int tmiss, void *mistt);
void cfmrrng_f(int *status, int dbkey, char *objnam, int *range_, void *valary, int tmiss, void *mistt);
void cfmrsdb(int *status, int dbkey);
void cfmsali(int *status, int dbkey, char *objnam, char *aliass);
void cfmsaso(int *status, int dbkey, char *objnam, char *assoc);
void cfmsatt_f(int *status, int dbkey, char *objnam, int atttyp, char *attnam, void *value);
void cfmsatt_f(int *status, int dbkey, char *objnam, int atttyp, char *attnam, void *value);
void cfmsatt_f(int *status, int dbkey, char *objnam, int atttyp, char *attnam, void *value);
void cfmsatt_f(int *status, int dbkey, char *objnam, int atttyp, char *attnam, void *value);
void cfmsbas(int *status, int dbkey, char *objnam, int basis);
void cfmsbm(int *status, int nctran, int ndtran, int natran, int *bmistt);
void cfmsdes(int *status, int dbkey, char *objnam, char *desc);
void cfmsdm(int *status, int nctran, int ndtran, int natran, int *dmistt);
void cfmsdoc(int *status, int dbkey, char *objnam, char *doc);
void cfmset_dimension(int *status, int dbkey, int dimen);
void cfmset_extradots(int *status, int dbkey, int xdots);
void cfmsfis(int *status, int freq, int *syear, int *sprd, int *eyear, int *eprd, int *range_, int *numobs, int fmonth, int flabel);
void cfmsinp(int *status, char *cmd);
void cfmsnm(int *status, float nctran, float ndtran, float natran, float *nmistt);
void cfmsobs(int *status, int dbkey, char *objnam, int observ);
void cfmsopt(int *status, char *optnam, char *optval);
void cfmspm(int *status, double nctran, double ndtran, double natran, double *pmistt);
void cfmspos(int *status, int flag);
void cfmsrng(int *status, int freq, int *syear, int *sprd, int *eyear, int *eprd, int *range_, int *numobs);
void cfmssln(int *status, int dbkey, char *objnam, int length);
void cfmtdat(int *status, int freq, int *date, int hour, int minute, int second, int ddate);
void cfmtody(int *status, int freq, int *date);
void cfmufrq(int *status, int freq, int *base, int *nunits, int *year, int *month);
void cfmver(int *status, float *ver);
void cfmwhat(int *status, int dbkey, char *objnam, int *class_, int *type, int *freq, int *basis, int *observ, int *fyear, int *fprd, int *lyear, int *lprd, int *cyear, int *cmonth, int *cday, int *myear, int *mmonth, int *mday, char *desc, char *doc);
void cfmwkdy(int *status, int freq, int date, int *wkdy);
void cfmwrmt_f(int *status, int dbkey, char *objnam, int objtyp, int *range_, void *valary, int tmiss, void *mistt);
void cfmwrmt_f(int *status, int dbkey, char *objnam, int objtyp, int *range_, void *valary, int tmiss, void *mistt);
void cfmwrmt_f(int *status, int dbkey, char *objnam, int objtyp, int *range_, void *valary, int tmiss, void *mistt);
void cfmwrng_f(int *status, int dbkey, char *objnam, int *range_, void *valary, int tmiss, void *mistt);
void cfmwrng_f(int *status, int dbkey, char *objnam, int *range_, void *valary, int tmiss, void *mistt);
void cfmwrng_f(int *status, int dbkey, char *objnam, int *range_, void *valary, int tmiss, void *mistt);
void cfmwstr(int *status, int dbkey, char *objnam, int *range_, char *strval, int ismiss, int length);
void cfmwsts(int *status, int dbkey, char *objnam, int *range_, char **strary, int *misary, int *lenary);
void cfmwtnl(int *status, int dbkey, char *objnam, int index, char *strval);
int fame_biweekday(int freq, long date, int *biweekday);
int fame_create_formula(int dbkey, char *oname, char *value);
int fame_create_global_formula(int dbkey, char *oname, char *value);
int fame_current_time(int freq, long *date);
int fame_date_missing_type(long date, int *missing_type);
int fame_date_to_literal(int freq, long date, char *literal, int end_month, int label_year, int inlen, int *outlen);
int fame_dateof(int from_freq, long from_date, int select, int to_freq, long *to_date, int relate);
int fame_day_to_index(int freq, long *date, int year, int month, int day, int relate);
int fame_dimchar(char *dimchar, int dimnum);
int fame_dimnum(int *dimnum, char dimchar);
int fame_expiration_date(long *date);
int fame_format_date(int freq, long date, char *string, char *image, int end_month, int label_year, int inlen, int *outlen);
int fame_free_wildcard(int wildkey);
int fame_get_base_frequency(int *base_freq, int freq);
int fame_get_boolean_attribute(int dbkey, char *objnam, char *attnam, int *value);
int fame_get_booleans(int dbkey, char *objnam, long *range_, int *valary);
int fame_get_date_attribute(int dbkey, char *objnam, char *attnam, long *value, int *freq);
int fame_get_dates(int dbkey, char *objnam, long *range_, long *valary);
int fame_get_db_dates(int dbkey, long *cdate, long *mdate);
int fame_get_dbversion(int dbkey, int *dbversion);
int fame_get_namelist_attribute(int dbkey, char *objnam, char *attnam, char *value, int inlen, int *outlen);
int fame_get_next_wildcard(int wildkey, char *objname, int *obj_class, int *type, int *freq, long *start, long *end, int inlen, int *outlen);
int fame_get_numeric_attribute(int dbkey, char *objnam, char *attnam, float *value);
int fame_get_numerics(int dbkey, char *objnam, long *range_, float *valary);
int fame_get_precision_attribute(int dbkey, char *objnam, char *attnam, double *value);
int fame_get_precisions(int dbkey, char *objnam, long *range_, double *valary);
int fame_get_range_numobs(long *range_, int *numobs);
int fame_get_real_name(int dbkey, char *objname, char *basename, int inlen, int *outlen);
int fame_get_server_input(char *buffer, int buffer_size, int *input_size);
int fame_get_string_attribute(int dbkey, char *objnam, char *attnam, char *value, int inlen, int *outlen);
int fame_get_strings(int dbkey, char *objnam, long *range_, char **strary, int *inlenary, int *outlenary);
int fame_index_to_day(int freq, long date, int *year, int *month, int *day);
int fame_index_to_int(long *indexes64ary, int *indexes32ary, int numobs);
int fame_index_to_time(int freq, long date, int *year, int *month, int *day, int *hour, int *minute, int *second, int *millisecond);
int fame_index_to_year_period(int freq, long date, int *year, int *period);
int fame_info(int dbkey, char *oname, int *oclass, int *type, int *freq, long *findex, long *lindex, int *basis, int *observ, long *cdate, long *mdate, char *desc, int indesclen, int *outdesclen, char *doc, int indoclen, int *outdoclen);
int fame_init_range_from_end_numobs(long *range_, int freq, long end, int numobs);
int fame_init_range_from_indexes(long *range_, int freq, long start, long end);
int fame_init_range_from_start_numobs(long *range_, int freq, long start, int numobs);
int fame_init_wildcard(int dbkey, int *wildkey, char *wildname, int wildonly, char *wildstart);
int fame_int_to_index(int *indexes32, long *indexes64, int numobs);
int fame_len_strings(int dbkey, char *objnam, long *range_, int *lenary);
int fame_literal_to_date(int freq, long *date, char *literal, int end_month, int label_year, int century);
int fame_modify_formula(int dbkey, char *oname, char *value);
int fame_parse_frequency(int *freq, char *frequency_spec);
int fame_quick_info(int dbkey, char *oname, int *oclass, int *type, int *freq, long *findex, long *lindex);
int fame_remexec(int dbkey, char *command, int wdbkey, char *objnam);
int fame_scan_date(int freq, long *date, char *string, char *image, int end_month, int label_year, int century);
int fame_set_boolean_attribute(int dbkey, char *objnam, char *attnam, int value);
int fame_set_date_attribute(int dbkey, char *objnam, char *attnam, long value, int freq);
int fame_set_namelist_attribute(int dbkey, char *objnam, char *attnam, char *value);
int fame_set_numeric_attribute(int dbkey, char *objnam, char *attnam, float value);
int fame_set_precision_attribute(int dbkey, char *objnam, char *attnam, double value);
int fame_set_string_attribute(int dbkey, char *objnam, char *attnam, char *value);
int fame_time_to_index(int freq, long *date, int year, int month, int day, int hour, int minute, int second, int millisecond, int relate);
int fame_type_to_string(int type, char *type_spec, int inlen, int *outlen);
int fame_weekday(int freq, long date, int *weekday);
int fame_write_booleans(int dbkey, char *objnam, long *range_, int *valary);
int fame_write_dates(int dbkey, char *objnam, long *range_, int value_type, long *valary);
int fame_write_numerics(int dbkey, char *objnam, long *range_, float *valary);
int fame_write_precisions(int dbkey, char *objnam, long *range_, double *valary);
int fame_write_strings(int dbkey, char *objnam, long *range_, char **strary);
int fame_year_period_to_index(int freq, long *date, int year, int period);
#endif
