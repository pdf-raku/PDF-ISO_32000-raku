BASE=PDF-ISO_32000-$(shell raku -I . -M PDF::ISO_32000 -e'say PDF::ISO_32000.^ver.Str')

all :
	(cd gen && make all)

clean :
	(cd gen && make clean)

realclean :
	(cd gen && make realclean)

test : all
	prove -e'raku -I .' -v t

dist: all
	echo $(BASE)
	tar --transform 's,^,$(BASE)/,' --exclude=.\* --exclude=\*\~ --exclude=\*.tar.gz -cvzf $(BASE).tar.gz LICENSE Makefile META6.json README.md Changes etc gen/lib lib/ resources/ src/*.in
