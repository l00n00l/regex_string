# distutils: language=c++
from regstring cimport regstring

cdef class pyregstring:
    cdef regstring* c_reg_string

    def __cinit__(self):
        self.c_reg_string = new regstring()

    def __dealloc__(self):
        del self.c_reg_string

    def parse_regex(self, s):
        return self.c_reg_string.parse_regex(s)

    def set(self, name, data):
        return self.c_reg_string.set(name, data)

    def size(self):
        return self.c_reg_string.size()
    
    def to_bytes(self):
        return self.c_reg_string.str()
    
    def names(self):
        return self.c_reg_string.names()