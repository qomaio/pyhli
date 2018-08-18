/*
 * qoma-hli.h
 */

#ifndef SRC_QOMA_HLI_H_
#define SRC_QOMA_HLI_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <chli_functions.h>

#ifdef WIN32
  #define qprintf sprintf_s
  #define strdup _strdup
#else
  #define qprintf snprintf
#endif

#define HSUCC	0
#define HFYAUT	3
#define HDAILY	8
#define HDEC	12
#define HBPROD	55

void cfmini(int *status);
void qomaini(int *status);
void qomafin(int *status);

int check_pin(int expiry, char *nameid, int pin);
char *get_nameid(void);
int get_days_to_expiry(void);
char *get_expiry_string(void);
int get_expiry_date(void);
int get_pin(int expiry, char *nameid);
char *get_support_URL(void);
unsigned long long hash(int expiry, char *nameid);

#define fm(a) {a; if(status!=HSUCC) printf("%s %d\n",#a,status);}
#define PRIME ((unsigned long long) 9973)

#endif /* SRC_QOMA_HLI_H_ */
