cdef extern from "qoma_functions.h":

    void qomaini(int *status)
    void qomafin(int *status)
    char *get_support_URL()
