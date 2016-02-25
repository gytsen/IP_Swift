SWIFTC=swiftc
SOURCES=Scanner.swift
FLAGS=-emit-library -emit-object
OBJECTS=Scanner.o
JUNK=Scanner.swiftdoc Scanner.swiftmodule
MODULENAME=Scanner
LIBNAME=LibScanner.a
LD=ar
LDFLAGS=rcs

all: link def

objects: $(SOURCES)
	$(SWIFTC) $(FLAGS) $(SOURCES) -module-name $(MODULENAME)

def: $(SOURCES)
	$(SWIFTC) -emit-module $(SOURCES) -module-name $(MODULENAME)

link: objects $(OBJECTS)
	ar rcs $(LIBNAME) $(OBJECTS)



clean:
	rm -f $(JUNK)
	rm -f $(LIBNAME)
	rm -f $(OBJECTS)

