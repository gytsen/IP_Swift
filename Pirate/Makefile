SWIFTC=swiftc
SFLAGS=
SOURCES=main.swift Coordinate.swift CoordinateRow.swift
INCLUDES=.
NAME=pirate

all: $(SOURCES)
	$(SWIFTC) $(SOURCES) -I$(INCLUDES) -o $(NAME)

clean:
	rm -f pirate
	rm -f LibScanner.a
	rm -f Scanner.swiftdoc
	rm -f Scanner.swiftmodule
