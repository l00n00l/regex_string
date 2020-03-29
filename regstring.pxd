# cython: language_level=3

cdef extern from "<string>" namespace "std":
    cdef cppclass string:
        pass

cdef extern from "<list>" namespace "std":
    cdef cppclass list[string]:
        pass

cdef extern from "regex_string.cpp":
    pass

cdef extern from "regex_string.h":
    cdef cppclass regstring:
        regstring() except +
        bint parse_regex(string regex_str)
        bint set(string name, string data)
        string str()
        unsigned long long size()
        list[string] names()