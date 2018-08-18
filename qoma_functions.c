#include "qoma_functions.h"
static char *qoma_support_URL;
void format_support_URL(int *status);


// qoma initialization hook
void qomaini(int *status) {
	*status = -1;
	cfmini(status);
	format_support_URL(status);
}

// qoma finalization hook
void qomafin(int *status) {
	*status = -1;
	cfmfin(status);
}

int check_pin(int expiry, char *nameid, int pin) {
	unsigned long long hash_val = hash(expiry, nameid);
	int wanted = (int) (hash_val % PRIME);

	return (wanted == pin) ?
			HSUCC : // hli success
			HBPROD; // hli unauthorized product
}

char *get_expiry_string() {
	char datstr[80];
	int status, expiry;

	expiry = get_expiry_date();
	fm(cfmdati(&status,HDAILY,expiry, datstr, "<year><mz><dz>", HDEC, HFYAUT));

	return strdup(datstr);
}

int get_expiry_date() {
	int status, expiry;

	fm(cfmexpiration(&status, &expiry));

	return expiry;
}

unsigned long long hash(int date, char *str) {
	unsigned long long hash = date;
	int c;

	while ('\0' != (c = *str++)){
		hash = ((hash << 5) + hash) + c;
		}

	return hash;
}

int get_days_to_expiry() {
	int status, expiry, now;
	fm(cfmtody(&status, HDAILY, &now));
	fm(cfmexpiration(&status, &expiry));
	return expiry - now;
}

void format_support_URL(int *status) {
	char buffer[1024];
	char* qoma_pin;

	if (*status == 0) {
		char *expiry_str = get_expiry_string();
		int days = get_days_to_expiry();
		int expiry_date = get_expiry_date();
		char *nameid = get_nameid();
		unsigned long long client_id = hash(expiry_date, nameid);
		qprintf(buffer,1024,
				"https://qoma-hli-pin.appspot.com/?@clientid=%llx&@expiry=%s&@days=%d\n",
				client_id, expiry_str, days);

		qoma_support_URL = strdup(buffer);

		qoma_pin = getenv("QOMA_PIN");
		if (qoma_pin == NULL) {
			*status = HBPROD;
		} else {
			*status = check_pin(expiry_date, nameid, atoi(qoma_pin));
		}
		if ( *status == HBPROD ) {
			// FAME HLI "unauthorized product" code
			// user needs to get PIN and retry in a new session
			int rc;
			cfmfin(&rc);
		}
	} else {
		qoma_support_URL = strdup("");
	}
}

char *get_contents(char *filename) {
	char * buffer = NULL;
	long length;
	FILE * f = fopen(filename, "rb");

	if (f) {
		fseek(f, 0, SEEK_END);
		length = ftell(f);
		fseek(f, 0, SEEK_SET);
		buffer = malloc(length+1);
		if (buffer) {
			fread(buffer, 1, length, f);
		}
		fclose(f);
		buffer[length]='\0';
	} else {
		printf("Could not open %s\n", filename);
	}
	return buffer;
}

char *get_nameid() {
	char *FAME = getenv("FAME");
	char filename[1024];
	qprintf(filename, 1024, "%s/nameid.txt", FAME);
	return get_contents(filename);
}

int get_pin(int expiry, char *nameid) {
	unsigned long long hash_val = hash(expiry, nameid);
	int pin = (int) (hash_val % PRIME);
	return pin;
}

char *get_support_URL(){
	return qoma_support_URL;
}
